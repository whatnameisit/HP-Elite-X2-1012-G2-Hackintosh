/*
 * This SSDT primarily enables legacy RTC device, allowing to boot into macOS.
 * More exploration is needed with RTC to on regular shutdown, sleep, and reboot and to support hibernation.
 * https://github.com/acidanthera/bugtracker/issues/765
 *
 * Currently shutdown, restart, or resuming from hibernation may throw RTC clock error.
 * The error is reduced if DF of RTC map is emulated with RTCMemoryFixup, but not completely;
 * if sleep fails, RTC clock error is displayed. Such a case can be forced with Thunderbolt 3 device.
 * Hibernation causes the same error.
 * 
 * If the Length is reduced from 8 to 2, the RTC clock error is not displayed on normal shutdown or restart, making RTCMemoryFixup seemingly unnecessary.
 * See SSDT-RTC0-2.dsl.
 * Using the whole RTC map with bad regions emulated is preferred, but hibernation will still show the very error.
 *
 * config.plist NVRAM/7C436110-AB2A-4BBB-A880-FE41995C9F82:boot-args
 * rtcfx_exclude=DF
 */
DefinitionBlock ("", "SSDT", 2, "what", "RTC0", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Device (\_SB.PCI0.LPCB.RTC0)
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
}

