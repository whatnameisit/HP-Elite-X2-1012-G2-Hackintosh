/*
 * System may restart on shutdown without this SSDT on macOS.
 *
 * config.plist ACPI/Patch
 * Comment: Fix restart from shutdown: M(_PTS) to ZPTS
 * Count:   1
 * Find:    5F 50 54 53 01
 * Replace: 5A 50 54 53 01
 */
DefinitionBlock ("", "SSDT", 2, "what", "PTS", 0x00000000)
{
    External (_SB_.PCI0.XHC_.PMEE, IntObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (ZPTS, MethodObj)    // 1 Arguments

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (OSDW ())
        {
            If ((0x05 == Arg0))
            {
                \_SB.PCI0.XHC.PMEE = Zero
            }
        }

        ZPTS (Arg0)
    }
}

