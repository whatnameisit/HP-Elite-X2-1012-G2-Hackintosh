/*
 * This SSDT tunes the CPU fan to be EXTREMELY quiet at mid to low temperature and allows smooth transition in macOS.
 * The original SSDT can be found in https://github.com/RehabMan/HP-ProBook-4x30s-DSDT-Patch/blob/master/hotpatch/SSDT-FANQ.dsl.
 *
 * Credits: RehabMan for providing the SSDT
 *          Don_Grappler for temperature and fan speed tables
 *          whatnameisit for cleanup and correcting object paths
 *
 * Other requirements: 1. ACPIPoller.kext by RehabMan is needed as the kext is the one that executes FCPU Method below.
 *                        https://github.com/RehabMan/OS-X-ACPI-Poller
 *                     2. HPFanReset.efi is needed as the driver resets EC for normal behavior on other OS. It is interesting some other vendors may not require resetting EC by an efi driver, such as ASUS.
 *                        https://github.com/RehabMan/HP-ProBook-4x30s-Fan-Reset
 * Note 1: It seems fan control by third-party software, such as iStat Menus or Macs Fan Control is not allowed, neither does it work in Windows.
 * Note 2: The fan may seem to be louder with this patch than without, and I assume it is because the speeds are higher in value with corresponding temperature levels in the tables. Try different values if you don't like it.
 */
DefinitionBlock ("", "SSDT", 2, "what", "FAN", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.CRZN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.DTMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.FRDC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.FTGC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.TEMP, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Device (CUFA) // CUstom FAn. Don't want any other sensor kexts to attach to the name SMCD.
    {
        Name (_HID, "FAN00000")  // ACPIPoller.kext scans for this _HID name.
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (OSDW ())
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        // Smooth fan table by Don_Grappler
        Name(FTA1, Package() // Temperature table.
        {
            35,  42,  44,  45,  46,  47,  48,  49,  50,  51,
            52,  53,  54,  55,  56,  57,  58,  59,  60,  61,
            62,  63,  64,  65,  66,  67,  68,  69,  70,  71,
            72,  73,  0xFF,
        })
        Name(FTA2, Package() // Fan speed table. Inverse.
        {
            255, 128, 127, 126, 125, 124, 123, 122, 121, 120,
            119, 118, 117, 116, 115, 113, 111, 109, 107, 102,
            99,  96,  93,  90,  86,  82,  78,  74,  70,  65,
            60,  55,   0,
        })
        Name (FCTU, 2) // timeout for changes (fan rpm going up)   --   modified by Don_Grappler
        Name (FCTD, 5) // timeout for changes (fan rpm going down)   --   modified by Don_Grappler
        // Table to keep track of past temperatures (to track average)
        Name (FHST, Buffer(16) { 0x0, 0, 0, 0, 0x0, 0, 0, 0, 0x0, 0, 0, 0, 0x0, 0, 0, 0 })
        Name (FIDX, 0) 	// current index in buffer above
        Name (FNUM, 0) 	// number of entries in above buffer to count in avg
        Name (FSUM, 0) 	// current sum of entries in buffer
        // Keeps track of last fan speed set, and counter to set new one
        Name (FLST, 0xFF)	// last index for fan control
        Name (FCNT, 0)		// count of times it has been "wrong", 0 means no counter

        // Fan control for CPU -- expects to be evaluated 1-per second
        Method(FCPU, 0) // ACPIPoller.kext scans for this method name.
        {
            If (!\_SB.PCI0.LPCB.EC0.ECRG) { Return(0) }
            Acquire(\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
            // setup fake temperature (this is the key to controlling the fan!)
            \_SB.PCI0.LPCB.EC0.CRZN = 1  // select CPU temp
            \_SB.PCI0.LPCB.EC0.TEMP = 31 // write fake value there (31C)
            // get current temp into Local0 for eventual return
            // Note: reading from DTMP here instead of TEMP because we wrote
            //  a fake temp to TEMP to trick the system into running the fan
            //	at a lower speed than it otherwise would.
            \_SB.PCI0.LPCB.EC0.CRZN = 1  // select CPU temp
            Local0 = \_SB.PCI0.LPCB.EC0.DTMP // Local0 is current temp
            Release(\_SB.PCI0.LPCB.EC0.ECMX)

            // calculate average temperature
            Local1 = Local0 + FSUM
            Local2 = FIDX
            Local1 -= DerefOf(FHST[Local2])
            FHST[Local2] = Local0
            FSUM = Local1  // Local1 is new sum
            // adjust current index into temperature history table
            Local2++
            if (Local2 >= SizeOf(FHST)) { Local2 = 0 }
            FIDX = Local2
            // adjust total items collected in temp table
            Local2 = FNUM
            if (Local2 != SizeOf(FHST))
            {
                Local2++
                FNUM = Local2
            }
            // Local1 is new sum, Local2 is number of entries in sum
            Local0 = Local1 / Local2 // Local0 is now average temp

            // table based search (use avg temperature to search)
            if (Local0 > 255) { Local0 = 255 }
            Local2 = Match(FTA1, MGE, Local0, MTR, 0, 0)

            // calculate difference between current and found index
            if (Local2 > FLST)
            {
                Local1 = Local2 - FLST
                Local4 = FCTU
            }
            else
            {
                Local1 = FLST - Local2
                Local4 = FCTD
            }

            // set new fan speed, if necessary
            if (!Local1)
            {
                // no difference, so leave current fan speed and reset count
                FCNT = 0
            }
            else
            {
                // there is a difference, start/continue process of changing fan
                Local3 = FCNT
                FCNT++
                // how long to wait depends on how big the difference
                // 20 secs if diff is 2, 5 secs if diff is 4, etc.
                Local1 = Local4 / Local1
                if (Local3 >= Local1)
                {
                    // timeout expired, so set new fan speed
                    FLST = Local2
                    \_SB.PCI0.LPCB.EC0.FTGC = DerefOf(FTA2[Local2])
                    FCNT = 0
                }
            }
            Return (Local0)  // returns average temp
        }
    }
}
