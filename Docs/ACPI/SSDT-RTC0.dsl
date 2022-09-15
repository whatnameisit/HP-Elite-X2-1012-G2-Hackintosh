/*
 * This SSDT primarily enables legacy RTC device and fixes RTC clock error on the ACPI level.
 * RTCMemoryFixup.kext and OpenCore's rtc-blacklist are prefered only if all conflicting memory regions are found which is nearly impossible for me.
 * As of now, I have found by myself and from others rtcfx_exclude=58,59,7F-83,B0-B3,B7,DE,DF which still gives error when macOS is installed or OS upgrade is applied.
 * I do not really need hibernation, so I will use this SSDT instead.
 */
DefinitionBlock ("", "SSDT", 2, "what", "RTC0", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (\_SB.PCI0.LPCB)
    {
        Device (RTC0)
        {
            Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }
}
