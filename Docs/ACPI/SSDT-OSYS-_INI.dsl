/*
 * Some ACPI code checks for operating system identification to enable or disable certain features such as touchscreen functionality.
 * Wacom touchscreen is enabled on Windows 2015 (Windows 10), and so forcing Windows 2015 ID on macOS here will enable touchscreen used with the right kexts.
 * More exploration is needed as there are other unknown code that checks for OS version such as Method GTOS.
 */
DefinitionBlock ("", "SSDT", 2, "what", "WScreen", 0x00000000)
{
    External (_SB_.PCI0.XINI, MethodObj)    // 0 Arguments
    External (OSYS, FieldUnitObj)

    Method (\_SB.PCI0._INI, 0, Serialized)  // _INI: Initialize
    {
        If (_OSI ("Darwin"))
        {
            OSYS = 0x07DF
        }
        Else
        {
            \_SB.PCI0.XINI ()
        }
    }
}

