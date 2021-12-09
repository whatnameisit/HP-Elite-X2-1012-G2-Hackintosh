/*
 * This SSDT supports dual sleeping modes.
 * Turn on Modern Standby on BIOS, so that Windows uses Modern Standby while this SSDT disables it on macOS.
 * https://github.com/benbender/x1c6-hackintosh/blob/experimental/EFI/OC/dsl/SSDT-SLEEP.dsl
 * Look into DSDT and SSDT-16 to understand.
 *
 * config.plist ACPI/Patch
 * Base:    \_SB.PEPD
 * Comment: Fix sleep: M(_STA) to XSTA in \_SB.PEPD
 * Count:   1
 * Find:    5F 53 54 41
 * Replace: 5F 53 54 41
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
        Debug = "BIOS Modern Standby is ON"
        If (OSDW ())
        {
            Debug = "Disabling Modern Standby on OS:Darwin"
            Debug = "Disabling Modern Standby by setting S0ID = 0"
            S0ID = Zero
            Concatenate ("S0ID is: ", S0ID, Debug)
            Debug = "Disabling Modern Standby by setting ECND = 1"
            ECND = One
            Concatenate ("ECND is: ", ECND, Debug)
        }

        Method (\_SB.PEPD._STA, 0, NotSerialized)  // _STA: Status
        {
            If (OSDW ())
            {
                Debug = "Turning OFF Modern Standby device _SB.PEPD on OS:Darwin"
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PEPD.XSTA ())
            }
        }
    }
    Else
    {
        Debug = "BIOS Modern Standby is OFF"
    }

    // Variable and method to store sleep-state on macOS
    Name (SLTP, Zero)
    Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
    {
        Debug = Concatenate ("SLEEP:_TTS() called with Arg0 = ", Arg0)
        SLTP = Arg0
    }
}

