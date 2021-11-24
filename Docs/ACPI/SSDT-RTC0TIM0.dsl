/*
 * This SSDT primarily enables legacy RTC device on BIOS Version 01.39Rev.A, allowing to boot into macOS.
 * It also tries to fix RTC clock error on the ACPI level in both 01.25 and 01.39Rev.A, if IRQs do anything at all on this laptop.
 * More exploration is needed with RTC to on regular shutdown, sleep, and reboot and to support hibernation.
 * https://github.com/acidanthera/bugtracker/issues/765
 * Currently shutdown, restart, or resuming from hibernation throws RTC clock error.
 * The error is reduced if parts of RTC map is emulated with RTCMemoryFixup, but not completely.
 * 
 * If the Length is reduced from 8 to 2, the RTC clock error is not displayed on normal shutdown or restart. Hibernation wtill still show the very error.
 *
 * config.plist ACPI/Patch
 * Comment: Enable legacy RTC device on macOS by disabling RTC and creating RTC0: M(_STA) to XSTA in _SB.PCI0.LPCB.RTC
 * Count:   1
 * Find:    5F 53 54 41 00 A0 0A 93 53 54 41 53 01
 * Replace: 58 53 54 41 00 A0 0A 93 53 54 41 53 01
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
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }
}

