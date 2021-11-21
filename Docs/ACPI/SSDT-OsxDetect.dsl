/*
 * This SSDT contains methods that can be used in other code to make it specific to macOS.
 */
DefinitionBlock ("", "SSDT", 2, "OSY86 ", "OsxDet", 0x00001000)
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
/*
 * Some ACPI code checks for operating system identification to enable or disable certain features such as touchscreen functionality.
 * Wacom touchscreen is enabled on Windows 2015 (Windows 10), and so forcing Windows 2015 ID on macOS here will enable touchscreen used with the right kexts.
 * More exploration is needed as there are other unknown code that checks for OS version such as Method GTOS.
 *
 * config.plist ACPI/Patch
 * Comment: Enable OS specific code in Darwin: M(_INI) to XINI in PCI0
 * Count:   1
 * Find:    5F 49 4E 49 08
 * Replace: 58 49 4E 49 08
 */
    External (_SB_.PCI0.XINI, MethodObj)    // 0 Arguments
    External (OSDW, MethodObj)    // 0 Arguments
    External (OSYS, FieldUnitObj)

    Method (\_SB.PCI0._INI, 0, Serialized)  // _INI: Initialize
    {
        XINI ()
        If (OSDW ())
        {
            OSYS = 0x07DF
        }
    }
}

