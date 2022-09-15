/*
 * This SSDT sets multiple variables during initialization.
 *
 * config.plist ACPI/Patch
 * Comment: INIT: M(_INI) to XINI in PCI0
 * Count:   1
 * Find:    5F 49 4E 49 08
 * Replace: 58 49 4E 49 08
 */
DefinitionBlock ("", "SSDT", 2, "what", "INIT", 0x00001000)
{
    External (_SB_.PCI0.LPCB.PS2K.IPS2, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.XINI, MethodObj)    // 0 Arguments
    External (_SB_.SLBV, IntObj)
    External (HPTE, FieldUnitObj)
    External (MDSB, MethodObj)    // 0 Arguments
    External (OSDW, MethodObj)    // 0 Arguments

    Method (\_SB.PCI0._INI, 0, Serialized)  // _INI: Initialize
    {
        XINI ()
        If (OSDW ())
        {
            // HPTE is used in HPET._STA for it to return false when set to zero to match MacBookPro14,1.
            HPTE = Zero
            // IPS2's first argument is used to remap F3 and F4 to brightness down and up, respectively.
            // IPS2's second argument is used to remap right cmd to F19.
            // See SSDT-PS2.dsl.
            If (CondRefOf (\_SB.PCI0.LPCB.PS2K.IPS2))
            {
                \_SB.PCI0.LPCB.PS2K.IPS2 (Zero, One)
            }

            // MDSB is used to force normal sleep on macOS when Modern Standby is selected from UEFI
            // as it is said to be incompatible on macOS.
            // See SSDT-Sleep.dsl.
            If (CondRefOf (MDSB))
            {
                MDSB ()
            }
        }
        
        // SLBV is used to enable sleep on low battery.
        // See SSDT-Battery.dsl.
        If (CondRefOf (\_SB.SLBV))
        {
            \_SB.SLBV = Zero
        }
    }
}

