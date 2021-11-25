/*
 * This SSDT tries to debug and support dual sleeping modes found in https://github.com/benbender/x1c6-hackintosh/blob/experimental/EFI/OC/dsl/SSDT-SLEEP.dsl.
 * Purely guessing by using same the offset as benbender and looking at how _S3 initializes.
 */
DefinitionBlock ("", "SSDT", 2, "what", "MdrnSlp", 0x00000000)
{
    External (OSDW, MethodObj)    // 0 Arguments
    External (SOID, FieldUnitObj)
    External (SS3, FieldUnitObj)

    If (OSDW ())
    {
        Debug = "SS3: enable S3 when 0, SOID: disable Modern Standby when 0"
        Concatenate ("SS3 was: ", SS3, Debug)
        SS3 = Zero
        Concatenate ("SS3 is now: ", SS3, Debug)
        Concatenate ("SOID was: ", SOID, Debug)
        SOID = Zero
        Concatenate ("SOID is now: ", SOID, Debug)
    }

    Name (SLTP, Zero)
    Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
    {
        Debug = Concatenate ("SLEEP:_TTS() called with Arg0 = ", Arg0)
        SLTP = Arg0
    }

    // Scope (_GPE)
    // {
    //     Method (LXEN, 0, NotSerialized)
    //     {
    //         Return (One)
    //     }
    // }

    // Scope (_SB)
    // {
    //     Method (LPS0, 0, NotSerialized)
    //     {
    //         Return (One)
    //     }
    // }
}

