/*
 * This SSDT supports dual sleeping modes.
 * https://github.com/benbender/x1c6-hackintosh/blob/experimental/EFI/OC/dsl/SSDT-SLEEP.dsl
 * Look into DSDT and SSDT-16 to understand.
 */
DefinitionBlock ("", "SSDT", 2, "what", "MdSbDsbl", 0x00000000)
{
    External (_SB_.PEPD, DeviceObj)
    External (_SB_.PEPD.XSTA, MethodObj)
    External (ECND, FieldUnitObj)
    External (OSDW, MethodObj)
    External (S0ID, FieldUnitObj)

    If (CondRefOf (\_SB.PEPD))
    {
        If (OSDW ())
        {
            Debug = "S0ID: disable Modern Standby when 0, ECND: disable Modern Standby when !0"
            Concatenate ("S0ID was: ", S0ID, Debug)
            S0ID = Zero
            Concatenate ("S0ID is now: ", S0ID, Debug)
            If (CondRefOf (ECND))
            {
                Concatenate ("ECND was: ", ECND, Debug)
                ECND = One
                Concatenate ("ECND is now: ", ECND, Debug)
            }
        }

        Method (\_SB.PEPD._STA, 0, NotSerialized)  // _STA: Status
        {
            If (OSDW ())
            {
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PEPD.XSTA ())
            }
        }
    }

    // Variable and method to store sleep-state on macOS
    Name (SLTP, Zero)
    Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
    {
        Debug = Concatenate ("SLEEP:_TTS() called with Arg0 = ", Arg0)
        SLTP = Arg0
    }
}

