/*
 * This SSDT fixes immediate wake from entering sleep.
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

