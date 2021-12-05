/*
 * This SSDT fixes immediate wake from entering sleep.
 *
 * config.plist ACPI/Patch
 * Comment: Fix sleep: M(GPRW) to XPRW
 * Count:   1
 * Find:    47 50 52 57 02
 * Replace: 58 50 52 57 02
 */
DefinitionBlock ("", "SSDT", 2, "what", "GPRW", 0x00000000)
{
    External (OSDW, MethodObj)    // 0 Arguments
    External (XPRW, MethodObj)    // 2 Arguments

    Method (GPRW, 2, NotSerialized)
    {
        If (OSDW ())
        {
            If ((0x6D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }
        }

        Return (XPRW (Arg0, Arg1))
    }
}

