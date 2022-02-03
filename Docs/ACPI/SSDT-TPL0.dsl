/*
 * This SSDT allows Wacom touchscreen to function correctly after sleep.
 * Correct power management would have to be implemented in VoodooI2C or its satellite kexts so the Methods _PSx would not be modified.
 * Or, if it is, there needs to be documentation on how to modify ACPI for power management.
 *
 * config.plist ACPI/Patch
 * Comment: TPL0: M(_PS0) to XPS0 in TPL0
 * Count:   1
 * Find:    5F 50 53 30 08 53 47
 * Replace: 58 50 53 30 08 53 47
 *
 * Comment: TPL0: M(_PS3) to XPS3 in TPL0
 * Count:   1
 * Find:    5F 50 53 33 08 53 47
 * Replace: 58 50 53 33 08 53 47
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

