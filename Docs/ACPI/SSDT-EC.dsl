/*
 * This SSDT creates a fake EC device which macOS checks for booting macOS Catalina or higher.
 */
DefinitionBlock ("", "SSDT", 2, "what", "SsdtEC", 0x00001000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
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
        }
    }
}

