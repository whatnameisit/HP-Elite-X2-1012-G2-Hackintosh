/*
 * This SSDT allows Wacom touchscreen to function correctly after sleep.
 * Correct power management would have to be implemented in VoodooI2C or its satellite kexts so the Methods _PSx would not be modified.
 */
DefinitionBlock ("", "SSDT", 2, "what", "WScreen", 0x00000000)
{
    External (_SB_.PCI0.I2C0.TPL0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPL0.XPS0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.I2C0.TPL0.XPS3, MethodObj)    // 0 Arguments
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.I2C0.TPL0)
    {
        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
            If (OSDW ()){}
            Else
            {
                XPS0 ()
            }
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
            If (OSDW ()){}
            Else
            {
                XPS3 ()
            }
        }
    }
}

