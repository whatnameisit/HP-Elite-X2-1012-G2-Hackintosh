/*
 * This SSDT allows charging from USB by injecting current supply properties in macOS.
 */
DefinitionBlock ("", "SSDT", 2, "what", "_USBX", 0x00001000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (DTGP, MethodObj)

    Scope (\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x04)
                    {
                        "kUSBSleepPortCurrentLimit", 
                        0x0BB8, 
                        "kUSBWakePortCurrentLimit", 
                        0x0BB8
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

