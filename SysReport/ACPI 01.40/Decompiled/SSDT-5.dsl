/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-5.aml, Tue Jan 18 23:05:32 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002456 (9302)
 *     Revision         0x01
 *     Checksum         0x9B
 *     OEM ID           "HP"
 *     OEM Table ID     "DETACHPC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 1, "HP", "DETACHPC", 0x00001000)
{
    External (_SB_.DCKD, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.AINT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GFX0.IUEH, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.IUER, IntObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.GBNT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.PTEN, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.UDTS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.VBPS, IntObj)
    External (_SB_.PCI0.RP08.PXSX, UnknownObj)
    External (_SB_.WMIV.CSD1, IntObj)
    External (_SB_.WMIV.GVWE, MethodObj)    // 2 Arguments
    External (BID2, FieldUnitObj)
    External (BID3, FieldUnitObj)
    External (BID4, FieldUnitObj)
    External (BID5, FieldUnitObj)
    External (BIDG, FieldUnitObj)
    External (BIES, IntObj)
    External (GTOS, MethodObj)    // 0 Arguments
    External (HEFE, IntObj)
    External (IUBE, IntObj)
    External (IUCE, IntObj)
    External (IUDE, IntObj)
    External (MDBG, MethodObj)    // 1 Arguments
    External (OSYS, IntObj)
    External (PB1E, IntObj)
    External (VBPS, IntObj)

    Method (VHBG, 1, Serialized)
    {
        If (CondRefOf (MDBG))
        {
            Return (MDBG (Arg0))
        }

        Return (Zero)
    }

    Scope (\_SB)
    {
        Scope (\_SB.PCI0.LPCB.EC0)
        {
            Device (BIND)
            {
                Name (_HID, "INT33D2" /* Intel GPIO Buttons */)  // _HID: Hardware ID
                Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (((IUBE & One) && (\GTOS () >= 0x09)))
                    {
                        If ((PB1E & One))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("dfbcf3c5-e7a5-44e6-9c1f-29c76f6e059c") /* Power Button Device */))
                    {
                        If ((Zero == ToInteger (Arg1)))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Case (One)
                                {
                                    If (((PB1E & One) == One))
                                    {
                                        Return (0x07)
                                    }

                                    Return (Zero)
                                }

                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Device (VGBI)
            {
                Name (_HID, EisaId ("INT33D6") /* Intel Virtual Buttons Device */)  // _HID: Hardware ID
                Name (VBDS, Zero)
                Name (ONTM, Zero)
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If ((\GTOS () == 0x09))
                    {
                        If (((BIES & 0x05) != Zero))
                        {
                            Return (0x0F)
                        }
                    }

                    If ((\GTOS () > 0x09))
                    {
                        If (((BIES & One) != Zero))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Method (VBDL, 0, Serialized)
                {
                    PB1E |= 0x20
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    If (((PB1E & One) == One))
                    {
                        \_SB.PCI0.LPCB.EC0.PTEN = One
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.PTEN = Zero
                    }

                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }

                Method (VGBS, 0, Serialized)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.GBIS = \_SB.PCI0.LPCB.EC0.VBPS /* External reference */
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                    If ((ONTM == Zero))
                    {
                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x10) == 0x10))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x04, One)
                        }

                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x40) == 0x40))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, One)
                        }

                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x80) == 0x80))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, One)
                        }

                        ONTM = One
                        BID3 = VBPS /* External reference */
                    }

                    Return (VBDS) /* \_SB_.PCI0.LPCB.EC0_.VGBI.VBDS */
                }

                Method (UPBT, 2, Serialized)
                {
                    Local0 = (One << Arg0)
                    If (Arg1)
                    {
                        VBDS |= Local0
                    }
                    Else
                    {
                        VBDS &= ~Local0
                    }
                }

                Method (GPBT, 1, Serialized)
                {
                    Local0 = (One << Arg0)
                    If (((\_SB.PCI0.LPCB.EC0.VGBI.VBDS & Local0) == Local0))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (PBIN, 0, Serialized)
                {
                    PB1E &= 0xFFFFFFDF
                }
            }
        }

        Scope (\_SB)
        {
            Device (HIDD)
            {
                Name (_HID, "INT33D5")  // _HID: Hardware ID
                Name (HBSY, Zero)
                Name (HIDX, Zero)
                Name (HMDE, Zero)
                Name (HRDY, Zero)
                Name (BTLD, Zero)
                Name (BTS1, Zero)
                Name (BTEN, Zero)
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (((\GTOS () == 0x09) && (HEFE == One)))
                    {
                        If ((BIES & 0x10))
                        {
                            If ((BIES & 0x0C))
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (((BIES & 0x08) != Zero))
                        {
                            Return (0x0F)
                        }
                    }

                    If (((\GTOS () > 0x09) && (HEFE == One)))
                    {
                        If (((BIES & 0x0C) != Zero))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Method (HDDM, 0, Serialized)
                {
                    Name (DPKG, Package (0x04)
                    {
                        0x11111111, 
                        0x22222222, 
                        0x33333333, 
                        0x44444444
                    })
                    Return (DPKG) /* \_SB_.HIDD.HDDM.DPKG */
                }

                Method (HDEM, 0, Serialized)
                {
                    HBSY = Zero
                    If ((HMDE == Zero))
                    {
                        Return (HIDX) /* \_SB_.HIDD.HIDX */
                    }

                    Return (HMDE) /* \_SB_.HIDD.HMDE */
                }

                Method (HDMM, 0, Serialized)
                {
                    Return (HMDE) /* \_SB_.HIDD.HMDE */
                }

                Method (HDSM, 1, Serialized)
                {
                    HRDY = Arg0
                    If ((Arg0 == Zero))
                    {
                        Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                        \_SB.PCI0.LPCB.EC0.PTEN = Zero
                        Release (\_SB.PCI0.LPCB.EC0.ECMX)
                    }
                }

                Method (HPEM, 1, Serialized)
                {
                    HBSY = One
                    If ((HMDE == Zero))
                    {
                        HIDX = Arg0
                    }
                    Else
                    {
                        HIDX = Arg0
                    }

                    Notify (\_SB.HIDD, 0xC0) // Hardware-Specific
                    Local0 = Zero
                    While (((Local0 < 0xFA) && HBSY))
                    {
                        Sleep (0x04)
                        Local0++
                    }

                    If ((HBSY == One))
                    {
                        HBSY = Zero
                        HIDX = Zero
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (BTNL, 0, Serialized)
                {
                    \_SB.HIDD.BTLD = One
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    If (((PB1E & One) == One))
                    {
                        \_SB.PCI0.LPCB.EC0.PTEN = One
                        BTS1 = 0x1F
                        BTEN = BTS1 /* \_SB_.HIDD.BTS1 */
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.PTEN = Zero
                        \_SB.HIDD.BTS1 = Zero
                    }

                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }

                Method (BTNE, 1, Serialized)
                {
                    BTS1 = ((Arg0 & 0x1E) | One)
                    BTEN = BTS1 /* \_SB_.HIDD.BTS1 */
                    BID5 = BTEN /* \_SB_.HIDD.BTEN */
                }

                Method (BTNS, 0, Serialized)
                {
                    BTS1 = BTEN /* \_SB_.HIDD.BTEN */
                    BID4 = BTS1 /* \_SB_.HIDD.BTS1 */
                    Return (BTS1) /* \_SB_.HIDD.BTS1 */
                }

                Method (BTNC, 0, Serialized)
                {
                    Return (0x1F)
                }
            }

            Method (PWPR, 0, Serialized)
            {
                If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                {
                    Notify (\_SB.HIDD, 0xCE) // Hardware-Specific
                }
                ElseIf ((PB1E & 0x20))
                {
                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC0) // Hardware-Specific
                }
                ElseIf (CondRefOf (\_SB.PCI0.GFX0.IUER))
                {
                    Local0 = \_SB.PCI0.GFX0.IUER /* External reference */
                    \_SB.PCI0.GFX0.IUER = (Local0 & 0xC0)
                    Local0 = \_SB.PCI0.GFX0.IUER /* External reference */
                    \_SB.PCI0.GFX0.IUER = (Local0 | One)
                }
            }

            Method (PWRR, 0, Serialized)
            {
                If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                {
                    Notify (\_SB.HIDD, 0xCF) // Hardware-Specific
                }
                ElseIf ((PB1E & 0x20))
                {
                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                }
                ElseIf (CondRefOf (\_SB.PCI0.GFX0.IUER))
                {
                    Local0 = \_SB.PCI0.GFX0.IUER /* External reference */
                    \_SB.PCI0.GFX0.IUER = (Local0 & 0xC0)
                }
            }
        }

        Scope (\_SB)
        {
            Device (CIND)
            {
                Name (_HID, "INT33D3" /* Intel GPIO Buttons */)  // _HID: Hardware ID
                Name (_CID, "PNP0C60" /* Display Sensor Device */)  // _CID: Compatible ID
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (((IUCE & One) && (\GTOS () >= 0x08)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Scope (\_SB)
        {
            Device (DIND)
            {
                Name (_HID, "INT33D4" /* Intel GPIO Buttons */)  // _HID: Hardware ID
                Name (_CID, "PNP0C70" /* Dock Sensor Device */)  // _CID: Compatible ID
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (((IUDE & One) && (\GTOS () >= 0x08)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Scope (\_SB.PCI0.LPCB.EC0)
        {
            Name (COVS, Zero)
            Name (DOKS, Zero)
            Name (BUCG, Zero)
            Name (GBIS, Zero)
            Name (BUCW, Zero)
            Method (_Q30, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                BIDG = 0x30000000
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.GBIS = \_SB.PCI0.LPCB.EC0.VBPS /* External reference */
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, Zero))
                    {
                        If ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero) == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (Zero, One)
                            \_SB.PWPR ()
                            BIDG |= One
                            If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (One))
                            {
                                \_SB.PCI0.LPCB.EC0.BUCG = One
                            }

                            If ((\GTOS () == 0x09))
                            {
                                If (((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x02) == Zero) && (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x03) == Zero)))
                                {
                                    \_SB.PCI0.LPCB.EC0.BUCW = One
                                }
                            }
                        }
                    }

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, One))
                    {
                        If ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (One) == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (One, One)
                            If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                            {
                                Notify (\_SB.HIDD, 0xC2) // Hardware-Specific
                            }
                            ElseIf ((PB1E & 0x20))
                            {
                                Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC2) // Hardware-Specific
                            }
                            ElseIf ((\_SB.HIDD.HRDY == One))
                            {
                                \_SB.HIDD.HPEM (One)
                            }
                            Else
                            {
                                \_SB.PCI0.GFX0.IUEH (One)
                            }

                            BIDG |= 0x02
                        }
                    }

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x02))
                    {
                        If (NAnd ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero) || \_SB.PCI0.LPCB.EC0.VGBI.GPBT (One)), \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x02)))
                        {
                            If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                            {
                                \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x02, One)
                                If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                                {
                                    Notify (\_SB.HIDD, 0xC4) // Hardware-Specific
                                }
                                ElseIf ((PB1E & 0x20))
                                {
                                    If ((\GTOS () == 0x09))
                                    {
                                        If (BUCW)
                                        {
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                                            Sleep (0x64)
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC2) // Hardware-Specific
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC6) // Hardware-Specific
                                            Sleep (0x0A)
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC3) // Hardware-Specific
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC7) // Hardware-Specific
                                        }
                                        Else
                                        {
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC4) // Hardware-Specific
                                        }
                                    }
                                    Else
                                    {
                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC4) // Hardware-Specific
                                    }
                                }
                                ElseIf (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                                {
                                    \_SB.PCI0.GFX0.IUEH (0x02)
                                }

                                BIDG |= 0x04
                                If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.BUCG = One
                                    If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                                    {
                                        Notify (\_SB.HIDD, 0xCF) // Hardware-Specific
                                        Notify (\_SB.HIDD, 0xC5) // Hardware-Specific
                                    }
                                    ElseIf ((PB1E & 0x20))
                                    {
                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC5) // Hardware-Specific
                                    }

                                    BIDG |= 0x0100
                                }
                                ElseIf (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (One))
                                {
                                    \_SB.PCI0.LPCB.EC0.BUCG = One
                                }
                            }
                        }
                    }

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x03))
                    {
                        If (NAnd ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero) || \_SB.PCI0.LPCB.EC0.VGBI.GPBT (One)), \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x03)))
                        {
                            If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                            {
                                \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x03, One)
                                If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                                {
                                    Notify (\_SB.HIDD, 0xC6) // Hardware-Specific
                                }
                                ElseIf ((PB1E & 0x20))
                                {
                                    If ((\GTOS () == 0x09))
                                    {
                                        If (BUCW)
                                        {
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                                            Sleep (0x64)
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC2) // Hardware-Specific
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC0) // Hardware-Specific
                                            Sleep (0x0A)
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC3) // Hardware-Specific
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                                        }
                                        Else
                                        {
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC6) // Hardware-Specific
                                        }
                                    }
                                    Else
                                    {
                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC6) // Hardware-Specific
                                    }
                                }
                                ElseIf (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                                {
                                    \_SB.PCI0.GFX0.IUEH (0x03)
                                }

                                BIDG |= 0x08
                                If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.BUCG = One
                                    If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                                    {
                                        Notify (\_SB.HIDD, 0xCF) // Hardware-Specific
                                        Notify (\_SB.HIDD, 0xC7) // Hardware-Specific
                                    }
                                    ElseIf ((PB1E & 0x20))
                                    {
                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC7) // Hardware-Specific
                                    }

                                    BIDG |= 0x0200
                                }
                                ElseIf (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (One))
                                {
                                    \_SB.PCI0.LPCB.EC0.BUCG = One
                                }
                            }
                        }
                    }

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x04))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x04, One)
                        If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                        {
                            Notify (\_SB.HIDD, 0xC8) // Hardware-Specific
                        }
                        ElseIf ((PB1E & 0x20))
                        {
                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC8) // Hardware-Specific
                        }
                        ElseIf (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                        {
                            \_SB.PCI0.GFX0.IUEH (0x04)
                        }

                        BIDG |= 0x10
                    }

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x06))
                    {
                        If ((\GTOS () >= 0x09))
                        {
                            If ((PB1E & 0x20))
                            {
                                If ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x06) == Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, One)
                                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xCD) // Hardware-Specific
                                    BIDG |= 0x20
                                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.UDTS))
                                    {
                                        \_SB.PCI0.LPCB.EC0.UDTS ()
                                    }
                                }
                            }
                        }
                        ElseIf ((\GTOS () == 0x08))
                        {
                            If (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                            {
                                If ((\_SB.PCI0.LPCB.EC0.COVS == Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.COVS = One
                                    \_SB.PCI0.GFX0.IUEH (0x06)
                                    BIDG |= 0x20
                                }
                            }
                        }
                        ElseIf ((\_SB.PCI0.LPCB.EC0.COVS == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.COVS = One
                            \_SB.WMIV.GVWE (One, Zero)
                            BIDG |= 0x20
                        }
                    }

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x07))
                    {
                        If ((\GTOS () >= 0x09))
                        {
                            If ((PB1E & 0x20))
                            {
                                If ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x07) == Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, One)
                                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xCA) // Hardware-Specific
                                    BIDG |= 0x40
                                }
                            }
                        }
                        ElseIf ((\GTOS () == 0x08))
                        {
                            If (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                            {
                                If ((\_SB.PCI0.LPCB.EC0.DOKS == Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.DOKS = One
                                    \_SB.PCI0.GFX0.IUEH (0x07)
                                    BIDG |= 0x40
                                }
                            }
                        }
                        ElseIf ((\_SB.PCI0.LPCB.EC0.DOKS == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.DOKS = One
                            \_SB.WMIV.GVWE (One, Zero)
                            BIDG |= 0x40
                        }
                    }
                }
            }

            Method (_Q31, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                BID2 = 0x31000000
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.GBIS = \_SB.PCI0.LPCB.EC0.VBPS /* External reference */
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, Zero) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (Zero, Zero)
                        If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                        {
                            \_SB.PWRR ()
                        }

                        BID2 |= One
                    }

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, One) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (One)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (One, Zero)
                        If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                        {
                            Notify (\_SB.HIDD, 0xC3) // Hardware-Specific
                        }
                        ElseIf ((PB1E & 0x20))
                        {
                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC3) // Hardware-Specific
                        }

                        BID2 |= 0x02
                    }

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x02) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x02)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x02, Zero)
                        If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                        {
                            If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                            {
                                Notify (\_SB.HIDD, 0xC5) // Hardware-Specific
                            }
                            ElseIf ((PB1E & 0x20))
                            {
                                Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC5) // Hardware-Specific
                            }

                            BID2 |= 0x04
                        }
                    }

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x03) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x03)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x03, Zero)
                        If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                        {
                            If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                            {
                                Notify (\_SB.HIDD, 0xC7) // Hardware-Specific
                            }
                            ElseIf ((PB1E & 0x20))
                            {
                                Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC7) // Hardware-Specific
                            }

                            BID2 |= 0x08
                        }
                    }

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x04) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x04)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x04, Zero)
                        If (((OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                        {
                            Notify (\_SB.HIDD, 0xC9) // Hardware-Specific
                        }
                        ElseIf ((PB1E & 0x20))
                        {
                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC9) // Hardware-Specific
                        }

                        BID2 |= 0x10
                    }

                    If ((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x06) == Zero))
                    {
                        If ((\GTOS () >= 0x09))
                        {
                            If ((PB1E & 0x20))
                            {
                                If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x06))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, Zero)
                                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xCC) // Hardware-Specific
                                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.UDTS))
                                    {
                                        \_SB.PCI0.LPCB.EC0.UDTS ()
                                    }

                                    BID2 |= 0x20
                                }
                            }
                        }
                        ElseIf ((\GTOS () == 0x08))
                        {
                            If (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                            {
                                If ((\_SB.PCI0.LPCB.EC0.COVS == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.COVS = Zero
                                    \_SB.PCI0.GFX0.IUEH (0x06)
                                    BID2 |= 0x20
                                }
                            }
                        }
                        ElseIf ((\_SB.PCI0.LPCB.EC0.COVS == One))
                        {
                            \_SB.PCI0.LPCB.EC0.COVS = Zero
                            \_SB.WMIV.GVWE (One, Zero)
                            BID2 |= 0x20
                        }
                    }

                    If ((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x07) == Zero))
                    {
                        If ((\GTOS () >= 0x09))
                        {
                            If ((PB1E & 0x20))
                            {
                                If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x07))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, Zero)
                                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xCB) // Hardware-Specific
                                    BID2 |= 0x40
                                }
                            }
                        }
                        ElseIf ((\GTOS () == 0x08))
                        {
                            If (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                            {
                                If ((\_SB.PCI0.LPCB.EC0.DOKS == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.DOKS = Zero
                                    \_SB.PCI0.GFX0.IUEH (0x07)
                                    BID2 |= 0x40
                                }
                            }
                        }
                        ElseIf ((\_SB.PCI0.LPCB.EC0.DOKS == One))
                        {
                            \_SB.PCI0.LPCB.EC0.DOKS = Zero
                            \_SB.WMIV.GVWE (One, Zero)
                            BID2 |= 0x40
                        }
                    }

                    If (\_SB.PCI0.LPCB.EC0.BUCG)
                    {
                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x0F) == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.BUCG = Zero
                        }
                    }

                    If (\_SB.PCI0.LPCB.EC0.BUCW)
                    {
                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x0F) == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.BUCW = Zero
                        }
                    }
                }
            }
        }

        Scope (\_SB)
        {
            Method (TEPC, 1, Serialized)
            {
                If ((Arg0 > Zero))
                {
                    If (\_SB.PCI0.LPCB.EC0.ECRG)
                    {
                        Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                        \_SB.PCI0.LPCB.EC0.PTEN = Zero
                        Release (\_SB.PCI0.LPCB.EC0.ECMX)
                    }
                }
            }

            Method (TEWC, 1, Serialized)
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    If (((PB1E & One) == One))
                    {
                        \_SB.PCI0.LPCB.EC0.PTEN = One
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.PTEN = Zero
                    }

                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }

                If (((Arg0 == 0x03) || (Arg0 == 0x04)))
                {
                    If (\_SB.PCI0.LPCB.EC0.ECRG)
                    {
                        Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                        \_SB.PCI0.LPCB.EC0.GBIS = \_SB.PCI0.LPCB.EC0.VBPS /* External reference */
                        Release (\_SB.PCI0.LPCB.EC0.ECMX)
                        If ((\GTOS () >= 0x08))
                        {
                            If (CondRefOf (\_SB.PCI0.LPCB.EC0.VGBI))
                            {
                                If ((\_SB.PCI0.LPCB.EC0.GBIS & 0x40))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, One)
                                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.UDTS))
                                    {
                                        \_SB.PCI0.LPCB.EC0.UDTS ()
                                    }
                                }
                                Else
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, Zero)
                                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.UDTS))
                                    {
                                        \_SB.PCI0.LPCB.EC0.UDTS ()
                                    }
                                }
                            }

                            If ((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x06) == One))
                            {
                                \_SB.PCI0.GFX0.IUER |= 0x40
                            }
                            Else
                            {
                                \_SB.PCI0.GFX0.IUER &= 0xFFFFFFBF
                            }

                            \_SB.PCI0.GFX0.AINT (0x06, Zero)
                        }

                        If ((\GTOS () <= 0x08))
                        {
                            \_SB.PCI0.LPCB.EC0.COVS = \_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x06)
                        }

                        If ((\GTOS () >= 0x08))
                        {
                            If (CondRefOf (\_SB.PCI0.LPCB.EC0.VGBI))
                            {
                                If ((\_SB.PCI0.LPCB.EC0.GBIS & 0x80))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, One)
                                }
                                Else
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, Zero)
                                }
                            }

                            If (\_SB.DCKD ())
                            {
                                \_SB.PCI0.GFX0.IUER |= 0x80
                            }
                            Else
                            {
                                \_SB.PCI0.GFX0.IUER &= 0xFFFFFF7F
                            }

                            \_SB.PCI0.GFX0.AINT (0x07, Zero)
                        }

                        If ((\GTOS () <= 0x08))
                        {
                            If (\_SB.DCKD ())
                            {
                                \_SB.PCI0.LPCB.EC0.DOKS = One
                            }
                            Else
                            {
                                \_SB.PCI0.LPCB.EC0.DOKS = Zero
                            }
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.VGBI.ONTM))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.ONTM = One
                    }
                }
            }
        }
    }
}

