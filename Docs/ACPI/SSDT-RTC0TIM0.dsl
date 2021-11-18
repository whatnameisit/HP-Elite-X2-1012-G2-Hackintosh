/*
 * This SSDT primarily enables legacy RTC device on BIOS Version 01.39Rev.A and tries to fix RTC clock error on the ACPI level in both 01.25 and 01.39Rev.A.
 * More exploration is needed with RTC to on regular shutdown, sleep, and reboot and to support hibernation.
 * https://github.com/acidanthera/bugtracker/issues/765
 * Currently shutdown, restart, or resuming from hibernation throws RTC clock error by chance.
 * Without this SSDT, 0xDF region can be emulated with RTCMemoryFixup on kernel and blacklisted with OpenCore on firmware which reduces the chance of receiving RTC clock error.
 *
 * IRQs are removed to match MacBookPro14,1.
 */
DefinitionBlock ("", "SSDT", 2, "what", "RTC0TIM0", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.RTC_, DeviceObj)
    External (_SB_.PCI0.LPCB.RTC_.XSTA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.TIMR, DeviceObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0.LPCB)
    {
        Method (RTC._STA, 0, NotSerialized)  // _STA: Status
        {
            If (OSDW ())
            {
                Return (Zero)
            }

            If (CondRefOf (\_SB.PCI0.LPCB.RTC.XSTA))
            {
                Return (\_SB.PCI0.LPCB.RTC.XSTA ())
            }
            Else
            {
                Return (0x0F)
            }
        }

        Method (TIMR._STA, 0, NotSerialized)  // _STA: Status
        {
            If (OSDW ())
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }

        Device (RTC0)
        {
            Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (TIM0)
        {
            Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0040,             // Range Minimum
                    0x0040,             // Range Maximum
                    0x01,               // Alignment
                    0x04,               // Length
                    )
                IO (Decode16,
                    0x0050,             // Range Minimum
                    0x0050,             // Range Maximum
                    0x10,               // Alignment
                    0x04,               // Length
                    )
            })
        }
    }
}

