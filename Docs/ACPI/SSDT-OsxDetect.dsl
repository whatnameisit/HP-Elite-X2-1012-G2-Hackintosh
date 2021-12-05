/*
 * This SSDT contains methods that can be used in other code to make it specific to macOS.
 */
DefinitionBlock ("", "SSDT", 2, "what", "OsxDet", 0x00001000)
{
    Method (DTGP, 5, NotSerialized)
    {
        If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
        {
            If ((Arg1 == One))
            {
                If ((Arg2 == Zero))
                {
                    Arg4 = Buffer (One)
                        {
                             0x03                                             // .
                        }
                    Return (One)
                }

                If ((Arg2 == One))
                {
                    Return (One)
                }
            }
        }

        Arg4 = Buffer (One)
            {
                 0x00                                             // .
            }
        Return (Zero)
    }

    Scope (\)
    {
        Method (OSDW, 0, NotSerialized)
        {
            If (CondRefOf (\_OSI))
            {
                If (_OSI ("Darwin"))
                {
                    Return (One)
                }
            }

            Return (Zero)
        }
    }
}

