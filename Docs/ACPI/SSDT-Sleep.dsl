/*
 * This SSDT fixes sleep problems.
 *
 * config.plist ACPI/Patch
 * Comment: Sleep: M(GPRW) to XPRW
 * Count:   1
 * Find:    47 50 52 57 02
 * Replace: 58 50 52 57 02
 *
 * Comment: Sleep: M(_PTS) to ZPTS
 * Count:   1
 * Find:    5F 50 54 53 01
 * Replace: 5A 50 54 53 01
 *
 * Comment: Sleep: M(_WAK) to ZWAK
 * Count:   1
 * Find:    5F 57 41 4B 09
 * Replace: 5A 57 41 4B 09
 */
DefinitionBlock ("", "SSDT", 2, "what", "SLEEP", 0x00000000)
{
    External (_SB_.LID_, DeviceObj)
    External (_SB_.PCI0.RP01.UPSB.LSTX, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.XHC_.PMEE, IntObj)
    External (_SB_.PEPD, DeviceObj)
    External (ECND, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (S0ID, FieldUnitObj)
    External (XPRW, MethodObj)    // 2 Arguments
    External (ZPTS, MethodObj)    // 1 Arguments
    External (ZWAK, MethodObj)    // 1 Arguments

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

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        ZPTS (Arg0)
        If (OSDW ())
        {
            // Fix restart from shutdown
            If ((0x05 == Arg0))
            {
                \_SB.PCI0.XHC.PMEE = Zero
            }

            // Probably helps with sleep / wake on Thunderbolt
            If ((Arg0 >= 0x05))
            {
                Debug = "_PTS: LSTX"
                \_SB.PCI0.RP01.UPSB.LSTX (Zero, One)
                \_SB.PCI0.RP01.UPSB.LSTX (One, One)
            }
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        If (OSDW ())
        {
            // Force wake screen on wake
            If ((Arg0 < 0x05))
            {
                Notify (\_SB.LID, 0x80) // Status Change
            }
        }

        Local0 = ZWAK (Arg0)
        Return (Local0)
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
        }
    }
    Else
    {
        Debug = "MDSB:BIOS Modern Standby is OFF"
    }

    Name (XLTP, Zero)
    Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
    {
        Debug = Concatenate ("SLEEP:_TTS() called with Arg0 = ", Arg0)
        XLTP = Arg0
    }
}

