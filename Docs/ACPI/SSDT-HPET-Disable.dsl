/*
 * MacBookPro14,1 has Device HPET disabled by default on macOS.
 * https://applelife.ru/threads/dampy-originalnyx-makov.2943712/
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_HPET", 0x00000000)
{
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)
    External (HPTE, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.LPCB.HPET)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (OSDW ())
            {
                HPTE = Zero
            }
        }
    }
}

