/*
 * Test TB3. I do not have any device to test though.
 *
 * Ported codes from various places: osy, benbender, and tonyshit
 * Drivers loaded and shown in System Profiler
 * It does wake from sleep, but XHC2 seems to die.
 *
 * Current structure is that of Two-Thunderbolt-3-port MacBookPro14,1 and leftover Windows/Linux compatible parts whereas HP Elite X2 1012 G2 has one Thunderbolt 3 port.
 * MacBookAir7.x is a One-Thunderbolt-2-port model, so adapting to this model's structure may be necessary.
 */
DefinitionBlock ("", "SSDT", 2, "what", "TbtOnPCH", 0x00001000)
{
    External (_GPE.TBFF, MethodObj)    // 1 Arguments
    External (_GPE.TFPS, MethodObj)    // 0 Arguments
    External (_GPE.XTBT, MethodObj)    // 2 Arguments
    External (_GPE.XTFY, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP01.XINI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.TBFP, MethodObj)    // 1 Arguments
    External (CPGN, FieldUnitObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (FFTB, MethodObj)    // 1 Arguments
    External (MMTB, MethodObj)    // 1 Arguments
    External (NOHP, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (OSUM, MutexObj)
    External (RTBT, FieldUnitObj)
    External (SOHP, FieldUnitObj)
    External (TBSE, FieldUnitObj)
    External (TNAT, FieldUnitObj)
    External (TWIN, FieldUnitObj)
    External (XLTP, IntObj)    // 0 Arguments

    Scope (\_GPE)
    {
        Method (NTFY, 1, Serialized)
        {
            Debug = "TB:_GPE:NTFY"
            If (((OSDW () && (NOHP == One)) && (Arg0 == One)))
            {
                Debug = "TB:_GPE:NTFY() - call AMPE ()"
                \_SB.PCI0.RP01.UPSB.AMPE ()
            }
            Else
            {
                XTFY (Arg0)
            }
        }
    }

    Scope (\_SB.PCI0.RP01)
    {
        Name (R020, Zero)
        Name (R024, Zero)
        Name (R028, Zero)
        Name (R02C, Zero)
        Name (R118, Zero)
        Name (R119, Zero)
        Name (R11A, Zero)
        Name (R11C, Zero)
        Name (R120, Zero)
        Name (R124, Zero)
        Name (R128, Zero)
        Name (R12C, Zero)
        Name (R218, Zero)
        Name (R219, Zero)
        Name (R21A, Zero)
        Name (R21C, Zero)
        Name (R220, Zero)
        Name (R224, Zero)
        Name (R228, Zero)
        Name (R22C, Zero)
        Name (R318, Zero)
        Name (R319, Zero)
        Name (R31A, Zero)
        Name (R31C, Zero)
        Name (R320, Zero)
        Name (R324, Zero)
        Name (R328, Zero)
        Name (R32C, Zero)
        Name (R418, Zero)
        Name (R419, Zero)
        Name (R41A, Zero)
        Name (R41C, Zero)
        Name (R420, Zero)
        Name (R424, Zero)
        Name (R428, Zero)
        Name (R42C, Zero)
        Name (RVES, Zero)
        Name (R518, Zero)
        Name (R519, Zero)
        Name (R51A, Zero)
        Name (R51C, Zero)
        Name (R520, Zero)
        Name (R524, Zero)
        Name (R528, Zero)
        Name (R52C, Zero)
        Name (R618, Zero)
        Name (R619, Zero)
        Name (R61A, Zero)
        Name (R61C, Zero)
        Name (R620, Zero)
        Name (R624, Zero)
        Name (R628, Zero)
        Name (R62C, Zero)
        Name (RH10, Zero)
        Name (RH14, Zero)
        Name (POC0, Zero)
        Method (MMBA, 1, Serialized)
        {
            Local0 = (\_SB.PCI0.GPCB () + 0x000E0000)
            OperationRegion (MMMM, SystemMemory, Local0, 0x24)
            Field (MMMM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x19), 
                SB19,   8, 
                Offset (0x20), 
                SB20,   32
            }

            Switch (ToInteger (Arg0))
            {
                Case (One)
                {
                    Local1 = Local0
                    Concatenate ("TB:RPSM offset - MMBA (One) = ", Local1, Debug)
                }
                Case (0x02)
                {
                    Local1 = (\_SB.PCI0.GPCB () + (SB19 * 0x00100000))
                    Concatenate ("TB:UPSM offset - MMBA (0x02) = ", Local1, Debug)
                }
                Case (0x03)
                {
                    Local1 = (\_SB.PCI0.GPCB () + ((SB19 + One) * 0x00100000))
                    Concatenate ("TB:DNSM offset - MMBA (0x03) = ", Local1, Debug)
                }
                Case (0x04)
                {
                    Local1 = ((\_SB.PCI0.GPCB () + ((SB19 + One) * 0x00100000)) + 
                        0x8000)
                    Concatenate ("TB:DS3N offset - MMBA (0x04) = ", Local1, Debug)
                }
                Case (0x05)
                {
                    Local1 = ((\_SB.PCI0.GPCB () + ((SB19 + One) * 0x00100000)) + 
                        0x00010000)
                    Concatenate ("TB:DS4M offset - MMBA (0x05) = ", Local1, Debug)
                }
                Case (0x06)
                {
                    Local1 = ((\_SB.PCI0.GPCB () + ((SB19 + One) * 0x00100000)) + 
                        0x00020000)
                    Concatenate ("TB:DS5M offset - MMBA (0x06) = ", Local1, Debug)
                }
                Case (0x07)
                {
                    Local1 = (\_SB.PCI0.GPCB () + ((SB19 + 0x02) * 0x00100000))
                    Concatenate ("TB:NHIM offset - MMBA (0x07) = ", Local1, Debug)
                }
                Case (0x08)
                {
                    Local1 = ((((SB20 & 0xFFFC) << 0x10) & 0xFFF00000) + 
                        0x00039854)
                    Concatenate ("TB:RSTR offset - MMBA (0x08) = ", Local1, Debug)
                }

            }

            Return (Local1)
        }

        OperationRegion (RSTR, SystemMemory, MMBA (0x08), 0x0100)
        Field (RSTR, DWordAcc, NoLock, Preserve)
        {
            CIOR,   32, 
            Offset (0xB8), 
            ISTA,   32, 
            Offset (0xF0), 
            ICME,   32
        }

        OperationRegion (RPSM, SystemMemory, MMBA (One), 0x54)
        Field (RPSM, DWordAcc, NoLock, Preserve)
        {
            RPVD,   32, 
            RPR4,   8, 
            Offset (0x18), 
            RP18,   8, 
            RP19,   8, 
            RP1A,   8, 
            Offset (0x1C), 
            RP1C,   16, 
            Offset (0x20), 
            R_20,   32, 
            R_24,   32, 
            R_28,   32, 
            R_2C,   32, 
            Offset (0x52), 
                ,   11, 
            RPLT,   1, 
            Offset (0x54)
        }

        OperationRegion (UPSM, SystemMemory, MMBA (0x02), 0x0550)
        Field (UPSM, DWordAcc, NoLock, Preserve)
        {
            UPVD,   32, 
            UP04,   8, 
            Offset (0x08), 
            CLRD,   32, 
            Offset (0x18), 
            UP18,   8, 
            UP19,   8, 
            UP1A,   8, 
            Offset (0x1C), 
            UP1C,   16, 
            Offset (0x20), 
            UP20,   32, 
            UP24,   32, 
            UP28,   32, 
            UP2C,   32, 
            Offset (0xD2), 
                ,   11, 
            UPLT,   1, 
            Offset (0xD4), 
            Offset (0x544), 
            UPMB,   1, 
            Offset (0x548), 
            T2PR,   32, 
            P2TR,   32
        }

        OperationRegion (DNSM, SystemMemory, MMBA (0x03), 0xD4)
        Field (DNSM, DWordAcc, NoLock, Preserve)
        {
            DPVD,   32, 
            DP04,   8, 
            Offset (0x18), 
            DP18,   8, 
            DP19,   8, 
            DP1A,   8, 
            Offset (0x1C), 
            DP1C,   16, 
            Offset (0x20), 
            DP20,   32, 
            DP24,   32, 
            DP28,   32, 
            DP2C,   32, 
            Offset (0xD2), 
                ,   11, 
            DPLT,   1, 
            Offset (0xD4)
        }

        OperationRegion (DS3M, SystemMemory, MMBA (0x04), 0x40)
        Field (DS3M, DWordAcc, NoLock, Preserve)
        {
            D3VD,   32, 
            D304,   8, 
            Offset (0x18), 
            D318,   8, 
            D319,   8, 
            D31A,   8, 
            Offset (0x1C), 
            D31C,   16, 
            Offset (0x20), 
            D320,   32, 
            D324,   32, 
            D328,   32, 
            D32C,   32
        }

        OperationRegion (DS4M, SystemMemory, MMBA (0x05), 0x0568)
        Field (DS4M, DWordAcc, NoLock, Preserve)
        {
            D4VD,   32, 
            D404,   8, 
            Offset (0x18), 
            D418,   8, 
            D419,   8, 
            D41A,   8, 
            Offset (0x1C), 
            D41C,   16, 
            Offset (0x20), 
            D420,   32, 
            D424,   32, 
            D428,   32, 
            D42C,   32, 
            Offset (0x564), 
            DVES,   32
        }

        OperationRegion (DS5M, SystemMemory, MMBA (0x06), 0x40)
        Field (DS5M, DWordAcc, NoLock, Preserve)
        {
            D5VD,   32, 
            D504,   8, 
            Offset (0x18), 
            D518,   8, 
            D519,   8, 
            D51A,   8, 
            Offset (0x1C), 
            D51C,   16, 
            Offset (0x20), 
            D520,   32, 
            D524,   32, 
            D528,   32, 
            D52C,   32
        }

        OperationRegion (NHIM, SystemMemory, MMBA (0x07), 0x40)
        Field (NHIM, DWordAcc, NoLock, Preserve)
        {
            NH00,   32, 
            NH04,   8, 
            Offset (0x10), 
            NH10,   32, 
            NH14,   32
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Debug = "TB:_INI - RP01._INI started"
            If (OSDW ())
            {
                Debug = "TB:_INI - Force native mode?"
                TWIN = One
                Debug = "TB:_INI - Save Ridge Config on Boot ICM"
                R020 = R_20 /* \_SB_.PCI0.RP01.R_20 */
                R024 = R_24 /* \_SB_.PCI0.RP01.R_24 */
                R118 = RP19 /* \_SB_.PCI0.RP01.RP19 */
                R119 = (RP19 + One)
                R11A = RP1A /* \_SB_.PCI0.RP01.RP1A */
                R11C = RP1C /* \_SB_.PCI0.RP01.RP1C */
                R120 = R_20 /* \_SB_.PCI0.RP01.R_20 */
                R124 = R_24 /* \_SB_.PCI0.RP01.R_24 */
                R218 = R119 /* \_SB_.PCI0.RP01.R119 */
                R219 = (R119 + One)
                R21A = R11A /* \_SB_.PCI0.RP01.R11A */
                R21C = R11C /* \_SB_.PCI0.RP01.R11C */
                R220 = R120 /* \_SB_.PCI0.RP01.R120 */
                R224 = R124 /* \_SB_.PCI0.RP01.R124 */
                R318 = R119 /* \_SB_.PCI0.RP01.R119 */
                R319 = (R119 + 0x02)
                R31A = (R119 + 0x02)
                R31C = Zero
                R320 = Zero
                R324 = Zero
                R418 = R119 /* \_SB_.PCI0.RP01.R119 */
                R419 = (R119 + 0x03)
                R41A = (R119 + 0x03)
                R41C = Zero
                R420 = Zero
                R424 = Zero
                RVES = Zero
                R518 = R119 /* \_SB_.PCI0.RP01.R119 */
                R519 = (R119 + 0x04)
                R51A = (R119 + 0x04)
                R51C = Zero
                R520 = Zero
                R524 = Zero
                R618 = Zero
                R619 = Zero
                R61A = Zero
                R61C = Zero
                R620 = Zero
                R624 = Zero
                RH10 = ((R220 & 0xFFFC) << 0x10)
                RH14 = Zero
                Debug = "TB:_INI - Store Complete"
                Sleep (One)
                TBON ()
                ICMD ()
            }
            Else
            {
                XINI ()
            }
        }

        Method (TBST, 0, Serialized)
        {
            Debug = Concatenate ("TB:_PS0 - MDUV: ", \_SB.PCI0.RP01.UPSB.MDUV)
            Debug = Concatenate ("TB:_PS0 - NHI: ", \_SB.PCI0.RP01.NH00)
            Debug = Concatenate ("TB:_PS0 - Root port: ", \_SB.PCI0.RP01.RPVD)
            Debug = Concatenate ("TB:_PS0 - Upstream port: ", \_SB.PCI0.RP01.UPVD)
            Debug = Concatenate ("TB:_PS0 - DSB0: ", \_SB.PCI0.RP01.DPVD)
            Debug = Concatenate ("TB:_PS0 - DSB1: ", \_SB.PCI0.RP01.D3VD)
            Debug = Concatenate ("TB:_PS0 - DSB2: ", \_SB.PCI0.RP01.D4VD)
            Debug = Concatenate ("TB:_PS0 - DSB4: ", \_SB.PCI0.RP01.D5VD)
        }

        Method (SCMD, 2, Serialized)
        {
            Debug = "TB:SCMD"
            P2TR = (((Arg1 << 0x08) | (Arg0 << One)) | 
                One)
            Local0 = 0x32
            While ((Local0 > Zero))
            {
                If (((T2PR == 0x0C) || (T2PR & One)))
                {
                    Break
                }

                Local0--
                Sleep (0x64)
            }

            Debug = Concatenate ("TB:SCMD - P2TR: ", P2TR)
            Debug = Concatenate ("TB:SCMD - T2PR: ", T2PR)
            P2TR = Zero
        }

        Method (ICMD, 0, NotSerialized)
        {
            Debug = "TB:ICMD - Disable ICM on Darwin"
            \_SB.PCI0.RP01.POC0 = One
            Debug = Concatenate ("TB:ICMD - ICME 1: ", \_SB.PCI0.RP01.ICME)
            If ((\_SB.PCI0.RP01.ICME != 0x800001A3))
            {
                If (\_SB.PCI0.RP01.CNHI ())
                {
                    Debug = Concatenate ("TB:ICMD - ICME 2: ", \_SB.PCI0.RP01.ICME)
                    If ((\_SB.PCI0.RP01.ICME != 0xFFFFFFFF))
                    {
                        \_SB.PCI0.RP01.WTLT ()
                        Debug = Concatenate ("TB:ICMD - ICME 3: ", \_SB.PCI0.RP01.ICME)
                        If (Local0 = (\_SB.PCI0.RP01.ICME & 0x80000000))
                        {
                            Debug = "TB:ICMD - NVM already started, resetting"
                            \_SB.PCI0.RP01.ICME = 0x0102
                            Local0 = 0x03E8
                            While (((\_SB.PCI0.RP01.ICME & One) == Zero))
                            {
                                Local0--
                                If ((Local0 == Zero))
                                {
                                    Break
                                }

                                Sleep (One)
                            }

                            Debug = Concatenate ("TB:ICMD - ICME 4: ", \_SB.PCI0.RP01.ICME)
                            Sleep (0x03E8)
                        }
                    }
                }
            }

            \_SB.PCI0.RP01.POC0 = Zero
        }

        /* No need for this without TbtForcePower.efi
        Method (ICMS, 0, NotSerialized)
        {
            Debug = "TB:ICMS - Enable ICM on non-Darwin"
            \_SB.PCI0.RP01.POC0 = One
            Debug = Concatenate ("TB:ICMS - ICME 1: ", \_SB.PCI0.RP01.ICME)
            If ((\_SB.PCI0.RP01.ICME != 0x800001A6))
            {
                If (\_SB.PCI0.RP01.CNHI ())
                {
                    If ((\_SB.PCI0.RP01.ICME != 0xFFFFFFFF))
                    {
                        \_SB.PCI0.RP01.WTLT ()
                        If (!Local0 = (\_SB.PCI0.RP01.ICME & 0x80000000))
                        {
                            \_SB.PCI0.RP01.ICME |= 0x06
                            Debug = Concatenate ("TB:ICMS - ICME 2: ", \_SB.PCI0.RP01.ICME)
                            Local0 = 0x03E8
                            While (((\_SB.PCI0.RP01.ICME & 0x80000000) == Zero))
                            {
                                Local0--
                                If ((Local0 == Zero))
                                {
                                    Break
                                }

                                Sleep (One)
                            }

                            Sleep (0x03E8)
                        }

                        Debug = Concatenate ("TB:ICMS - ICME 3: ", \_SB.PCI0.RP01.ICME)
                    }
                }
            }

            \_SB.PCI0.RP01.POC0 = Zero
        }
        */

        Method (TBTC, 1, Serialized)
        {
            Debug = "TB:TBTC"
            P2TR = Arg0
            Local0 = 0x64
            Local1 = T2PR /* \_SB_.PCI0.RP01.T2PR */
            While (((Local1 & One) == Zero))
            {
                If ((Local1 == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                Local0--
                If ((Local0 == Zero))
                {
                    Break
                }

                Local1 = T2PR /* \_SB_.PCI0.RP01.T2PR */
                Sleep (0x32)
            }

            P2TR = Zero
            Return (Zero)
        }

        Method (CMPE, 0, Serialized)
        {
            Debug = "TB:CMPE"
            Notify (\_SB.PCI0.RP01, Zero) // Bus Check
        }

        Method (CNHI, 0, Serialized)
        {
            Debug = "TB:CNHI"
            Local0 = 0x0A
            Debug = "TB:CNHI - Configure root port"
            While (Local0)
            {
                R_20 = R020 /* \_SB_.PCI0.RP01.R020 */
                R_24 = R024 /* \_SB_.PCI0.RP01.R024 */
                R_28 = R028 /* \_SB_.PCI0.RP01.R028 */
                R_2C = R02C /* \_SB_.PCI0.RP01.R02C */
                RPR4 = 0x07
                If ((R020 == R_20))
                {
                    Break
                }

                Sleep (One)
                Local0--
            }

            If ((R020 != R_20))
            {
                Debug = "TB:CNHI - Error: configure root port failed"
                Return (Zero)
            }

            Local0 = 0x0A
            Debug = "TB:CNHI - Configure UPSB"
            While (Local0)
            {
                UP18 = R118 /* \_SB_.PCI0.RP01.R118 */
                UP19 = R119 /* \_SB_.PCI0.RP01.R119 */
                UP1A = R11A /* \_SB_.PCI0.RP01.R11A */
                UP1C = R11C /* \_SB_.PCI0.RP01.R11C */
                UP20 = R120 /* \_SB_.PCI0.RP01.R120 */
                UP24 = R124 /* \_SB_.PCI0.RP01.R124 */
                UP28 = R128 /* \_SB_.PCI0.RP01.R128 */
                UP2C = R12C /* \_SB_.PCI0.RP01.R12C */
                UP04 = 0x07
                If ((R119 == UP19))
                {
                    Break
                }

                Sleep (One)
                Local0--
            }

            If ((R119 != UP19))
            {
                Debug = "TB:CNHI - Error: configure UPSB failed"
                Return (Zero)
            }

            Debug = "TB:CNHI - Wait for link training"
            If ((WTLT () != One))
            {
                Debug = "TB:CNHI - Error: Wait for link training failed"
                Return (Zero)
            }

            Local0 = 0x0A
            Debug = "TB:CNHI - Configure DSB"
            While (Local0)
            {
                DP18 = R218 /* \_SB_.PCI0.RP01.R218 */
                DP19 = R219 /* \_SB_.PCI0.RP01.R219 */
                DP1A = R21A /* \_SB_.PCI0.RP01.R21A */
                DP1C = R21C /* \_SB_.PCI0.RP01.R21C */
                DP20 = R220 /* \_SB_.PCI0.RP01.R220 */
                DP24 = R224 /* \_SB_.PCI0.RP01.R224 */
                DP28 = R228 /* \_SB_.PCI0.RP01.R228 */
                DP2C = R22C /* \_SB_.PCI0.RP01.R22C */
                DP04 = 0x07
                Debug = "TB:CNHI - Configure NHI Dp 0 done"
                D318 = R318 /* \_SB_.PCI0.RP01.R318 */
                D319 = R319 /* \_SB_.PCI0.RP01.R319 */
                D31A = R31A /* \_SB_.PCI0.RP01.R31A */
                D31C = R31C /* \_SB_.PCI0.RP01.R31C */
                D320 = R320 /* \_SB_.PCI0.RP01.R320 */
                D324 = R324 /* \_SB_.PCI0.RP01.R324 */
                D328 = R328 /* \_SB_.PCI0.RP01.R328 */
                D32C = R32C /* \_SB_.PCI0.RP01.R32C */
                D304 = 0x07
                Debug = "TB:CNHI - Configure NHI Dp 3 done"
                D418 = R418 /* \_SB_.PCI0.RP01.R418 */
                D419 = R419 /* \_SB_.PCI0.RP01.R419 */
                D41A = R41A /* \_SB_.PCI0.RP01.R41A */
                D41C = R41C /* \_SB_.PCI0.RP01.R41C */
                D420 = R420 /* \_SB_.PCI0.RP01.R420 */
                D424 = R424 /* \_SB_.PCI0.RP01.R424 */
                D428 = R428 /* \_SB_.PCI0.RP01.R428 */
                D42C = R42C /* \_SB_.PCI0.RP01.R42C */
                DVES = RVES /* \_SB_.PCI0.RP01.RVES */
                D404 = 0x07
                Debug = "TB:CNHI - Configure NHI Dp 4 done"
                D518 = R518 /* \_SB_.PCI0.RP01.R518 */
                D519 = R519 /* \_SB_.PCI0.RP01.R519 */
                D51A = R51A /* \_SB_.PCI0.RP01.R51A */
                D51C = R51C /* \_SB_.PCI0.RP01.R51C */
                D520 = R520 /* \_SB_.PCI0.RP01.R520 */
                D524 = R524 /* \_SB_.PCI0.RP01.R524 */
                D528 = R528 /* \_SB_.PCI0.RP01.R528 */
                D52C = R52C /* \_SB_.PCI0.RP01.R52C */
                D504 = 0x07
                Debug = "TB:CNHI - Configure NHI Dp 5 done"
                If ((R219 == DP19))
                {
                    Break
                }

                Sleep (One)
                Local0--
            }

            If ((R219 != DP19))
            {
                Debug = "TB:CNHI - Error: configure DSB failed"
                Return (Zero)
            }

            If ((WTDL () != One))
            {
                Debug = "TB:CNHI - Error: Configure NHI DPs failed"
                Return (Zero)
            }

            Debug = "TB:CNHI - Configure NHI"
            Local0 = 0x64
            While (Local0)
            {
                NH10 = RH10 /* \_SB_.PCI0.RP01.RH10 */
                NH14 = RH14 /* \_SB_.PCI0.RP01.RH14 */
                NH04 = 0x07
                If ((RH10 == NH10))
                {
                    Break
                }

                Sleep (One)
                Local0--
            }

            If ((RH10 != NH10))
            {
                Debug = "TB:CNHI - Error: Configure NHI failed"
                Return (Zero)
            }

            Debug = "TB:CNHI - Configure NHI0 done"
            Return (One)
        }

        Method (UPCK, 0, Serialized)
        {
            Debug = Concatenate ("TB:UPCK - Up Stream VID/DID: ", UPVD)
            If (((UPVD & 0xFFFF) == 0x8086))
            {
                Return (One)
            }

            Return (Zero)
        }

        Method (ULTC, 0, Serialized)
        {
            Debug = "TB:ULTC"
            If ((RPLT == Zero))
            {
                If ((UPLT == Zero))
                {
                    Return (One)
                }
            }

            Return (Zero)
        }

        Method (WTLT, 0, Serialized)
        {
            Local0 = 0x07D0
            Local1 = Zero
            While (Local0)
            {
                If ((RPR4 == 0x07))
                {
                    If (ULTC ())
                    {
                        If (UPCK ())
                        {
                            Local1 = One
                            Break
                        }
                    }
                }

                Sleep (One)
                Local0--
            }

            Return (Local1)
        }

        Method (DLTC, 0, Serialized)
        {
            If ((RPLT == Zero))
            {
                If ((UPLT == Zero))
                {
                    If ((DPLT == Zero))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (WTDL, 0, Serialized)
        {
            Local0 = 0x07D0
            Local1 = Zero
            While (Local0)
            {
                If ((RPR4 == 0x07))
                {
                    If (DLTC ())
                    {
                        If (UPCK ())
                        {
                            Local1 = One
                            Break
                        }
                    }
                }

                Sleep (One)
                Local0--
            }

            Return (Local1)
        }

        Name (IIP3, Zero)
        Name (PRSR, Zero)
        Name (PCIA, One)
        Method (PCEU, 0, Serialized)
        {
            Debug = "TB:PCEU"
            \_SB.PCI0.RP01.PRSR = Zero
            Local0 = 0x2710
            Debug = "TB:PCEU - Wait for controller to show..."
            While (((Local0 > Zero) && (\_SB.PCI0.RP01.UPSB.AVND == 0xFFFFFFFF)))
            {
                Sleep (One)
                Local0--
            }

            Debug = "TB:PCEU - Put upstream bridge back into D0 "
            If ((\_SB.PCI0.RP01.PSTX != Zero))
            {
                Debug = "TB:PCEU - Exit D0, restored = true"
                \_SB.PCI0.RP01.PRSR = One
                \_SB.PCI0.RP01.PSTX = Zero
            }

            If ((\_SB.PCI0.RP01.LDXX == One))
            {
                Debug = "TB:PCEU - Clear link disable on upstream bridge"
                Debug = "TB:PCEU - Clear link disable, restored = true"
                \_SB.PCI0.RP01.PRSR = One
                \_SB.PCI0.RP01.LDXX = Zero
            }

            If ((\_SB.PCI0.RP01.UPSB.DSB0.NHI0.XRTE != Zero))
            {
                Debug = "TB:PCEU - XRST changed, restored = true"
                \_SB.PCI0.RP01.PRSR = One
                \_SB.PCI0.RP01.UPSB.DSB0.NHI0.XRST (Zero)
            }
        }

        Method (PCDA, 0, Serialized)
        {
            Debug = "TB:PCDA"
            If ((\_SB.PCI0.RP01.POFX () != Zero))
            {
                \_SB.PCI0.RP01.PCIA = Zero
                Debug = "TB:PCDA - Put upstream bridge into D3"
                \_SB.PCI0.RP01.PSTX = 0x03
                Debug = "TB:PCDA - Set link disable on upstream bridge"
                \_SB.PCI0.RP01.LDXX = One
                Local5 = (Timer + 0x00989680)
                While ((Timer <= Local5))
                {
                    Debug = "TB:PCDA - Wait for link to drop..."
                    If ((\_SB.PCI0.RP01.LACR == One))
                    {
                        If ((\_SB.PCI0.RP01.LACT == Zero))
                        {
                            Debug = "TB:PCDA - No link activity"
                            Break
                        }
                    }
                    ElseIf ((\_SB.PCI0.RP01.UPSB.AVND == 0xFFFFFFFF))
                    {
                        Debug = "TB:PCDA - UPSB is down - VID/DID is -1"
                        Break
                    }

                    Sleep (0x0A)
                }

                Debug = "TB:PCDA - Request PCI-GPIO to be disabled"
                \_SB.PCI0.RP01.GPCI = Zero
                \_SB.PCI0.RP01.UGIO ()
            }
            Else
            {
                Debug = "TB:PCDA - Already disabled, not disabling"
            }

            \_SB.PCI0.RP01.IIP3 = One
        }

        Method (POFX, 0, Serialized)
        {
            Debug = Concatenate ("TB:POFX - Result (!RTBT && !RUSB): ", (!\_SB.PCI0.RP01.RTBT && !\_SB.PCI0.RP01.RUSB))
            Return ((!\_SB.PCI0.RP01.RTBT && !\_SB.PCI0.RP01.RUSB))
        }

        Name (GPCI, One)
        Name (GNHI, One)
        Name (GXCI, One)
        Name (RTBT, One)
        Name (RUSB, One)
        Name (CTPD, Zero)
        Method (CTBT, 0, Serialized)
        {
            Debug = "TB:CTBT"
            If ((\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF))
            {
                Debug = "TB:CTBT - UPSB-device enabled"
                Local2 = \_SB.PCI0.RP01.UPSB.CRMW (0x3C, Zero, 0x02, 0x04000000, 0x04000000)
                If ((Local2 == Zero))
                {
                    Debug = "TB:CTBT - Set CP_ACK_POWERDOWN_OVERRIDE"
                    \_SB.PCI0.RP01.CTPD = One
                }
            }
            Else
            {
                Debug = "TB:CTBT - UPSB-device disabled"
            }
        }

        Name (IRST, Zero)
        Method (UGIO, 0, Serialized)
        {
            Debug = "TB:UGIO"
            If ((\_SB.PCI0.RP01.GPCI == Zero))
            {
                Debug = "TB:UGIO - PCI wants off (GPCI)"
            }
            Else
            {
                Debug = "TB:UGIO - PCI wants on (GPCI)"
            }

            If ((\_SB.PCI0.RP01.GNHI == Zero))
            {
                Debug = "TB:UGIO - NHI wants off (GNHI)"
            }
            Else
            {
                Debug = "TB:UGIO - NHI wants on (GNHI)"
            }

            If ((\_SB.PCI0.RP01.GXCI == Zero))
            {
                Debug = "TB:UGIO - XHCI wants off (GXCI)"
            }
            Else
            {
                Debug = "TB:UGIO - XHCI wants on (GXCI)"
            }

            If ((\_SB.PCI0.RP01.RTBT == Zero))
            {
                Debug = "TB:UGIO - TBT allows off (RTBT)"
            }
            Else
            {
                Debug = "TB:UGIO - TBT forced on (RTBT)"
            }

            If ((\_SB.PCI0.RP01.RUSB == Zero))
            {
                Debug = "TB:UGIO - USB allows off (RUSB)"
            }
            Else
            {
                Debug = "TB:UGIO - USB forced on (RUSB)"
            }

            Local0 = (\_SB.PCI0.RP01.GNHI || \_SB.PCI0.RP01.RTBT)
            Local1 = (\_SB.PCI0.RP01.GXCI || \_SB.PCI0.RP01.RUSB)
            If ((\_SB.PCI0.RP01.GPCI != Zero))
            {
                If (((Local0 == Zero) && (Local1 == Zero)))
                {
                    Local0 = One
                    Local1 = One
                }
            }

            If ((Local0 == Zero))
            {
                Debug = "TB:UGIO - TBT GPIO should be off"
            }
            Else
            {
                Debug = "TB:UGIO - TBT GPIO should be on"
            }

            If ((Local1 == Zero))
            {
                Debug = "TB:UGIO - USB GPIO should be off"
            }
            Else
            {
                Debug = "TB:UGIO - USB GPIO should be on"
            }

            Local2 = Zero
            If ((Local0 != Zero))
            {
                Debug = "TB:UGIO - Make sure TBT is on"
                Local2 = TBON ()
                If (Local2)
                {
                    Debug = "TB:UGIO - Turn on TBT GPIO"
                    \_SB.PCI0.RP01.CTPD = Zero
                }
            }

            If ((Local1 != Zero))
            {
                Debug = "TB:UGIO - Make sure USB is on"
                Local2 = TBON ()
                If (Local2)
                {
                    Debug = "TB:UGIO - Turn on TBT GPIO"
                    \_SB.PCI0.RP01.CTPD = Zero
                }
            }

            If ((Local2 != Zero))
            {
                Debug = "TB:UGIO - Reset ICM once NHI is up"
                IRST = One
                Sleep (0x01F4)
            }

            Local3 = Zero
            If (((Local0 == Zero) && (Local1 == Zero)))
            {
                Debug = "TB:UGIO - Make sure TBT and USB are off"
                \_SB.PCI0.RP01.CTBT ()
                If ((\_SB.PCI0.RP01.CTPD != Zero))
                {
                    TBOF ()
                    Local3 = One
                }
            }

            If ((Local3 != Zero))
            {
                Sleep (0x64)
            }

            Debug = Concatenate ("TB:UGIO finished - Result: ", Local2)
            Return (Local2)
        }

        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
            Debug = "TB:_PS0"
            If (OSDW ())
            {
                PCEU ()
                \_SB.PCI0.RP01.TBST ()
            }
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
            Debug = "TB:_PS3"
            If (OSDW ())
            {
                If ((\_SB.PCI0.RP01.POFX () != Zero))
                {
                    \_SB.PCI0.RP01.CTBT ()
                }

                PCDA ()
                \_SB.PCI0.RP01.TBST ()
            }
        }

        Method (TGPE, 0, Serialized)
        {
            Debug = "TB:TGPE"
            Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
        }

        Method (UTLK, 2, Serialized)
        {
            Debug = "TB:UTLK"
            Local0 = Zero
            If (Zero)
            {
                \_SB.PCI0.RP01.PSTX = Zero
                While (One)
                {
                    If ((\_SB.PCI0.RP01.LDXX == One))
                    {
                        \_SB.PCI0.RP01.LDXX = Zero
                    }

                    Local1 = Zero
                    Local2 = (Timer + 0x00989680)
                    While ((Timer <= Local2))
                    {
                        If ((\_SB.PCI0.RP01.LACR == Zero))
                        {
                            If ((\_SB.PCI0.RP01.LTRN != One))
                            {
                                Break
                            }
                        }
                        ElseIf (((\_SB.PCI0.RP01.LTRN != One) && (\_SB.PCI0.RP01.LACT == One)))
                        {
                            Break
                        }

                        Sleep (0x0A)
                    }

                    Sleep (Arg1)
                    While ((Timer <= Local2))
                    {
                        If ((\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF))
                        {
                            Local1 = One
                            Break
                        }

                        Sleep (0x0A)
                    }

                    If ((Local1 == One))
                    {
                        \_SB.PCI0.RP01.MABT = One
                        Break
                    }

                    If ((Local0 == 0x04))
                    {
                        Break
                    }

                    Local0++
                    Sleep (0x03E8)
                }
            }

            Debug = Concatenate ("UTLK: Up Stream VID/DID: ", \_SB.PCI0.RP01.UPSB.AVND)
            Debug = Concatenate ("UTLK: Root Port VID/DID: ", \_SB.PCI0.RP01.AVND)
            Debug = Concatenate ("UTLK: Root Port PRIB: ", \_SB.PCI0.RP01.PRIB)
            Debug = Concatenate ("UTLK: Root Port SECB: ", \_SB.PCI0.RP01.SECB)
            Debug = Concatenate ("UTLK: Root Port SUBB: ", \_SB.PCI0.RP01.SUBB)
        }

        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
        Field (A1E0, ByteAcc, NoLock, Preserve)
        {
            AVND,   32, 
            BMIE,   3, 
            Offset (0x18), 
            PRIB,   8, 
            SECB,   8, 
            SUBB,   8, 
            Offset (0x1E), 
                ,   13, 
            MABT,   1
        }

        OperationRegion (HD94, PCI_Config, 0x0D94, 0x08)
        Field (HD94, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            PLEQ,   1, 
            Offset (0x08)
        }

        OperationRegion (A1E1, PCI_Config, 0x40, 0x40)
        Field (A1E1, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            Offset (0x02), 
            Offset (0x04), 
            Offset (0x08), 
            Offset (0x0A), 
                ,   5, 
            TPEN,   1, 
            Offset (0x0C), 
            SSPD,   4, 
                ,   16, 
            LACR,   1, 
            Offset (0x10), 
                ,   4, 
            LDXX,   1, 
            LRTN,   1, 
            Offset (0x12), 
            CSPD,   4, 
            CWDT,   6, 
                ,   1, 
            LTRN,   1, 
                ,   1, 
            LACT,   1, 
            Offset (0x14), 
            Offset (0x30), 
            TSPD,   4
        }

        OperationRegion (A1E2, PCI_Config, 0xA0, 0x08)
        Field (A1E2, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            Offset (0x02), 
            Offset (0x04), 
            PSTX,   2
        }

        OperationRegion (OE2H, PCI_Config, 0xE2, One)
        Field (OE2H, ByteAcc, NoLock, Preserve)
        {
                ,   2, 
            L23X,   1, 
            L23D,   1
        }

        OperationRegion (DMIH, PCI_Config, 0x0324, One)
        Field (DMIH, ByteAcc, NoLock, Preserve)
        {
                ,   3, 
            LEDX,   1
        }

        OperationRegion (A1E3, PCI_Config, 0x0200, 0x20)
        Field (A1E3, ByteAcc, NoLock, Preserve)
        {
            Offset (0x14), 
            Offset (0x16), 
            PSTS,   4
        }

        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            Return (Zero)
        }

        Method (PXSX._STA, 0, NotSerialized)  // _STA: Status
        {
            If (OSDW ())
            {
                Debug = "TB:PXSX:_STA - OFF"
                Return (Zero)
            }
            Else
            {
                Debug = "TB:PXSX:_STA - ON"
                Return (0x0F)
            }
        }

        Device (UPSB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            OperationRegion (A1E0, PCI_Config, Zero, 0x40)
            Field (A1E0, ByteAcc, NoLock, Preserve)
            {
                AVND,   32, 
                BMIE,   3, 
                Offset (0x18), 
                PRIB,   8, 
                SECB,   8, 
                SUBB,   8, 
                Offset (0x1E), 
                    ,   13, 
                MABT,   1
            }

            OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
            Field (A1E1, ByteAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                Offset (0x02), 
                Offset (0x04), 
                Offset (0x08), 
                Offset (0x0A), 
                    ,   5, 
                TPEN,   1, 
                Offset (0x0C), 
                SSPD,   4, 
                    ,   16, 
                LACR,   1, 
                Offset (0x10), 
                    ,   4, 
                LDIS,   1, 
                LRTN,   1, 
                Offset (0x12), 
                CSPD,   4, 
                CWDT,   6, 
                    ,   1, 
                LTRN,   1, 
                    ,   1, 
                LACT,   1, 
                Offset (0x14), 
                Offset (0x30), 
                TSPD,   4
            }

            OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
            Field (A1E2, ByteAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                Offset (0x02), 
                Offset (0x04), 
                PSTA,   2
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Debug = "TB:UPSB:_STA - ON"
                    Return (0x0F)
                }

                Debug = "TB:UPSB:_STA - OFF"
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (SECB) /* \_SB_.PCI0.RP01.UPSB.SECB */
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (PCED, 0, Serialized)
            {
                Debug = "TB:UPSB:PCED"
                Debug = "TB:UPSB:PCED - Request TB-GPIO to be enabled"
                \_SB.PCI0.RP01.GPCI = One
                If ((\_SB.PCI0.RP01.UGIO () != Zero))
                {
                    Debug = "TB:UPSB:PCED - GPIOs changed, restored = true"
                    \_SB.PCI0.RP01.PRSR = One
                }

                Local0 = Zero
                Local1 = Zero
                If ((\_SB.PCI0.RP01.IIP3 != Zero))
                {
                    \_SB.PCI0.RP01.PRSR = One
                    Local0 = One
                    Debug = "TB:UPSB:PCED - Set link disable on upstream bridge"
                    \_SB.PCI0.RP01.LDXX = One
                }

                Local5 = (Timer + 0x00989680)
                Debug = Concatenate ("TB:UPSB:PCED - restored flag, THUNDERBOLT_PCI_LINK_MGMT_DEVICE.PRSR: ", \_SB.PCI0.RP01.PRSR)
                If ((\_SB.PCI0.RP01.PRSR != Zero))
                {
                    Debug = "TB:UPSB:PCED - Wait for power up"
                    Sleep (0x1E)
                    If (((Local0 != Zero) || (Local1 != Zero)))
                    {
                        \_SB.PCI0.RP01.TSPD = One
                        If ((Local1 != Zero)){}
                        ElseIf ((Local0 != Zero))
                        {
                            Debug = "TB:UPSB:PCED - Clear link disable on upstream bridge"
                            \_SB.PCI0.RP01.LDXX = Zero
                        }

                        While ((Timer <= Local5))
                        {
                            Debug = "TB:UPSB:PCED - Wait for link training..."
                            If ((\_SB.PCI0.RP01.LACR == Zero))
                            {
                                If ((\_SB.PCI0.RP01.LTRN != One))
                                {
                                    Debug = "TB:UPSB:PCED - GENSTEP WA - Link training cleared"
                                    Break
                                }
                            }
                            ElseIf (((\_SB.PCI0.RP01.LTRN != One) && (\_SB.PCI0.RP01.LACT == One)))
                            {
                                Debug = "TB:UPSB:PCED - GENSTEP WA - Link training cleared and link is active"
                                Break
                            }

                            Sleep (0x0A)
                        }

                        Sleep (0x78)
                        While ((Timer <= Local5))
                        {
                            Debug = "TB:UPSB:PCED - PEG WA - Wait for config space..."
                            If ((\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF))
                            {
                                Debug = "TB:UPSB:PCED - UPSB UP - Read VID/DID"
                                Break
                            }

                            Sleep (0x0A)
                        }

                        \_SB.PCI0.RP01.TSPD = 0x03
                        \_SB.PCI0.RP01.LRTN = One
                    }

                    Debug = "TB:UPSB:PCED - Wait for downstream bridge to appear"
                    Local5 = (Timer + 0x00989680)
                    While ((Timer <= Local5))
                    {
                        Debug = "TB:UPSB:PCED - Wait for link training..."
                        If ((\_SB.PCI0.RP01.LACR == Zero))
                        {
                            If ((\_SB.PCI0.RP01.LTRN != One))
                            {
                                Debug = "TB:UPSB:PCED - Link training cleared"
                                Break
                            }
                        }
                        ElseIf (((\_SB.PCI0.RP01.LTRN != One) && (\_SB.PCI0.RP01.LACT == One)))
                        {
                            Debug = "TB:UPSB:PCED - Link training cleared and link is active"
                            Break
                        }

                        Sleep (0x0A)
                    }

                    Sleep (0xFA)
                }

                \_SB.PCI0.RP01.PRSR = Zero
                While ((Timer <= Local5))
                {
                    Debug = "TB:UPSB:PCED - Wait for config space..."
                    If ((\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF))
                    {
                        Debug = "TB:UPSB:PCED - UPSB up"
                        Break
                    }

                    Sleep (0x0A)
                }

                If ((\_SB.PCI0.RP01.CSPD != 0x03))
                {
                    If ((\_SB.PCI0.RP01.SSPD == 0x03))
                    {
                        If ((\_SB.PCI0.RP01.UPSB.SSPD == 0x03))
                        {
                            If ((\_SB.PCI0.RP01.TSPD != 0x03))
                            {
                                \_SB.PCI0.RP01.TSPD = 0x03
                            }

                            If ((\_SB.PCI0.RP01.UPSB.TSPD != 0x03))
                            {
                                \_SB.PCI0.RP01.UPSB.TSPD = 0x03
                            }

                            \_SB.PCI0.RP01.LRTN = One
                            Local2 = (Timer + 0x00989680)
                            While ((Timer <= Local2))
                            {
                                If ((\_SB.PCI0.RP01.LACR == Zero))
                                {
                                    If (((\_SB.PCI0.RP01.LTRN != One) && (\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF)))
                                    {
                                        \_SB.PCI0.RP01.PCIA = One
                                        Local1 = One
                                        Break
                                    }
                                }
                                ElseIf ((((\_SB.PCI0.RP01.LTRN != One) && (\_SB.PCI0.RP01.LACT == One)) && 
                                    (\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF)))
                                {
                                    \_SB.PCI0.RP01.PCIA = One
                                    Local1 = One
                                    Break
                                }

                                Sleep (0x0A)
                            }
                        }
                        Else
                        {
                            \_SB.PCI0.RP01.PCIA = One
                        }
                    }
                    Else
                    {
                        \_SB.PCI0.RP01.PCIA = One
                    }
                }
                Else
                {
                    \_SB.PCI0.RP01.PCIA = One
                }

                \_SB.PCI0.RP01.IIP3 = Zero
            }

            Method (AMPE, 0, Serialized)
            {
                Debug = "TB:UPSB:AMPE() - Hotplug notify to NHI0 by ACPI"
                Notify (\_SB.PCI0.RP01.UPSB.DSB0.NHI0, Zero) // Bus Check
            }

            Method (UMPE, 0, Serialized)
            {
                Debug = "TB:UPSB:UMPE() - Hotplug notify XHC2 & XHC by NHI"
                Notify (\_SB.PCI0.RP01.UPSB.DSB2.XHC2, Zero) // Bus Check
            }

            Name (MDUV, One)
            Method (MUST, 1, Serialized)
            {
                If ((MDUV != Arg0))
                {
                    Debug = Concatenate ("TB:UPSB:MUST calling Hotplug to XHC2 & XHC setting MDUV to: ", Arg0)
                    MDUV = Arg0
                    UMPE ()
                }
                Else
                {
                    Debug = Concatenate ("TB:UPSB:MUST not changed, leavin MDUV, called with args: ", Arg0)
                }

                Return (Zero)
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                Debug = "TB:UPSB:_PS0"
                If (OSDW ())
                {
                    PCED ()
                    \_SB.PCI0.RP01.UPSB.CRMW (0x013E, Zero, 0x02, 0x0200, 0x0200)
                    \_SB.PCI0.RP01.UPSB.CRMW (0x023E, Zero, 0x02, 0x0200, 0x0200)
                    \_SB.PCI0.RP01.TBST ()
                }
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                Debug = "TB:UPSB:_PS3"
                If (OSDW ())
                {
                    \_SB.PCI0.RP01.TBST ()
                }
            }

            OperationRegion (H548, PCI_Config, 0x0548, 0x20)
            Field (H548, DWordAcc, Lock, Preserve)
            {
                T2PC,   32, 
                PC2T,   32
            }

            OperationRegion (H530, PCI_Config, 0x0530, 0x0C)
            Field (H530, DWordAcc, Lock, Preserve)
            {
                DWIX,   13, 
                PORT,   6, 
                SPCE,   2, 
                CMD0,   1, 
                CMD1,   1, 
                CMD2,   1, 
                    ,   6, 
                PROG,   1, 
                TMOT,   1, 
                WDAT,   32, 
                RDAT,   32
            }

            Method (CIOW, 4, Serialized)
            {
                WDAT = Arg3
                Debug = Concatenate ("TB:UPSB:CIOW - WDAT: ", WDAT)
                DWIX = Arg0
                PORT = Arg1
                SPCE = Arg2
                CMD0 = One
                CMD1 = Zero
                CMD2 = Zero
                TMOT = Zero
                PROG = One
                Local1 = One
                Local0 = 0x2710
                While ((Zero < Local0))
                {
                    If ((PROG == Zero))
                    {
                        Local1 = Zero
                        Break
                    }

                    Stall (0x19)
                    Local0--
                }

                If ((Local1 == Zero))
                {
                    Local1 = TMOT /* \_SB_.PCI0.RP01.UPSB.TMOT */
                }

                If (Local1)
                {
                    Debug = Concatenate ("TB:UPSB:CIOW - Error: ", Local1)
                }

                Return (Local1)
            }

            Method (CIOR, 3, Serialized)
            {
                RDAT = Zero
                DWIX = Arg0
                PORT = Arg1
                SPCE = Arg2
                CMD0 = Zero
                CMD1 = Zero
                CMD2 = Zero
                TMOT = Zero
                PROG = One
                Local1 = One
                Local0 = 0x2710
                While ((Zero < Local0))
                {
                    If ((PROG == Zero))
                    {
                        Local1 = Zero
                        Break
                    }

                    Stall (0x19)
                    Local0--
                }

                If ((Local1 == Zero))
                {
                    Local1 = TMOT /* \_SB_.PCI0.RP01.UPSB.TMOT */
                }

                If (Local1)
                {
                    Debug = Concatenate ("TB:UPSB:CIOR - Error: ", Local1)
                    Debug = Concatenate ("TB:UPSB:CIOR - RDAT: ", RDAT)
                }

                If ((Local1 == Zero))
                {
                    Return (Package (0x02)
                    {
                        Zero, 
                        RDAT
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        One, 
                        RDAT
                    })
                }
            }

            Method (CRMW, 5, Serialized)
            {
                Local1 = One
                If ((\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF))
                {
                    Local3 = Zero
                    While ((Local3 <= 0x04))
                    {
                        Local2 = CIOR (Arg0, Arg1, Arg2)
                        If ((DerefOf (Local2 [Zero]) == Zero))
                        {
                            Local2 = DerefOf (Local2 [One])
                            Local2 &= ~Arg4
                            Local2 |= Arg3
                            Local2 = CIOW (Arg0, Arg1, Arg2, Local2)
                            If ((Local2 == Zero))
                            {
                                Local2 = CIOR (Arg0, Arg1, Arg2)
                                If ((DerefOf (Local2 [Zero]) == Zero))
                                {
                                    Local2 = DerefOf (Local2 [One])
                                    Local2 &= Arg4
                                    If ((Local2 == Arg3))
                                    {
                                        Local1 = Zero
                                        Break
                                    }
                                }
                            }
                        }

                        Local3++
                        Sleep (0x64)
                    }
                }

                If (Local1)
                {
                    Debug = Concatenate ("TB:UPSB:CRMW - Error value: ", Local1)
                }

                Return (Local1)
            }

            Method (LSTX, 2, Serialized)
            {
                Debug = "TB:UPSB:LSTX"
                If ((T2PC != 0xFFFFFFFF))
                {
                    Local0 = Zero
                    If (((T2PC & One) && One))
                    {
                        Local0 = One
                    }

                    If ((Local0 == Zero))
                    {
                        Local1 = 0x2710
                        While ((Zero < Local1))
                        {
                            If ((T2PC == Zero))
                            {
                                Break
                            }

                            Stall (0x19)
                            Local1--
                        }

                        If ((Zero == Local1))
                        {
                            Local0 = One
                        }
                    }

                    If ((Local0 == Zero))
                    {
                        Local1 = One
                        Local1 |= 0x14
                        Local1 |= (Arg0 << 0x08)
                        Local1 |= (Arg1 << 0x0C)
                        Local1 |= 0x00400000
                        PC2T = Local1
                    }

                    If ((Local0 == Zero))
                    {
                        Local1 = 0x2710
                        While ((Zero < Local1))
                        {
                            If ((T2PC == 0x15))
                            {
                                Break
                            }

                            Stall (0x19)
                            Local1--
                        }

                        If ((Zero == Local1))
                        {
                            Local0 = One
                        }
                    }

                    Sleep (0x0A)
                    PC2T = Zero
                }
            }

            Device (DSB0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    Offset (0x08), 
                    Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                    Offset (0x0C), 
                    SSPD,   4, 
                        ,   16, 
                    LACR,   1, 
                    Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                    Offset (0x12), 
                    CSPD,   4, 
                    CWDT,   6, 
                        ,   1, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                    Offset (0x14), 
                    Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    PSTA,   2
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB0.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (IIP3, Zero)
                Name (PRSR, Zero)
                Name (PCIA, One)
                Method (PCEU, 0, Serialized)
                {
                    Debug = "TB:DSB0:PCEU"
                    \_SB.PCI0.RP01.UPSB.DSB0.PRSR = Zero
                    Debug = "TB:DSB0:PCEU - Put upstream bridge back into D0 "
                    If ((\_SB.PCI0.RP01.UPSB.DSB0.PSTA != Zero))
                    {
                        Debug = "TB:DSB0:PCEU - Exit D0, restored = true"
                        \_SB.PCI0.RP01.UPSB.DSB0.PRSR = One
                        \_SB.PCI0.RP01.UPSB.DSB0.PSTA = Zero
                    }

                    If ((\_SB.PCI0.RP01.UPSB.DSB0.LDIS == One))
                    {
                        Debug = "TB:DSB0:PCEU - Clear link disable on upstream bridge"
                        Debug = "TB:DSB0:PCEU - Clear link disable, restored = true"
                        \_SB.PCI0.RP01.UPSB.DSB0.PRSR = One
                        \_SB.PCI0.RP01.UPSB.DSB0.LDIS = Zero
                    }
                }

                Method (PCDA, 0, Serialized)
                {
                    Debug = "TB:DSB0:PCDA"
                    If ((\_SB.PCI0.RP01.UPSB.DSB0.POFX () != Zero))
                    {
                        \_SB.PCI0.RP01.UPSB.DSB0.PCIA = Zero
                        Debug = "TB:DSB0:PCDA - Put upstream bridge into D3"
                        \_SB.PCI0.RP01.UPSB.DSB0.PSTA = 0x03
                        Debug = "TB:DSB0:PCDA - Set link disable on upstream bridge"
                        \_SB.PCI0.RP01.UPSB.DSB0.LDIS = One
                        Local5 = (Timer + 0x00989680)
                        While ((Timer <= Local5))
                        {
                            Debug = "TB:DSB0:PCDA - Wait for link to drop..."
                            If ((\_SB.PCI0.RP01.UPSB.DSB0.LACR == One))
                            {
                                If ((\_SB.PCI0.RP01.UPSB.DSB0.LACT == Zero))
                                {
                                    Debug = "TB:DSB0:PCDA - No link activity"
                                    Break
                                }
                            }
                            ElseIf ((\_SB.PCI0.RP01.UPSB.DSB0.NHI0.AVND == 0xFFFFFFFF))
                            {
                                Debug = "TB:DSB0:PCDA - VID/DID is -1"
                                Break
                            }

                            Sleep (0x0A)
                        }

                        Debug = "TB:DSB0:PCDA - Request NHI-GPIO to be disabled"
                        \_SB.PCI0.RP01.GNHI = Zero
                        \_SB.PCI0.RP01.UGIO ()
                    }
                    Else
                    {
                        Debug = "TB:DSB0:PCDA - Not disabling"
                    }

                    \_SB.PCI0.RP01.UPSB.DSB0.IIP3 = One
                }

                Method (POFX, 0, Serialized)
                {
                    Debug = Concatenate ("TB:DSB0:POFX - Result (!RTBT): ", !\_SB.PCI0.RP01.RTBT)
                    Return (!\_SB.PCI0.RP01.RTBT)
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    Debug = "TB:DSB0:_PS0"
                    If (OSDW ())
                    {
                        PCEU ()
                        \_SB.PCI0.RP01.TBST ()
                    }
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    Debug = "TB:DSB0:_PS3"
                    If (OSDW ())
                    {
                        PCDA ()
                        \_SB.PCI0.RP01.TBST ()
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (OSDW ())
                    {
                        If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
                        {
                            Local0 = Package (0x02)
                                {
                                    "PCIHotplugCapable", 
                                    Zero
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }

                    Return (Zero)
                }

                Device (NHI0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
                    Name (SCMD, Zero)
                    Name (SBAR, Zero)
                    Method (ICMR, 1, Serialized)
                    {
                        Concatenate ("NHI BAR", \_SB.PCI0.RP01.UPSB.DSB0.NHI0.BAR1, Debug)
                        OperationRegion (RSTR, SystemMemory, (\_SB.PCI0.RP01.UPSB.DSB0.NHI0.BAR1 + 0x00039854), 0x0100)
                        Field (RSTR, DWordAcc, NoLock, Preserve)
                        {
                            CIOR,   32, 
                            Offset (0xB8), 
                            ISTA,   32, 
                            Offset (0xF0), 
                            ICME,   32
                        }

                        If (((Arg0 && (ICME == 0x800001A1)) || (!Arg0 && (ICME == 
                            0x01A3))))
                        {
                            Concatenate ("ICME already right value", ICME, Debug)
                            Return (Zero)
                        }

                        Concatenate ("ICME", ICME, Debug)
                        If (Arg0)
                        {
                            ICME = 0x0110
                        }
                        Else
                        {
                            ICME = 0x0102
                        }

                        Concatenate ("ICME", ICME, Debug)
                        Local1 = 0x0A
                        While ((Local1 > Zero))
                        {
                            Local0 = ICME /* \_SB_.PCI0.RP01.UPSB.DSB0.NHI0.ICMR.ICME */
                            If (Arg0)
                            {
                                If (((Local0 != 0xFFFFFFFF) && ((Local0 & 0x80000000) != 
                                    Zero)))
                                {
                                    Break
                                }
                            }
                            ElseIf (((Local0 != 0xFFFFFFFF) && ((Local0 & One
                                ) != Zero)))
                            {
                                Break
                            }

                            Sleep (0x012C)
                            Local1--
                        }

                        Concatenate ("ICME", Local0, Debug)
                    }

                    Method (PCED, 0, Serialized)
                    {
                        Debug = "TB:NHI0:PCED"
                        Debug = "TB:NHI0:PCED - Request NHI-GPIO to be enabled"
                        \_SB.PCI0.RP01.GNHI = One
                        If ((\_SB.PCI0.RP01.UGIO () != Zero))
                        {
                            Debug = "TB:NHI0:PCED - GPIOs changed, restored = true"
                            \_SB.PCI0.RP01.UPSB.DSB0.PRSR = One
                        }

                        Local5 = (Timer + 0x00989680)
                        Debug = Concatenate ("TB:NHI0:PCED - restored flag, THUNDERBOLT_PCI_LINK_MGMT_DEVICE.PRSR: ", \_SB.PCI0.RP01.UPSB.DSB0.PRSR)
                        If ((\_SB.PCI0.RP01.UPSB.DSB0.PRSR != Zero))
                        {
                            Debug = "TB:NHI0:PCED - Wait for power up"
                            Debug = "TB:NHI0:PCED - Wait for downstream bridge to appear"
                            Local5 = (Timer + 0x00989680)
                            While ((Timer <= Local5))
                            {
                                Debug = "TB:NHI0:PCED - Wait for link training..."
                                If ((\_SB.PCI0.RP01.UPSB.DSB0.LACR == Zero))
                                {
                                    If ((\_SB.PCI0.RP01.UPSB.DSB0.LTRN != One))
                                    {
                                        Debug = "TB:NHI0:PCED - Link training cleared"
                                        Break
                                    }
                                }
                                ElseIf (((\_SB.PCI0.RP01.UPSB.DSB0.LTRN != One) && (\_SB.PCI0.RP01.UPSB.DSB0.LACT == One)))
                                {
                                    Debug = "TB:NHI0:PCED - Link training cleared and link is active"
                                    Break
                                }

                                Sleep (0x0A)
                            }

                            Sleep (0x96)
                        }

                        \_SB.PCI0.RP01.UPSB.DSB0.PRSR = Zero
                        While ((Timer <= Local5))
                        {
                            Debug = "TB:NHI0:PCED - Wait for config space..."
                            If ((\_SB.PCI0.RP01.UPSB.DSB0.NHI0.AVND != 0xFFFFFFFF))
                            {
                                Debug = "TB:NHI0:PCED - DSB0 UP - Read VID/DID"
                                \_SB.PCI0.RP01.UPSB.DSB0.PCIA = One
                                Break
                            }

                            Sleep (0x0A)
                        }

                        \_SB.PCI0.RP01.UPSB.DSB0.IIP3 = Zero
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x10), 
                        BAR1,   32, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (RTPC, 1, Serialized)
                    {
                        Debug = Concatenate ("TB:NHI0:RTPC called with args: ", Arg0)
                        If ((Arg0 <= One))
                        {
                            If (!((Arg0 == Zero) && (\_SB.PCI0.RP01.RUSB == One)))
                            {
                                Debug = Concatenate ("TB:NHI0:RTPC setting RTBT to: ", Arg0)
                                \_SB.PCI0.RP01.RTBT = Arg0
                            }
                            Else
                            {
                                Debug = "TB:NHI0:RTPC leaving RTBT as RUSB is One"
                            }
                        }

                        Return (Zero)
                    }

                    Method (MUST, 1, Serialized)
                    {
                        Debug = "TB:NHI0:MUST - called Cable detection by NHI"
                        Return (\_SB.PCI0.RP01.UPSB.MUST (Arg0))
                    }

                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        Debug = "TB:NHI0:_PS0"
                        If (OSDW ())
                        {
                            PCED ()
                            \_SB.PCI0.RP01.CTBT ()
                            \_SB.PCI0.RP01.TBST ()
                        }

                        If (\_SB.PCI0.RP01.IRST)
                        {
                            Local0 = BMIE /* \_SB_.PCI0.RP01.UPSB.DSB0.NHI0.BMIE */
                            Local1 = SBAR /* \_SB_.PCI0.RP01.UPSB.DSB0.NHI0.SBAR */
                            Concatenate ("IRST Orig vals - BMIE", BMIE, Debug)
                            Concatenate ("IRST Orig vals - SBAR", SBAR, Debug)
                            BMIE = SCMD /* \_SB_.PCI0.RP01.UPSB.DSB0.NHI0.SCMD */
                            BAR1 = SBAR /* \_SB_.PCI0.RP01.UPSB.DSB0.NHI0.SBAR */
                            ICMR (Zero)
                            BMIE = Local0
                            SBAR = Local1
                            \_SB.PCI0.RP01.IRST = Zero
                        }
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                        Debug = "TB:NHI0:_PS3"
                    }

                    Method (TRPE, 2, Serialized)
                    {
                        Debug = Concatenate ("TB:NHI0:TRPE called with Arg0: ", Arg0)
                        Debug = Concatenate ("TB:NHI0:TRPE called with Arg1: ", Arg1)
                        If ((Arg0 <= One))
                        {
                            If ((Arg0 == Zero))
                            {
                                \_SB.PCI0.RP01.PSTX = 0x03
                                \_SB.PCI0.RP01.LDXX = One
                                Local0 = (Timer + 0x00989680)
                                While ((Timer <= Local0))
                                {
                                    If ((\_SB.PCI0.RP01.LACR == One))
                                    {
                                        If ((\_SB.PCI0.RP01.LACT == Zero))
                                        {
                                            Break
                                        }
                                    }
                                    ElseIf ((\_SB.PCI0.RP01.UPSB.AVND == 0xFFFFFFFF))
                                    {
                                        Break
                                    }

                                    Sleep (0x0A)
                                }
                            }
                            Else
                            {
                                Local0 = Zero
                                If (Zero)
                                {
                                    \_SB.PCI0.RP01.PSTX = Zero
                                    While (One)
                                    {
                                        If ((\_SB.PCI0.RP01.LDXX == One))
                                        {
                                            \_SB.PCI0.RP01.LDXX = Zero
                                        }

                                        Local1 = Zero
                                        Local2 = (Timer + 0x00989680)
                                        While ((Timer <= Local2))
                                        {
                                            If ((\_SB.PCI0.RP01.LACR == Zero))
                                            {
                                                If ((\_SB.PCI0.RP01.LTRN != One))
                                                {
                                                    Break
                                                }
                                            }
                                            ElseIf (((\_SB.PCI0.RP01.LTRN != One) && (\_SB.PCI0.RP01.LACT == One)))
                                            {
                                                Break
                                            }

                                            Sleep (0x0A)
                                        }

                                        Sleep (Arg1)
                                        While ((Timer <= Local2))
                                        {
                                            If ((\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF))
                                            {
                                                Local1 = One
                                                Break
                                            }

                                            Sleep (0x0A)
                                        }

                                        If ((Local1 == One))
                                        {
                                            MABT = One
                                            Break
                                        }

                                        If ((Local0 == 0x04))
                                        {
                                            Return (Zero)
                                        }

                                        Local0++
                                        Sleep (0x03E8)
                                    }

                                    If ((\_SB.PCI0.RP01.CSPD != 0x03))
                                    {
                                        If ((\_SB.PCI0.RP01.SSPD == 0x03))
                                        {
                                            If ((\_SB.PCI0.RP01.UPSB.SSPD == 0x03))
                                            {
                                                If ((\_SB.PCI0.RP01.TSPD != 0x03))
                                                {
                                                    \_SB.PCI0.RP01.TSPD = 0x03
                                                }

                                                If ((\_SB.PCI0.RP01.UPSB.TSPD != 0x03))
                                                {
                                                    \_SB.PCI0.RP01.UPSB.TSPD = 0x03
                                                }

                                                \_SB.PCI0.RP01.LRTN = One
                                                Local2 = (Timer + 0x00989680)
                                                While ((Timer <= Local2))
                                                {
                                                    If ((\_SB.PCI0.RP01.LACR == Zero))
                                                    {
                                                        If (((\_SB.PCI0.RP01.LTRN != One) && (\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF)))
                                                        {
                                                            Local1 = One
                                                            Break
                                                        }
                                                    }
                                                    ElseIf ((((\_SB.PCI0.RP01.LTRN != One) && (\_SB.PCI0.RP01.LACT == One)) && 
                                                        (\_SB.PCI0.RP01.UPSB.AVND != 0xFFFFFFFF)))
                                                    {
                                                        Local1 = One
                                                        Break
                                                    }

                                                    Sleep (0x0A)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Return (Zero)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (OSDW ())
                        {
                            Local0 = Package (0x17)
                                {
                                    "AAPL,slot-name", 
                                    Buffer (0x0C)
                                    {
                                        "Thunderbolt"
                                    }, 

                                    "name", 
                                    Buffer (0x24)
                                    {
                                        "Alpine Ridge Thunderbolt Controller"
                                    }, 

                                    "model", 
                                    Buffer (0x2D)
                                    {
                                        "Intel JHL6340 Alpine Ridge Thunderbolt 3 NHI"
                                    }, 

                                    "device_type", 
                                    Buffer (0x17)
                                    {
                                        "Thunderbolt-Controller"
                                    }, 

                                    "ThunderboltDROM", 
                                    Buffer (0x6B)
                                    {
                                        /* 0000 */  0xCF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0,  // ........
                                        /* 0008 */  0x00, 0x96, 0x83, 0xE1, 0x68, 0x01, 0x5E, 0x00,  // ....h.^.
                                        /* 0010 */  0xF0, 0x00, 0xCA, 0x82, 0x01, 0x2E, 0x08, 0x81,  // ........
                                        /* 0018 */  0x80, 0x02, 0x80, 0x00, 0x00, 0x00, 0x08, 0x82,  // ........
                                        /* 0020 */  0x90, 0x01, 0x80, 0x00, 0x00, 0x00, 0x02, 0xC3,  // ........
                                        /* 0028 */  0x02, 0xC4, 0x02, 0xC5, 0x0B, 0x86, 0x20, 0x01,  // ...... .
                                        /* 0030 */  0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,  // .d......
                                        /* 0038 */  0x87, 0x80, 0x05, 0x88, 0x50, 0x40, 0x00, 0x05,  // ....P@..
                                        /* 0040 */  0x89, 0x50, 0x00, 0x00, 0x05, 0x8A, 0x50, 0x00,  // .P....P.
                                        /* 0048 */  0x00, 0x02, 0xCB, 0x0A, 0x01, 0x48, 0x50, 0x20,  // .....HP 
                                        /* 0050 */  0x49, 0x6E, 0x63, 0x2E, 0x00, 0x16, 0x02, 0x48,  // Inc....H
                                        /* 0058 */  0x50, 0x20, 0x45, 0x6C, 0x69, 0x74, 0x65, 0x5F,  // P Elite_
                                        /* 0060 */  0x78, 0x32, 0x5F, 0x31, 0x30, 0x31, 0x32, 0x5F,  // x2_1012_
                                        /* 0068 */  0x47, 0x32, 0x00                                 // G2.
                                    }, 

                                    "ThunderboltConfig", 
                                    Buffer (0x20)
                                    {
                                        /* 0000 */  0x00, 0x02, 0x1C, 0x00, 0x02, 0x00, 0x05, 0x03,  // ........
                                        /* 0008 */  0x01, 0x00, 0x04, 0x00, 0x05, 0x03, 0x02, 0x00,  // ........
                                        /* 0010 */  0x03, 0x00, 0x05, 0x03, 0x01, 0x00, 0x00, 0x00,  // ........
                                        /* 0018 */  0x03, 0x03, 0x02, 0x00, 0x01, 0x00, 0x02, 0x00   // ........
                                    }, 

                                    "TBTDPLowToHigh", 
                                    Buffer (One)
                                    {
                                         0x01, 0x00, 0x00, 0x00                           // ....
                                    }, 

                                    "TBTFlags", 
                                    Buffer (0x04)
                                    {
                                         0x03, 0x00, 0x00, 0x00                           // ....
                                    }, 

                                    "sscOffset", 
                                    Buffer (0x02)
                                    {
                                         0x00, 0x07                                       // ..
                                    }, 

                                    "linkDetails", 
                                    Buffer (0x08)
                                    {
                                         0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00   // ........
                                    }, 

                                    "power-save", 
                                    One, 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Return (Zero)
                    }

                    Method (SXFP, 1, Serialized)
                    {
                        Debug = "TB:NHI0:SXFP"
                        If ((Arg0 == Zero))
                        {
                            \_SB.PCI0.RP01.TBON ()
                            ICMR (One)
                            Debug = "Sending GO2SX"
                            \_SB.PCI0.RP01.SCMD (0x02, Zero)
                            Sleep (0x64)
                        }
                    }

                    Name (XRTE, Zero)
                    Method (XRST, 1, Serialized)
                    {
                        Debug = "TB:NHI0:XRST - called with arg:"
                        Debug = Arg0
                        If ((Arg0 == Zero))
                        {
                            XRTE = Zero
                            If ((XLTP == Zero))
                            {
                                Debug = "TB:NHI0:XRST - TRPE L23 Detect"
                                \_SB.PCI0.RP01.L23D = One
                                Sleep (One)
                                Local2 = Zero
                                While (\_SB.PCI0.RP01.L23D)
                                {
                                    If ((Local2 > 0x04))
                                    {
                                        Break
                                    }

                                    Sleep (One)
                                    Local2++
                                }

                                Debug = "TB:NHI0:XRST - TRPE Clear LEDM"
                                \_SB.PCI0.RP01.LEDX = Zero
                            }
                        }
                        ElseIf ((Arg0 == One))
                        {
                            XRTE = One
                            If ((XLTP == Zero))
                            {
                                \_SB.PCI0.RP01.PSTX = 0x03
                                If ((\_SB.PCI0.RP01.LACR == One))
                                {
                                    If ((\_SB.PCI0.RP01.LACT == Zero))
                                    {
                                        Debug = "TB:NHI0:XRST: Root Port LDIS - Skipping L23 Ready Request"
                                    }
                                    Else
                                    {
                                        Debug = "TB:NHI0:XRST Root Port Requesting L23 Ready"
                                        \_SB.PCI0.RP01.L23X = One
                                        Sleep (One)
                                        Local2 = Zero
                                        While ((\_SB.PCI0.RP01.L23X == One))
                                        {
                                            If ((Local2 > 0x04))
                                            {
                                                Break
                                            }

                                            Sleep (One)
                                            Local2++
                                        }

                                        Debug = "TB:NHI0:XRST Root Port Set DMI L1 EN"
                                        \_SB.PCI0.RP01.LEDX = One
                                    }
                                }

                                Sleep (0x4B)
                            }
                        }
                    }
                }
            }

            Device (DSB1)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_SUN, One)  // _SUN: Slot User Number
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    Offset (0x08), 
                    Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                    Offset (0x0C), 
                    SSPD,   4, 
                        ,   16, 
                    LACR,   1, 
                    Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                    Offset (0x12), 
                    CSPD,   4, 
                    CWDT,   6, 
                        ,   1, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                    Offset (0x14), 
                    Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    PSTA,   2
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Device (UPS0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                    Field (ARE0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (OSDW ())
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Device (DSB0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1, 
                            Offset (0x3E), 
                                ,   6, 
                            SBRS,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB0.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (DEV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }
                        }
                    }

                    Device (DSB3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB3.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB3.UPS0.DSB0.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB3.UPS0.DSB3.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB3.UPS0.DSB4.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB3.UPS0.DSB5.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB3.UPS0.DSB6.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB4)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB4.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB4.UPS0.DSB0.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB4.UPS0.DSB3.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB4.UPS0.DSB4.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB4.UPS0.DSB5.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB4.UPS0.DSB6.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB5)
                    {
                        Name (_ADR, 0x00050000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB5.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Device (DSB6)
                    {
                        Name (_ADR, 0x00060000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.UPS0.DSB6.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Device (DSB2)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Name (RUSB, One)
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    Offset (0x08), 
                    Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                    Offset (0x0C), 
                    SSPD,   4, 
                        ,   16, 
                    LACR,   1, 
                    Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                    Offset (0x12), 
                    CSPD,   4, 
                    CWDT,   6, 
                        ,   1, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                    Offset (0x14), 
                    Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    PSTA,   2
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB2.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (IIP3, Zero)
                Name (PRSR, Zero)
                Name (PCIA, One)
                Method (PCEU, 0, Serialized)
                {
                    Debug = "TB:DSB2:PCEU"
                    \_SB.PCI0.RP01.UPSB.DSB2.PRSR = Zero
                    Debug = "TB:DSB2:PCEU - Put upstream bridge back into D0 "
                    If ((\_SB.PCI0.RP01.UPSB.DSB2.PSTA != Zero))
                    {
                        Debug = "TB:DSB2:PCEU - Exit D0, restored = true"
                        \_SB.PCI0.RP01.UPSB.DSB2.PRSR = One
                        \_SB.PCI0.RP01.UPSB.DSB2.PSTA = Zero
                    }

                    If ((\_SB.PCI0.RP01.UPSB.DSB2.LDIS == One))
                    {
                        Debug = "TB:DSB2:PCEU - Clear link disable on upstream bridge"
                        Debug = "TB:DSB2:PCEU - Clear link disable, restored = true"
                        \_SB.PCI0.RP01.UPSB.DSB2.PRSR = One
                        \_SB.PCI0.RP01.UPSB.DSB2.LDIS = Zero
                    }
                }

                Method (PCDA, 0, Serialized)
                {
                    Debug = "TB:DSB2:PCDA"
                    If ((\_SB.PCI0.RP01.UPSB.DSB2.POFX () != Zero))
                    {
                        \_SB.PCI0.RP01.UPSB.DSB2.PCIA = Zero
                        Debug = "TB:DSB2:PCDA - Put upstream bridge into D3"
                        \_SB.PCI0.RP01.UPSB.DSB2.PSTA = 0x03
                        Debug = "TB:DSB2:PCDA - Set link disable on upstream bridge"
                        \_SB.PCI0.RP01.UPSB.DSB2.LDIS = One
                        Local5 = (Timer + 0x00989680)
                        While ((Timer <= Local5))
                        {
                            Debug = "TB:DSB2:PCDA - Wait for link to drop..."
                            If ((\_SB.PCI0.RP01.UPSB.DSB2.LACR == One))
                            {
                                If ((\_SB.PCI0.RP01.UPSB.DSB2.LACT == Zero))
                                {
                                    Debug = "TB:DSB2:PCDA - No link activity"
                                    Break
                                }
                            }
                            ElseIf ((\_SB.PCI0.RP01.UPSB.DSB2.XHC2.AVND == 0xFFFFFFFF))
                            {
                                Debug = "TB:DSB2:PCDA - VID/DID is -1"
                                Break
                            }

                            Sleep (0x0A)
                        }

                        Debug = "TB:DSB2:PCDA - Request USB-GPIO to be disabled"
                        \_SB.PCI0.RP01.GXCI = Zero
                        \_SB.PCI0.RP01.UGIO ()
                    }
                    Else
                    {
                        Debug = "TB:DSB2:PCDA - Not disabling"
                    }

                    \_SB.PCI0.RP01.UPSB.DSB2.IIP3 = One
                }

                Method (POFX, 0, Serialized)
                {
                    Debug = Concatenate ("TB:DSB2:POFX - Result (!RUSB): ", !\_SB.PCI0.RP01.RUSB)
                    Return (!\_SB.PCI0.RP01.RUSB)
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    Debug = "TB:DSB2:_PS0"
                    If (OSDW ())
                    {
                        PCEU ()
                        \_SB.PCI0.RP01.TBST ()
                    }
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    Debug = "TB:DSB2:_PS3"
                    If (OSDW ())
                    {
                        PCDA ()
                        \_SB.PCI0.RP01.TBST ()
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (OSDW ())
                    {
                        If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
                        {
                            Local0 = Package (0x02)
                                {
                                    "PCIHotplugCapable", 
                                    Zero
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (DSB3)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    Offset (0x08), 
                    Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                    Offset (0x0C), 
                    SSPD,   4, 
                        ,   16, 
                    LACR,   1, 
                    Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                    Offset (0x12), 
                    CSPD,   4, 
                    CWDT,   6, 
                        ,   1, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                    Offset (0x14), 
                    Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    PSTA,   2
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Device (UPS0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                    Field (ARE0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (OSDW ())
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Device (DSB0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1, 
                            Offset (0x3E), 
                                ,   6, 
                            SBRS,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB0.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (DEV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }
                        }
                    }

                    Device (DSB3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB3.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB3.UPS0.DSB0.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB3.UPS0.DSB3.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB3.UPS0.DSB4.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB3.UPS0.DSB5.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB3.UPS0.DSB6.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB4)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB4.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB4.UPS0.DSB0.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB4.UPS0.DSB3.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB4.UPS0.DSB4.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB4.UPS0.DSB5.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB4.UPS0.DSB6.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB5)
                    {
                        Name (_ADR, 0x00050000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB5.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Device (DSB6)
                    {
                        Name (_ADR, 0x00060000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB3.UPS0.DSB6.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Device (DSB4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
                Name (_SUN, 0x02)  // _SUN: Slot User Number
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    Offset (0x08), 
                    Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                    Offset (0x0C), 
                    SSPD,   4, 
                        ,   16, 
                    LACR,   1, 
                    Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                    Offset (0x12), 
                    CSPD,   4, 
                    CWDT,   6, 
                        ,   1, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                    Offset (0x14), 
                    Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    PSTA,   2
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Device (UPS0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                    Field (ARE0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (OSDW ())
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Device (DSB0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1, 
                            Offset (0x3E), 
                                ,   6, 
                            SBRS,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB0.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (DEV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }
                        }
                    }

                    Device (DSB3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB3.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB3.UPS0.DSB0.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB3.UPS0.DSB3.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB3.UPS0.DSB4.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB3.UPS0.DSB5.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB3.UPS0.DSB6.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB4)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB4.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB4.UPS0.DSB0.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB4.UPS0.DSB3.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB4.UPS0.DSB4.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB4.UPS0.DSB5.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB4.UPS0.DSB6.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB5)
                    {
                        Name (_ADR, 0x00050000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB5.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Device (DSB6)
                    {
                        Name (_ADR, 0x00060000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.UPS0.DSB6.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Device (DSB5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    Offset (0x08), 
                    Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                    Offset (0x0C), 
                    SSPD,   4, 
                        ,   16, 
                    LACR,   1, 
                    Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                    Offset (0x12), 
                    CSPD,   4, 
                    CWDT,   6, 
                        ,   1, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                    Offset (0x14), 
                    Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    PSTA,   2
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Device (UPS0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                    Field (ARE0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (OSDW ())
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Device (DSB0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1, 
                            Offset (0x3E), 
                                ,   6, 
                            SBRS,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB0.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (DEV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }
                        }
                    }

                    Device (DSB3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB3.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB3.UPS0.DSB0.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB3.UPS0.DSB3.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB3.UPS0.DSB4.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB3.UPS0.DSB5.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB3.UPS0.DSB6.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB4)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB4.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (One)
                                }

                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB4.UPS0.DSB0.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB4.UPS0.DSB3.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB4.UPS0.DSB4.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (One)
                                        }

                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB4.UPS0.DSB5.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB4.UPS0.DSB6.SECB */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (One)
                                    }

                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB5)
                    {
                        Name (_ADR, 0x00050000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB5.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Device (DSB6)
                    {
                        Name (_ADR, 0x00060000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB5.UPS0.DSB6.SECB */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Device (DSB6)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    Offset (0x08), 
                    Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                    Offset (0x0C), 
                    SSPD,   4, 
                        ,   16, 
                    LACR,   1, 
                    Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                    Offset (0x12), 
                    CSPD,   4, 
                    CWDT,   6, 
                        ,   1, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                    Offset (0x14), 
                    Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    PSTA,   2
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB6.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
                {
                    Local0 = Package (0x02)
                        {
                            "PCI-Thunderbolt", 
                            One
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Return (Zero)
            }

            Scope (DSB2)
            {
                Device (XHC2)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (SDPC, Zero)
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (PCED, 0, Serialized)
                    {
                        Debug = "TB:DSB2:XHC2:PCED"
                        Debug = "TB:DSB2:XHC2:PCED - Request USB-GPIO to be enabled & force TBT-GPIO"
                        \_SB.PCI0.RP01.GXCI = One
                        If ((\_SB.PCI0.RP01.UGIO () != Zero))
                        {
                            Debug = "TB:DSB2:XHC2:PCED - GPIOs changed, restored = true"
                            ^^PRSR = One
                        }

                        Local5 = (Timer + 0x00989680)
                        Debug = Concatenate ("TB:DSB2:XHC2:PCED - restored flag, THUNDERBOLT_PCI_LINK_MGMT_DEVICE.PRSR: ", ^^PRSR)
                        If ((^^PRSR != Zero))
                        {
                            Debug = "TB:DSB2:XHC2:PCED - Wait for power up"
                            Debug = "TB:DSB2:XHC2:PCED - Wait for downstream bridge to appear"
                            Local5 = (Timer + 0x00989680)
                            While ((Timer <= Local5))
                            {
                                Debug = "TB:DSB2:XHC2:PCED - Wait for link training..."
                                If ((^^LACR == Zero))
                                {
                                    If ((^^LTRN != One))
                                    {
                                        Debug = "TB:DSB2:XHC2:PCED - Link training cleared"
                                        Break
                                    }
                                }
                                ElseIf (((^^LTRN != One) && (^^LACT == One)))
                                {
                                    Debug = "TB:DSB2:XHC2:PCED - Link training cleared and link is active"
                                    Break
                                }

                                Sleep (0x0A)
                            }

                            Sleep (0x96)
                        }

                        ^^PRSR = Zero
                        While ((Timer <= Local5))
                        {
                            Debug = "TB:DSB2:XHC2:PCED - Wait for config space..."
                            If ((AVND != 0xFFFFFFFF))
                            {
                                Debug = "TB:DSB2:XHC2:PCED - DSB2 Up - Read VID/DID"
                                ^^PCIA = One
                                Break
                            }

                            Sleep (0x0A)
                        }

                        ^^IIP3 = Zero
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x04)
                            {
                                "USBBusNumber", 
                                Zero, 
                                "AAPL,xhci-clock-id", 
                                One
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x6D, 
                            0x03
                        })
                    }

                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        Debug = "TB:DSB2:XHC2:_PS0"
                        Sleep (0xC8)
                        If (OSDW ())
                        {
                            PCED ()
                            If (CondRefOf (\_SB.PCI0.RP01.TBST))
                            {
                                \_SB.PCI0.RP01.TBST ()
                            }
                        }
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                        Debug = "TB:DSB2:XHC2:_PS3"
                        Sleep (0xC8)
                        If (OSDW ())
                        {
                            If (CondRefOf (\_SB.PCI0.RP01.TBST))
                            {
                                \_SB.PCI0.RP01.TBST ()
                            }
                        }
                    }

                    Method (RTPC, 1, Serialized)
                    {
                        Debug = Concatenate ("TB:DSB2:XHC2:RTPC called with Arg0: ", Arg0)
                        Debug = Concatenate ("TB:DSB2:XHC2:RTPC setting RUSB to: ", Arg0)
                        ^^RUSB = Arg0
                        Return (Zero)
                    }

                    Method (MODU, 0, Serialized)
                    {
                        If (CondRefOf (\_SB.PCI0.RP01.UPSB.MDUV))
                        {
                            Debug = Concatenate ("TB:DSB2:XHC2:MODU - MDUV - return: ", \_SB.PCI0.RP01.UPSB.MDUV)
                            Return (\_SB.PCI0.RP01.UPSB.MDUV)
                        }
                        Else
                        {
                            Debug = Concatenate ("TB:DSB2:XHC2:MODU - return: ", ^^RUSB)
                            Return (^^RUSB) /* \_SB_.PCI0.RP01.UPSB.DSB2.RUSB */
                        }
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Device (HS01)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x1,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "UNKNOWN",
                                    PLD_VerticalPosition   = "UPPER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "UNKNOWN",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x0,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0,
                                    PLD_VerticalOffset     = 0x0,
                                    PLD_HorizontalOffset   = 0x0)

                            })
                            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                            {
                                Local0 = Package (0x02)
                                    {
                                        "UsbCPortNumber", 
                                        One
                                    }
                                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                                Return (Local0)
                            }
                        }

                        Device (SSP1)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x1,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "UNKNOWN",
                                    PLD_VerticalPosition   = "UPPER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "UNKNOWN",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x0,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0,
                                    PLD_VerticalOffset     = 0x0,
                                    PLD_HorizontalOffset   = 0x0)

                            })
                            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                            {
                                Local0 = Package (0x02)
                                    {
                                        "UsbCPortNumber", 
                                        One
                                    }
                                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                                Return (Local0)
                            }
                        }
                    }
                }
            }
        }

        Method (TBON, 0, Serialized)
        {
            Debug = "TBON"
            If (\_GPE.TFPS ())
            {
                Debug = "Already on"
                Return (Zero)
            }

            TWIN = Zero
            \_SB.TBFP (One)
            Debug = "Wait for TB root power up"
            Local1 = (Timer + 0x005B8D80)
            While (((Timer < Local1) && FFTB (TBSE)))
            {
                Sleep (One)
            }

            Debug = "Sending OSUP handshake"
            Acquire (OSUM, 0xFFFF)
            Local0 = \_GPE.TBFF (TBSE)
            Release (OSUM)
            Concatenate ("TBFF", Local0, Debug)
            Debug = "TB hardware init sequence"
            SOHP = Zero
            TNAT = One
            \_GPE.XTBT (TBSE, CPGN)
            Debug = "Waiting for controller to appear"
            OperationRegion (UPS0, SystemMemory, MMTB (TBSE), 0x04)
            Field (UPS0, DWordAcc, NoLock, Preserve)
            {
                UPV0,   32
            }

            Local1 = (Timer + 0x02FAF080)
            While (((Timer < Local1) && (UPV0 == 0xFFFFFFFF)))
            {
                Sleep (0x64)
            }

            If ((UPV0 != 0xFFFFFFFF))
            {
                Concatenate ("Seen controller", UPV0, Debug)
                Return (One)
            }
            Else
            {
                Debug = "Failed"
                Return (Zero)
            }
        }

        Method (TBOF, 0, Serialized)
        {
            Debug = "TBOF"
            If (\_GPE.TFPS ())
            {
                \_SB.TBFP (Zero)
                Return (One)
            }
            Else
            {
                Debug = "Already off"
                Return (Zero)
            }
        }
    }
}

