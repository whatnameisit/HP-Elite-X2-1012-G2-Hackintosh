/*
 * The length is reduced from 8 to 2. For more information, see README at the root and SSDT-RTC0.dsl.
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
                0x02,               // Length
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

