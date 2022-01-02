/*
 * This SSDT fixes wake problems.
 *
 * config.plist ACPI/Patch
 * Comment: Fix sleep: M(GPRW) to XPRW
 * Count:   1
 * Find:    47 50 52 57 02
 * Replace: 58 50 52 57 02
 *
 * Base:    \_SB.PEPD
 * Comment: Fix sleep: M(_STA) to XSTA in \_SB.PEPD
 * Count:   1
 * Find:    5F 53 54 41
 * Replace: 5F 53 54 41
 */
DefinitionBlock ("", "SSDT", 2, "what", "SLEEP", 0x00000000)
{
    External (_SB_.PEPD, DeviceObj)
    External (_SB_.PEPD.XSTA, MethodObj)    // 0 Arguments
    External (ECND, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (S0ID, FieldUnitObj)
    External (XPRW, MethodObj)    // 2 Arguments

    // the usual immediate wake from sleep fix
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

    // The code below supports dual sleeping modes.
    // Turn on Modern Standby on BIOS, so that Windows uses Modern Standby while this SSDT disables it on macOS.
    // https://github.com/benbender/x1c6-hackintosh/blob/experimental/EFI/OC/dsl/SSDT-SLEEP.dsl
    // Look into DSDT and SSDT-16 to understand.
    If (CondRefOf (\_SB.PEPD))
    {
        Debug = "MDSB:BIOS Modern Standby is ON"
        If (OSDW ())
        {
            Debug = "MDSB:Disabling Modern Standby on OS:Darwin"
            Debug = "MDSB:Disabling Modern Standby by setting S0ID = 0"
            If (S0ID = Zero)
            {
                Debug = "MDSB:S0ID is already 0"
            }
            Else
            {
                S0ID = Zero
                Concatenate ("MDSB:S0ID is: ", S0ID, Debug)
            }

            Debug = "MDSB:Disabling Modern Standby by setting ECND = 1"
            If (ECND = One)
            {
                Debug = "MDSB:ECND is already 1"
            }
            Else
            {
                ECND = One
                Concatenate ("MDSB:ECND is: ", ECND, Debug)
            }

            Method (\_SB.PEPD._STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Debug = "MDSB:Turning OFF Modern Standby device _SB.PEPD on OS:Darwin"
                    Return (Zero)
                }
                Else
                {
                    Debug = "MDSB:Turning OFF Modern Standby device _SB.PEPD on OS:Darwin"
                    Return (\_SB.PEPD.XSTA ())
                }
            }
        }
    }
    Else
    {
        Debug = "MDSB:BIOS Modern Standby is OFF"
    }

    Name (SLTP, Zero)
    Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
    {
        Debug = Concatenate ("SLEEP:_TTS() called with Arg0 = ", Arg0)
        SLTP = Arg0
    }
}

