/*
 * Battery patches supporting both BIOS Versions 01.25 and 01.39Rev.A
 * Implements Method _BIX on 01.25 to display cycle count.
 * 01.39Rev.A alreay has such feature.
 *
 * config.plist ACPI/Patch
 * Comment: Enable battery reading: M(_BIX) to XBIX
 * Count:   1
 * Find:    5F 42 49 58 00
 * Replace: 58 42 49 58 00
 *
 * Comment: Enable battery reading: M(BTIF) to XTIF in \_SB.PCI0.LPCB.EC0
 * Count:   1
 * Find:    42 54 49 46 09 79 01
 * Replace: 58 54 49 46 09 79 01
 *
 * Comment: Enable battery reading: M(BTIX) to XTIX in \_SB and \_SB.PCI0.LPCB.EC0
 * Count:   2
 * Find:    42 54 49 58 09
 * Replace: 58 54 49 58 09
 *
 * Comment: Enable battery reading: M(BTST) to XTST in \_SB.PCI0.LPCB.EC0
 * Count:   1
 * Find:    42 54 53 54 0A
 * Replace: 58 54 53 54 0A
 *
 * Comment: Enable battery reading: M(GACW) to XACW
 * Count:   1
 * Find:    47 41 43 57 00
 * Replace: 58 41 43 57 00
 *
 * Comment: Enable battery reading: M(GBAW) to XBAW
 * Count:   1
 * Find:    47 42 41 57 00
 * Replace: 58 42 41 57 00
 *
 * Comment: Enable battery reading: M(GBTC) to XBTC
 * Count:   1
 * Find:    47 42 54 43 00
 * Replace: 58 42 54 43 00
 *
 * Comment: Enable battery reading: M(GBTI) to XBTI
 * Count:   1
 * Find:    47 42 54 49 01 70 0D
 * Replace: 58 42 54 49 01 70 0D
 *
 * Comment: Enable battery reading: M(GCGC) to XXGC
 * Count:   1
 * Find:    47 43 47 43 08
 * Replace: 58 58 47 43 08
 *
 * Comment: Enable battery reading: M(ITLB) to XTLB
 * Count:   1
 * Find:    49 54 4C 42 00
 * Replace: 58 54 4C 42 00
 *
 * Comment: Enable battery reading: M(SBTC) to SXTC
 * Count:   1
 * Find:    53 42 54 43 03
 * Replace: 53 58 54 43 03
 */
DefinitionBlock ("", "SSDT", 2, "what", "BATTERY", 0x00000000)
{
    External (_SB_.BAT0, DeviceObj)
    External (_SB_.NBST, PkgObj)
    External (_SB_.NBTE, PkgObj)
    External (_SB_.NBTI, PkgObj)
    External (_SB_.NDBS, PkgObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.BATN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BATP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BCC_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BDAT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BDC_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BDV_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BFC_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BRCC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BRCV, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BSEL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BSN_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BST_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BSTA, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.BTDR, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.BTMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.CRZN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.GACS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GBMF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GBSS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GCTL, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GDCH, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GDNM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.IDIS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.INAC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.INCH, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LB1_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LB2_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.NBGX, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NDCB, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NGBF, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NGBT, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NLB1, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NLB2, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NLO2, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.PSSB, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.SXTC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.TEMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.XACW, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XBAW, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XBTC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XBTI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XTIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XTIX, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XTLB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XTST, MethodObj)    // 0 Arguments
    External (_SB_.SLPB, DeviceObj)
    External (_SB_.XTIX, MethodObj)    // 0 Arguments
    External (_TZ_.XXGC, MethodObj)    // 0 Arguments
    External (OSDW, MethodObj)

    Scope (\)
    {
        Method (R16B, 2, NotSerialized)
        {
            Return ((Arg0 | (Arg1 << 0x08)))
        }
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        OperationRegion (ERM2, EmbeddedControl, Zero, 0xFF)
        Field (ERM2, ByteAcc, NoLock, Preserve)
        {
            Offset (0x89), 
            DC00,   8, 
            DC01,   8, 
            Offset (0x8D), 
            FC00,   8, 
            FC01,   8, 
            TE00,   8, 
            TE01,   8, 
            Offset (0x92), 
            ME00,   8, 
            ME01,   8, 
            Offset (0x95), 
            DV00,   8, 
            DV01,   8, 
            CA00,   8, 
            CA01,   8, 
            Offset (0x9B), 
            BE00,   8, 
            BE01,   8, 
            PR00,   8, 
            PR01,   8, 
            CR00,   8, 
            CR01,   8, 
            RC00,   8, 
            RC01,   8, 
            CC00,   8, 
            CC01,   8, 
            PV00,   8, 
            PV01,   8, 
            CB00,   8, 
            CB01,   8, 
            CD00,   8, 
            CD01,   8, 
            CE00,   8, 
            CE01,   8, 
            Offset (0xAF), 
            TF00,   8, 
            TF01,   8, 
            Offset (0xB3), 
            XC00,   8, 
            XC01,   8, 
            Offset (0xBA), 
            TS00,   8, 
            TS01,   8, 
            Offset (0xC9), 
            SN00,   8, 
            SN01,   8, 
            AT00,   8, 
            AT01,   8, 
            Offset (0xE1), 
            BT00,   8, 
            BT01,   8, 
            Offset (0xF9), 
            CP00,   8, 
            CP01,   8
        }

        Method (GACW, 0, NotSerialized)
        {
            If (OSDW ())
            {
                Local0 = Zero
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Local0 = R16B (CP00, CP01)
                }

                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XACW ())
            }
        }

        Method (GBAW, 0, NotSerialized)
        {
            If (OSDW ())
            {
                Local0 = Zero
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Local1 = R16B (DV00, DV01)
                    Local2 = R16B (DC00, DC01)
                    Local0 = (Local1 * Local2)
                    Divide (Local0, 0x000F4240, Local3, Local0)
                    If ((Local3 >= 0x0007A120))
                    {
                        Local0++
                    }
                }

                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XBAW ())
            }
        }

        Method (BTIF, 1, Serialized)
        {
            If (OSDW ())
            {
                Local7 = (One << Arg0)
                BTDR (One)
                If ((\_SB.PCI0.LPCB.EC0.BSTA (Local7) == 0x0F))
                {
                    Return (0xFF)
                }

                Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                Local0 = \_SB.PCI0.LPCB.EC0.NGBF /* External reference */
                Release (\_SB.PCI0.LPCB.EC0.BTMX)
                If (((Local0 & Local7) == Zero))
                {
                    Return (Zero)
                }

                \_SB.NBST [Arg0] = \_SB.NDBS /* External reference */
                Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                \_SB.PCI0.LPCB.EC0.NGBT |= Local7
                Release (\_SB.PCI0.LPCB.EC0.BTMX)
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    \_SB.PCI0.LPCB.EC0.BSEL = Arg0
                    DerefOf (NBTI [Arg0]) [One] = R16B (DC00, DC01)
                    DerefOf (NBTI [Arg0]) [0x02] = R16B (FC00, FC01)
                    DerefOf (NBTI [Arg0]) [0x04] = R16B (DV00, DV01)
                    Local0 = (R16B (FC00, FC01) * \_SB.PCI0.LPCB.EC0.NLB1) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTI [Arg0]) [0x05] = Local4
                    Local0 = (R16B (FC00, FC01) * \_SB.PCI0.LPCB.EC0.NLO2) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTI [Arg0]) [0x06] = Local4
                    Local0 = R16B (SN00, SN01)
                    Local1 = R16B (AT00, AT01)
                }

                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                Local2 = \_SB.PCI0.LPCB.EC0.GBSS (Local0, Local1)
                DerefOf (NBTI [Arg0]) [0x0A] = Local2
                Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                \_SB.PCI0.LPCB.EC0.NGBF &= ~Local7
                Release (\_SB.PCI0.LPCB.EC0.BTMX)
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XTIF ())
            }
        }

        Method (BTST, 2, Serialized)
        {
            If (OSDW ())
            {
                Local7 = (One << Arg0)
                BTDR (One)
                If ((\_SB.PCI0.LPCB.EC0.BSTA (Local7) == 0x0F))
                {
                    \_SB.NBST [Arg0] = Package (0x04)
                        {
                            Zero, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        }
                    Return (0xFF)
                }

                Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                If (Arg1)
                {
                    \_SB.PCI0.LPCB.EC0.NGBT = 0xFF
                }

                Local0 = \_SB.PCI0.LPCB.EC0.NGBT /* External reference */
                Release (\_SB.PCI0.LPCB.EC0.BTMX)
                If (((Local0 & Local7) == Zero))
                {
                    Return (Zero)
                }

                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    \_SB.PCI0.LPCB.EC0.BSEL = Arg0
                    Local0 = \_SB.PCI0.LPCB.EC0.BST /* External reference */
                    Local3 = R16B (PR00, PR01)
                    DerefOf (\_SB.NBST [Arg0]) [0x02] = R16B (RC00, RC01)
                    DerefOf (\_SB.NBST [Arg0]) [0x03] = R16B (PV00, PV01)
                }

                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                If ((\_SB.PCI0.LPCB.EC0.GACS () == One))
                {
                    Local0 &= 0xFFFFFFFFFFFFFFFE
                }
                Else
                {
                    Local0 &= 0xFFFFFFFFFFFFFFFD
                }

                If ((Local0 & One))
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.NDCB = Local7
                    Release (\_SB.PCI0.LPCB.EC0.BTMX)
                }

                DerefOf (\_SB.NBST [Arg0]) [Zero] = Local0
                If ((Local0 & One))
                {
                    If (((Local3 < 0x0190) || (Local3 > 0x1964)))
                    {
                        Local5 = DerefOf (DerefOf (\_SB.NBST [Arg0]) [One])
                        If (((Local5 < 0x0190) || (Local5 > 0x1964)))
                        {
                            Local3 = 0x0D7A
                        }
                        Else
                        {
                            Local3 = Local5
                        }
                    }
                }
                ElseIf (((Local0 & 0x02) == Zero))
                {
                    Local3 = Zero
                }

                DerefOf (\_SB.NBST [Arg0]) [One] = Local3
                Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                \_SB.PCI0.LPCB.EC0.NGBT &= ~Local7
                Release (\_SB.PCI0.LPCB.EC0.BTMX)
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XTST ())
            }
        }

        Method (ITLB, 0, NotSerialized)
        {
            If (OSDW ())
            {
                Local0 = (R16B (FC00, FC01) * \_SB.PCI0.LPCB.EC0.NLB1) /* External reference */
                Divide (Local0, 0x64, Local3, Local4)
                Divide ((Local4 + 0x09), 0x0A, Local0, Local1)
                Local0 = (R16B (FC00, FC01) * \_SB.PCI0.LPCB.EC0.NLB2) /* External reference */
                Divide (Local0, 0x64, Local3, Local4)
                Divide ((Local4 + 0x09), 0x0A, Local0, Local2)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    \_SB.PCI0.LPCB.EC0.LB1 = Local1
                    \_SB.PCI0.LPCB.EC0.LB2 = Local2
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XTLB ()
            }
        }

        Method (GBTI, 1, NotSerialized)
        {
            If (OSDW ())
            {
                Debug = "Enter getbattinfo"
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    If ((\_SB.PCI0.LPCB.EC0.BATP & (One << Arg0)))
                    {
                        \_SB.PCI0.LPCB.EC0.BSEL = Arg0
                        Local0 = Package (0x02)
                            {
                                Zero, 
                                Buffer (0x6B){}
                            }
                        DerefOf (Local0 [One]) [Zero] = R16B (DC00, DC01)
                        DerefOf (Local0 [One]) [One] = (R16B (DC00, DC01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x02] = R16B (FC00, FC01)
                        DerefOf (Local0 [One]) [0x03] = (R16B (FC00, FC01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x04] = R16B (RC00, RC01)
                        DerefOf (Local0 [One]) [0x05] = (R16B (RC00, RC01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x06] = R16B (ME00, ME01)
                        DerefOf (Local0 [One]) [0x07] = (R16B (ME00, ME01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x08] = R16B (CC00, CC01)
                        DerefOf (Local0 [One]) [0x09] = (R16B (CC00, CC01) >> 
                            0x08)
                        Local1 = R16B (BT00, BT01)
                        Local1 -= 0x0AAC
                        Divide (Local1, 0x0A, Local2, Local3)
                        DerefOf (Local0 [One]) [0x0A] = Local3
                        DerefOf (Local0 [One]) [0x0B] = (Local3 >> 0x08)
                        DerefOf (Local0 [One]) [0x0C] = R16B (PV00, PV01)
                        DerefOf (Local0 [One]) [0x0D] = (R16B (PV00, PV01) >> 
                            0x08)
                        Local1 = R16B (PR00, PR01)
                        If (Local1)
                        {
                            If ((R16B (TS00, TS01) & 0x40))
                            {
                                Local1 = (~Local1 + One)
                                Local1 &= 0xFFFF
                            }
                        }

                        DerefOf (Local0 [One]) [0x0E] = Local1
                        DerefOf (Local0 [One]) [0x0F] = (Local1 >> 0x08)
                        DerefOf (Local0 [One]) [0x10] = R16B (DV00, DV01)
                        DerefOf (Local0 [One]) [0x11] = (R16B (DV00, DV01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x12] = R16B (TS00, TS01)
                        DerefOf (Local0 [One]) [0x13] = (R16B (TS00, TS01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x14] = R16B (CA00, CA01)
                        DerefOf (Local0 [One]) [0x15] = (R16B (CA00, CA01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x16] = R16B (CB00, CB01)
                        DerefOf (Local0 [One]) [0x17] = (R16B (CB00, CB01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x18] = R16B (CD00, CD01)
                        DerefOf (Local0 [One]) [0x19] = (R16B (CD00, CD01) >> 
                            0x08)
                        DerefOf (Local0 [One]) [0x1A] = R16B (CE00, CE01)
                        DerefOf (Local0 [One]) [0x1B] = (R16B (CE00, CE01) >> 
                            0x08)
                        CreateField (DerefOf (Local0 [One]), 0xE0, 0x80, BTSN)
                        BTSN = \_SB.PCI0.LPCB.EC0.GBSS (R16B (SN00, SN01), R16B (AT00, AT01))
                        Local1 = \_SB.PCI0.LPCB.EC0.GBMF ()
                        Local2 = SizeOf (Local1)
                        CreateField (DerefOf (Local0 [One]), 0x0160, (Local2 * 0x08), BMAN)
                        BMAN = Local1
                        Local2 += 0x2C
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x80, CLBL)
                        CLBL = \_SB.PCI0.LPCB.EC0.GCTL (Zero)
                        Local2 += 0x11
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x38, DNAM)
                        DNAM = \_SB.PCI0.LPCB.EC0.GDNM (Zero)
                        Local2 += 0x07
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x20, DCHE)
                        DCHE = \_SB.PCI0.LPCB.EC0.GDCH (Zero)
                        Local2 += 0x04
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BMAC)
                        BMAC = Zero
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BMAD)
                        BMAD = R16B (AT00, AT01)
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BCCU)
                        BCCU = \_SB.PCI0.LPCB.EC0.BRCC /* External reference */
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BCVO)
                        BCVO = \_SB.PCI0.LPCB.EC0.BRCV /* External reference */
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BAVC)
                        Local1 = R16B (CR00, CR01)
                        If (Local1)
                        {
                            If ((R16B (TS00, TS01) & 0x40))
                            {
                                Local1 = (~Local1 + One)
                                Local1 &= 0xFFFF
                            }
                        }

                        BAVC = Local1
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, RTTE)
                        RTTE = R16B (TE00, TE01)
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, ATTE)
                        RTTE = R16B (BE00, BE01)
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, ATTF)
                        RTTE = R16B (TF00, TF01)
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x08, NOBS)
                        NOBS = \_SB.PCI0.LPCB.EC0.BATN /* External reference */
                    }
                    Else
                    {
                        Local0 = Package (0x01)
                            {
                                0x34
                            }
                    }
                }
                Else
                {
                    Local0 = Package (0x01)
                        {
                            0x0D
                        }
                }

                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XBTI ())
            }
        }

        Method (GBTC, 0, NotSerialized)
        {
            If (OSDW ())
            {
                Debug = "Enter GetBatteryControl"
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Local0 = Package (0x02)
                        {
                            Zero, 
                            Buffer (0x04){}
                        }
                    If ((\_SB.PCI0.LPCB.EC0.BATP & One))
                    {
                        \_SB.PCI0.LPCB.EC0.BSEL = Zero
                        DerefOf (Local0 [One]) [Zero] = Zero
                        If ((((\_SB.PCI0.LPCB.EC0.INAC == Zero) && (\_SB.PCI0.LPCB.EC0.INCH == Zero)) && (\_SB.PCI0.LPCB.EC0.IDIS == Zero)))
                        {
                            DerefOf (Local0 [One]) [Zero] = Zero
                        }
                        ElseIf (((((\_SB.PCI0.LPCB.EC0.INAC == Zero) && (\_SB.PCI0.LPCB.EC0.INCH == 0x02)) && (
                            \_SB.PCI0.LPCB.EC0.IDIS == One)) && (R16B (XC00, XC01) == Zero)))
                        {
                            DerefOf (Local0 [One]) [Zero] = One
                        }
                        ElseIf (((\_SB.PCI0.LPCB.EC0.INAC == One) && (\_SB.PCI0.LPCB.EC0.IDIS == 0x02)))
                        {
                            DerefOf (Local0 [One]) [Zero] = 0x02
                        }
                        ElseIf (((((\_SB.PCI0.LPCB.EC0.INAC == Zero) && (\_SB.PCI0.LPCB.EC0.INCH == 0x02)) && (
                            \_SB.PCI0.LPCB.EC0.IDIS == One)) && (R16B (XC00, XC01) == 0xFA)))
                        {
                            DerefOf (Local0 [One]) [Zero] = 0x03
                        }
                        ElseIf (((\_SB.PCI0.LPCB.EC0.INAC == Zero) && (\_SB.PCI0.LPCB.EC0.INCH == 0x03)))
                        {
                            DerefOf (Local0 [One]) [Zero] = 0x04
                        }
                    }
                    Else
                    {
                        DerefOf (Local0 [One]) [Zero] = 0xFF
                    }

                    If ((\_SB.PCI0.LPCB.EC0.BATP & 0x02))
                    {
                        \_SB.PCI0.LPCB.EC0.BSEL = One
                        DerefOf (Local0 [One]) [One] = Zero
                        If ((((\_SB.PCI0.LPCB.EC0.INAC == Zero) && (\_SB.PCI0.LPCB.EC0.INCH == Zero)) && (\_SB.PCI0.LPCB.EC0.IDIS == Zero)))
                        {
                            DerefOf (Local0 [One]) [One] = Zero
                        }
                        ElseIf (((((\_SB.PCI0.LPCB.EC0.INAC == Zero) && (\_SB.PCI0.LPCB.EC0.INCH == One)) && (
                            \_SB.PCI0.LPCB.EC0.IDIS == 0x02)) && (R16B (XC00, XC01) == Zero)))
                        {
                            DerefOf (Local0 [One]) [One] = One
                        }
                        ElseIf (((\_SB.PCI0.LPCB.EC0.INAC == One) && (\_SB.PCI0.LPCB.EC0.IDIS == One)))
                        {
                            DerefOf (Local0 [One]) [One] = 0x02
                        }
                        ElseIf (((((\_SB.PCI0.LPCB.EC0.INAC == Zero) && (\_SB.PCI0.LPCB.EC0.INCH == One)) && (
                            \_SB.PCI0.LPCB.EC0.IDIS == 0x02)) && (R16B (XC00, XC01) == 0xFA)))
                        {
                            DerefOf (Local0 [One]) [One] = 0x03
                        }
                        ElseIf (((\_SB.PCI0.LPCB.EC0.INAC == Zero) && (\_SB.PCI0.LPCB.EC0.INCH == 0x03)))
                        {
                            DerefOf (Local0 [One]) [One] = 0x04
                        }
                    }
                    Else
                    {
                        DerefOf (Local0 [One]) [One] = 0xFF
                    }
                }
                Else
                {
                    Local0 = Package (0x02)
                        {
                            0x35, 
                            Zero
                        }
                }

                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XBTC ())
            }
        }

        Method (SBTC, 3, NotSerialized)
        {
            If (OSDW ())
            {
                Debug = "Enter SetBatteryControl"
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Local0 = Arg2
                    Debug = Local0
                    Local4 = Package (0x01)
                        {
                            0x06
                        }
                    Local1 = Zero
                    Local2 = Zero
                    Local1 = DerefOf (Local0 [Zero])
                    If ((Local1 == Zero))
                    {
                        Debug = "battery 0"
                        If ((\_SB.PCI0.LPCB.EC0.BATP & One))
                        {
                            Local2 = DerefOf (Local0 [One])
                            If ((Local2 == Zero))
                            {
                                \_SB.PCI0.LPCB.EC0.INCH = Zero
                                \_SB.PCI0.LPCB.EC0.IDIS = Zero
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                XC00 = Zero
                                XC01 = Zero
                                \_SB.PCI0.LPCB.EC0.PSSB = One
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == One))
                            {
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                \_SB.PCI0.LPCB.EC0.INCH = 0x02
                                \_SB.PCI0.LPCB.EC0.IDIS = One
                                XC00 = Zero
                                XC01 = Zero
                                \_SB.PCI0.LPCB.EC0.PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x02))
                            {
                                \_SB.PCI0.LPCB.EC0.INAC = One
                                \_SB.PCI0.LPCB.EC0.INCH = One
                                \_SB.PCI0.LPCB.EC0.IDIS = 0x02
                                \_SB.PCI0.LPCB.EC0.PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x03))
                            {
                                \_SB.PCI0.LPCB.EC0.INCH = 0x02
                                \_SB.PCI0.LPCB.EC0.IDIS = One
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                XC00 = 0xFA
                                XC01 = Zero
                                \_SB.PCI0.LPCB.EC0.PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x04))
                            {
                                XC00 = 0xFA
                                XC01 = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x05))
                            {
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                \_SB.PCI0.LPCB.EC0.INCH = 0x03
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }
                        }
                        Else
                        {
                            Local4 = Package (0x01)
                                {
                                    0x34
                                }
                        }
                    }

                    If ((Local1 == One))
                    {
                        If ((\_SB.PCI0.LPCB.EC0.BATP & 0x02))
                        {
                            Debug = "battery 1"
                            Local2 = DerefOf (Local0 [One])
                            If ((Local2 == Zero))
                            {
                                \_SB.PCI0.LPCB.EC0.INCH = Zero
                                \_SB.PCI0.LPCB.EC0.IDIS = Zero
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                XC00 = Zero
                                XC01 = Zero
                                \_SB.PCI0.LPCB.EC0.PSSB = One
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == One))
                            {
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                \_SB.PCI0.LPCB.EC0.INCH = One
                                \_SB.PCI0.LPCB.EC0.IDIS = 0x02
                                XC00 = Zero
                                XC01 = Zero
                                \_SB.PCI0.LPCB.EC0.PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x02))
                            {
                                \_SB.PCI0.LPCB.EC0.INAC = One
                                \_SB.PCI0.LPCB.EC0.INCH = 0x02
                                \_SB.PCI0.LPCB.EC0.IDIS = One
                                \_SB.PCI0.LPCB.EC0.PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x03))
                            {
                                \_SB.PCI0.LPCB.EC0.INCH = One
                                \_SB.PCI0.LPCB.EC0.IDIS = 0x02
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                XC00 = 0xFA
                                XC01 = Zero
                                \_SB.PCI0.LPCB.EC0.PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x04))
                            {
                                \_SB.PCI0.LPCB.EC0.INCH = Zero
                                \_SB.PCI0.LPCB.EC0.IDIS = Zero
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x05))
                            {
                                \_SB.PCI0.LPCB.EC0.INAC = Zero
                                \_SB.PCI0.LPCB.EC0.INCH = 0x03
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }
                        }
                        Else
                        {
                            Local4 = Package (0x01)
                                {
                                    0x34
                                }
                        }
                    }
                }

                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                Return (Local4)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.SXTC ())
            }
        }
    }

    Scope (\_TZ)
    {
        Method (GCGC, 0, Serialized)
        {
            If (OSDW ())
            {
                Name (LTMP, Buffer (0x02){})
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    LTMP = R16B (\_SB.PCI0.LPCB.EC0.PR00, \_SB.PCI0.LPCB.EC0.PR01)
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }

                Return (LTMP) /* \_TZ_.GCGC.LTMP */
            }
            Else
            {
                Return (\_TZ.XXGC ())
            }
        }
    }

    Scope (\_SB)
    {
        // Paired with M(_BIX) to XBIX on BIOS Version 01.39Rev.A.
        Method (BAT0._BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
        {
            Return (\_SB.BTIX (Zero))
        }

        // Paired with M(BTIX) to XTIX on 01.39Rev.A.
        Method (BTIX, 1, Serialized)
        {
            // If _SB.XTIX exists, if on 01.39Rev.A, execute original method.
            If (CondRefOf (\_SB.XTIX))
            {
                Return (\_SB.XTIX ())
            }
            // If not, if on 01.25, execute the code copied from BTIX on 01.39Rev.A.
            Else
            {
                Local0 = ^PCI0.LPCB.EC0.BTIX (Arg0)
                If ((Local0 == 0xFF))
                {
                    Return (Package (0x15)
                    {
                        One, 
                        One, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        One, 
                        0xFFFFFFFF, 
                        Zero, 
                        Zero, 
                        0x64, 
                        0x00017318, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x64, 
                        0x64, 
                        "", 
                        "", 
                        "", 
                        "", 
                        One
                    })
                }
                Else
                {
                    // NBTE on 01.39Rev.A
                    Return (DerefOf (NBIX [Arg0]))
                }
            }
        }

        // If NBTE does not exist, if on 01.25,
        If (~CondRefOf (\_SB.NBTE))
        {
            // Create NBIX with code copied from NBTE on 01.39Rev.A.
            Name (NBIX, Package (0x02)
            {
                Package (0x15)
                {
                    One, 
                    One, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    One, 
                    0xFFFFFFFF, 
                    Zero, 
                    Zero, 
                    0x64, 
                    0x00017318, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x64, 
                    0x64, 
                    "Primary", 
                    "123456789", 
                    "LIon", 
                    "Hewlett-Packard", 
                    One
                }, 

                Package (0x15)
                {
                    One, 
                    One, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    One, 
                    0xFFFFFFFF, 
                    Zero, 
                    Zero, 
                    0x64, 
                    0x00017318, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x64, 
                    0x64, 
                    "Primary", 
                    "100000", 
                    "LIon", 
                    "Hewlett-Packard", 
                    One
                }
            })
        }
    }

    // Paired with M(BTIX) to XTIX on 01.39Rev.A.
    Method (\_SB.PCI0.LPCB.EC0.BTIX, 1, Serialized)
    {
        // If XTIX exists, if on 01.39Rev.A,
        If (CondRefOf (\_SB.PCI0.LPCB.EC0.XTIX))
        {
            // and the OS is "Darwin", execute the below
            If (OSDW ())
            {
                Local7 = (One << Arg0)
                BTDR (One)
                If ((\_SB.PCI0.LPCB.EC0.BSTA (Local7) == 0x0F))
                {
                    Return (0xFF)
                }

                Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                Local0 = \_SB.PCI0.LPCB.EC0.NBGX /* External reference */
                Release (\_SB.PCI0.LPCB.EC0.BTMX)
                If (((Local0 & Local7) == Zero))
                {
                    Return (Zero)
                }

                \_SB.NBST [Arg0] = \_SB.NDBS /* External reference */
                Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                \_SB.PCI0.LPCB.EC0.NGBT |= Local7
                Release (\_SB.PCI0.LPCB.EC0.BTMX)
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    \_SB.PCI0.LPCB.EC0.BSEL = Arg0
                    DerefOf (NBTE [Arg0]) [0x02] = R16B (DC00, DC01)
                    DerefOf (NBTE [Arg0]) [0x03] = R16B (FC00, FC01)
                    DerefOf (NBTE [Arg0]) [0x05] = R16B (DV00, DV01)
                    Local0 = (R16B (FC00, FC01) * \_SB.PCI0.LPCB.EC0.NLB1) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTE [Arg0]) [0x06] = Local4
                    Local0 = (R16B (FC00, FC01) * \_SB.PCI0.LPCB.EC0.NLO2) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTE [Arg0]) [0x07] = Local4
                    DerefOf (NBTE [Arg0]) [0x08] = R16B (CC00, CC01)
                    Local0 = R16B (SN00, SN01)
                    Local1 = R16B (AT00, AT01)
                }

                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                Local2 = \_SB.PCI0.LPCB.EC0.GBSS (Local0, Local1)
                DerefOf (NBTE [Arg0]) [0x11] = Local2
                Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
                \_SB.PCI0.LPCB.EC0.NBGX &= ~Local7
                Release (\_SB.PCI0.LPCB.EC0.BTMX)
                Return (Zero)
            }
            // and if the OS is not "Darwin", execute original BTIX.
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XTIX ())
            }
        }
        // If XTIX does not exist, if on 01.25, execute code copied from BTIX on 01.39Rev.A
        Else
        {
            Local7 = (One << Arg0)
            BTDR (One)
            If ((\_SB.PCI0.LPCB.EC0.BSTA (Local7) == 0x0F))
            {
                Return (0xFF)
            }

            Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
            Local0 = \_SB.PCI0.LPCB.EC0.NGBF /* External reference */
            Release (\_SB.PCI0.LPCB.EC0.BTMX)
            If (((Local0 & Local7) == Zero))
            {
                Return (Zero)
            }

            \_SB.NBST [Arg0] = \_SB.NDBS /* External reference */
            Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC0.NGBT |= Local7
            Release (\_SB.PCI0.LPCB.EC0.BTMX)
            Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
            If (\_SB.PCI0.LPCB.EC0.ECRG)
            {
                // with a condition that if the OS is "Darwin", execute patched BTIX content
                If (OSDW ())
                {
                    \_SB.PCI0.LPCB.EC0.BSEL = Arg0
                    DerefOf (NBIX [Arg0]) [0x02] = R16B (DC00, DC01)
                    DerefOf (NBIX [Arg0]) [0x03] = R16B (FC00, FC01)
                    DerefOf (NBIX [Arg0]) [0x05] = R16B (DV00, DV01)
                    Local0 = (R16B (FC00, FC01) * \_SB.PCI0.LPCB.EC0.NLB1) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBIX [Arg0]) [0x06] = Local4
                    Local0 = (R16B (FC00, FC01) * \_SB.PCI0.LPCB.EC0.NLO2) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBIX [Arg0]) [0x07] = Local4
                    DerefOf (NBIX [Arg0]) [0x08] = R16B (CC00, CC01)
                    Local0 = R16B (SN00, SN01)
                    Local1 = R16B (AT00, AT01)
                }
                // and if the OS is not "Darwin", execute original BTIX content.
                Else
                {
                    BSEL = Arg0
                    DerefOf (NBIX [Arg0]) [0x02] = \_SB.PCI0.LPCB.EC0.BDC /* External reference */
                    DerefOf (NBIX [Arg0]) [0x03] = \_SB.PCI0.LPCB.EC0.BFC /* External reference */
                    DerefOf (NBIX [Arg0]) [0x05] = \_SB.PCI0.LPCB.EC0.BDV /* External reference */
                    Local0 = (\_SB.PCI0.LPCB.EC0.BFC * \_SB.PCI0.LPCB.EC0.NLB1) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBIX [Arg0]) [0x06] = Local4
                    Local0 = (\_SB.PCI0.LPCB.EC0.BFC * \_SB.PCI0.LPCB.EC0.NLO2) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBIX [Arg0]) [0x07] = Local4
                    DerefOf (NBIX [Arg0]) [0x08] = \_SB.PCI0.LPCB.EC0.BCC /* External reference */
                    Local0 = \_SB.PCI0.LPCB.EC0.BSN /* External reference */
                    Local1 = \_SB.PCI0.LPCB.EC0.BDAT /* External reference */
                }
            }

            Release (\_SB.PCI0.LPCB.EC0.ECMX)
            Local2 = \_SB.PCI0.LPCB.EC0.GBSS (Local0, Local1)
            DerefOf (NBIX [Arg0]) [0x11] = Local2
            Acquire (\_SB.PCI0.LPCB.EC0.BTMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC0.NGBF &= ~Local7
            Release (\_SB.PCI0.LPCB.EC0.BTMX)
            Return (Zero)
        }
    }
}

