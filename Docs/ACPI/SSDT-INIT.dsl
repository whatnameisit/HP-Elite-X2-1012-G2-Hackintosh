/*
 * This SSDT sets multiple variables during initialization.
 *
 * config.plist ACPI/Patch
 * Comment: Enable OS specific code in Darwin: M(_INI) to XINI in PCI0
 * Count:   1
 * Find:    5F 49 4E 49 08
 * Replace: 58 49 4E 49 08
 */
DefinitionBlock ("", "SSDT", 2, "what", "INIT", 0x00001000)
{
    External (_SB_.PCI0.LPCB.PS2K.RMTB, IntObj)
    External (_SB_.PCI0.LPCB.PS2K.RMTC, IntObj)
    External (_SB_.PCI0.XINI, MethodObj)    // 0 Arguments
    External (_SB_.SLBV, IntObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (OSYS, FieldUnitObj)
    External (SLBV, IntObj)

    Method (\_SB.PCI0._INI, 0, Serialized)  // _INI: Initialize
    {
        XINI ()
        If (OSDW ())
        {
            // Some ACPI code checks for operating system identification to enable or disable certain features such as touchscreen functionality.
            // Wacom touchscreen is enabled on Windows 2015 (Windows 10), and so forcing Windows 2015 ID on macOS here will enable touchscreen used with the right kexts.
            // More exploration is needed as there are other unknown code that checks for OS version such as Method GTOS.
            // https://www.tonymacx86.com/threads/hp-zbook-video-mux-control.316221/
            OSYS = 0x07DF
        }
        // This variable is used to set sleep at low battery method.
        // https://github.com/whatnameisit/HP-Elite-X2-1012-G2-Hackintosh/blob/29ba0cdb720024cf2baaf8fd137104c19c4a235d/Docs/ACPI/SSDT-BAT.dsl#L1129-L1177
        // See SSDT-Battery.dsl.
        SLBV = One
        // This variable is used to remap F3 and F4 to brightness down and up, respectively.
        // See SSDT-PS2.dsl.
        If (CondRefOf (\_SB.PCI0.LPCB.PS2K.RMTB))
        {
            \_SB.PCI0.LPCB.PS2K.RMTB = Zero
        }

        // This variable is used to remap right cmd to F19.
        // See SSDT-PS2.dsl.
        If (CondRefOf (\_SB.PCI0.LPCB.PS2K.RMTC))
        {
            \_SB.PCI0.LPCB.PS2K.RMTC = One
        }
    }
}

