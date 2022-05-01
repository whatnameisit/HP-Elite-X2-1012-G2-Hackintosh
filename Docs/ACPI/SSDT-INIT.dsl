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
    External (_SB_.MSGB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.PS2K.MSGP, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.PS2K.RMTB, IntObj)
    External (_SB_.PCI0.LPCB.PS2K.RMTC, IntObj)
    External (_SB_.PCI0.XINI, MethodObj)    // 0 Arguments
    External (_SB_.SLBV, IntObj)
    External (HPTE, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (STAS, FieldUnitObj)

    Method (\_SB.PCI0._INI, 0, Serialized)  // _INI: Initialize
    {
        XINI ()
        If (OSDW ())
        {
            // HPTE is used in HPET._STA for it to return false when set to zero to match MacBookPro14,1.
            HPTE = Zero
            // STAS is used in RTC._STA for it to return true when set to one to force enable legacy RTC.
            // In addition, RTC region must be limited or emulated to bypass RTC error on boot and reboot.
            // In config.plist
            // NVRAM/7C436110-AB2A-4BBB-A880-FE41995C9F82:boot-args - (string) - rtcfx_exclude=58,59,B0-B3,B7,DF
            // NVRAM/4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102:rtc-blacklist - (data) - 58 59 B0 B1 B2 B3 B7 DF
            // Currently the region for successful exit from hibernation without error is unknown.
            STAS = One
            // RMTB is used to remap F3 and F4 to brightness down and up, respectively.
            // RMTC is used to remap right cmd to F19.
            // See SSDT-PS2.dsl.
            If (((CondRefOf (\_SB.PCI0.LPCB.PS2K.RMTB) && CondRefOf (\_SB.PCI0.LPCB.PS2K.RMTC)) && CondRefOf (\_SB.PCI0.LPCB.PS2K.MSGP)))
            {
                \_SB.PCI0.LPCB.PS2K.RMTB = Zero
                \_SB.PCI0.LPCB.PS2K.RMTC = One
                \_SB.PCI0.LPCB.PS2K.MSGP ()
            }
        }
        
        // SLBV is used to enable sleep on low battery.
        // See SSDT-Battery.dsl.
        If ((CondRefOf (\_SB.SLBV) && CondRefOf (\_SB.MSGB)))
        {
            \_SB.SLBV = One
            \_SB.MSGB ()
        }
    }
}

