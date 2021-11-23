{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.DD1F, DeviceObj)
    External (_SB_.PCI0.GFX0.HDOD, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.HDOS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.HNOT, MethodObj)    // 1 Arguments
    External (CPSC, UnknownObj)
    External (DSEN, UnknownObj)
    External (ECON, IntObj)
    External (GUAM, MethodObj)    // 1 Arguments
    External (OSYS, IntObj)
    External (PBCL, MethodObj)    // 0 Arguments
    External (PLD1, MethodObj)    // 0 Arguments
    External (PLD2, MethodObj)    // 0 Arguments
    External (PNHM, IntObj)
    External (S0ID, UnknownObj)
    External (WCOS, UnknownObj)


    0024: A0 4D 0C 00 15 5C 2E 5F 53 42 5F 50 43 49 30 06  // .M...\._SB_PCI0.
    0034: 00 15 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58  // ..\/._SB_PCI0GFX
    0044: 30 06 00 15 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // 0...\/._SB_PCI0G
    0054: 46 58 30 48 44 4F 44 08 00 15 5C 50 4C 44 31 08  // FX0HDOD...\PLD1.
    0064: 00 15 5C 50 4C 44 32 08 00 15 5C 50 42 43 4C 08  // ..\PLD2...\PBCL.
    0074: 00 15 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58  // ..\/._SB_PCI0GFX
    0084: 30 48 44 4F 53 08 01 15 5C 45 43 4F 4E 01 00 15  // 0HDOS...\ECON...
    0094: 5C 50 4E 48 4D 01 00 15 4F 53 59 53 01 00 15 43  // \PNHM...OSYS...C
    00A4: 50 53 43 00 00 15 5C 47 55 41 4D 08 01 15 44 53  // PSC...\GUAM...DS
    00B4: 45 4E 00 00 15 53 30 49 44 00 00 15 57 43 4F 53  // EN...S0ID...WCOS
    00C4: 00 00 15 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46  // ...\/._SB_PCI0GF
    00D4: 58 30 44 44 31 46 06 00 15 5C 2F 04 5F 53 42 5F  // X0DD1F...\/._SB_
    00E4: 50 43 49 30 47 46 58 30 48 4E 4F 54 08 01        // PCI0GFX0HNOT..

    OperationRegion (SANV, SystemMemory, 0x97B7E418, 0x01F7)

    00F2: 5B 80 53 41 4E 56 00 0C 18 E4 B7 97 0B F7 01     // [.SANV.........

    Field (SANV, AnyAcc, Lock, Preserve)
    {
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        GSMI,   8, 
        PAVP,   8, 
        CADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        DIDX,   32, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        NXDX,   32, 
        LIDS,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        IMTP,   8, 
        EDPV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        SGGP,   8, 
        HRE0,   8, 
        HRG0,   32, 
        HRA0,   8, 
        PWE0,   8, 
        PWG0,   32, 
        PWA0,   8, 
        P1GP,   8, 
        HRE1,   8, 
        HRG1,   32, 
        HRA1,   8, 
        PWE1,   8, 
        PWG1,   32, 
        PWA1,   8, 
        P2GP,   8, 
        HRE2,   8, 
        HRG2,   32, 
        HRA2,   8, 
        PWE2,   8, 
        PWG2,   32, 
        PWA2,   8, 
        DLPW,   16, 
        DLHR,   16, 
        EECP,   8, 
        XBAS,   32, 
        GBAS,   16, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        LTRX,   8, 
        OBFX,   8, 
        LTRY,   8, 
        OBFY,   8, 
        LTRZ,   8, 
        OBFZ,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        PCSL,   8, 
        PBGE,   8, 
        M64B,   64, 
        M64L,   64, 
        CPEX,   32, 
        EEC1,   8, 
        EEC2,   8, 
        SBN0,   8, 
        SBN1,   8, 
        SBN2,   8, 
        M32B,   32, 
        M32L,   32, 
        P0WK,   32, 
        P1WK,   32, 
        P2WK,   32, 
        CKM0,   32, 
        CKM1,   32, 
        CKM2,   32, 
        DLAO,   16, 
        DLAL,   16, 
        GSCE,   8, 
        DIDY,   32, 
        NXDY,   32, 
        Offset (0x1F4), 
        Offset (0x1F7)
    }


    0101: 5B 81 4C 25 53 41 4E 56 10 41 53 4C 42 20 49 4D  // [.L%SANV.ASLB IM
    0111: 4F 4E 08 49 47 44 53 08 49 42 54 54 08 49 50 41  // ON.IGDS.IBTT.IPA
    0121: 54 08 49 50 53 43 08 49 42 49 41 08 49 53 53 43  // T.IPSC.IBIA.ISSC
    0131: 08 49 44 4D 53 08 49 46 31 45 08 48 56 43 4F 08  // .IDMS.IF1E.HVCO.
    0141: 47 53 4D 49 08 50 41 56 50 08 43 41 44 4C 08 43  // GSMI.PAVP.CADL.C
    0151: 53 54 45 10 4E 53 54 45 10 4E 44 49 44 08 44 49  // STE.NSTE.NDID.DI
    0161: 44 31 20 44 49 44 32 20 44 49 44 33 20 44 49 44  // D1 DID2 DID3 DID
    0171: 34 20 44 49 44 35 20 44 49 44 36 20 44 49 44 37  // 4 DID5 DID6 DID7
    0181: 20 44 49 44 38 20 44 49 44 39 20 44 49 44 41 20  //  DID8 DID9 DIDA 
    0191: 44 49 44 42 20 44 49 44 43 20 44 49 44 44 20 44  // DIDB DIDC DIDD D
    01A1: 49 44 45 20 44 49 44 46 20 44 49 44 58 20 4E 58  // IDE DIDF DIDX NX
    01B1: 44 31 20 4E 58 44 32 20 4E 58 44 33 20 4E 58 44  // D1 NXD2 NXD3 NXD
    01C1: 34 20 4E 58 44 35 20 4E 58 44 36 20 4E 58 44 37  // 4 NXD5 NXD6 NXD7
    01D1: 20 4E 58 44 38 20 4E 58 44 58 20 4C 49 44 53 08  //  NXD8 NXDX LIDS.
    01E1: 4B 53 56 30 20 4B 53 56 31 08 42 52 54 4C 08 41  // KSV0 KSV1.BRTL.A
    01F1: 4C 53 45 08 41 4C 41 46 08 4C 4C 4F 57 08 4C 48  // LSE.ALAF.LLOW.LH
    0201: 49 48 08 41 4C 46 50 08 49 4D 54 50 08 45 44 50  // IH.ALFP.IMTP.EDP
    0211: 56 08 53 47 4D 44 08 53 47 46 4C 08 53 47 47 50  // V.SGMD.SGFL.SGGP
    0221: 08 48 52 45 30 08 48 52 47 30 20 48 52 41 30 08  // .HRE0.HRG0 HRA0.
    0231: 50 57 45 30 08 50 57 47 30 20 50 57 41 30 08 50  // PWE0.PWG0 PWA0.P
    0241: 31 47 50 08 48 52 45 31 08 48 52 47 31 20 48 52  // 1GP.HRE1.HRG1 HR
    0251: 41 31 08 50 57 45 31 08 50 57 47 31 20 50 57 41  // A1.PWE1.PWG1 PWA
    0261: 31 08 50 32 47 50 08 48 52 45 32 08 48 52 47 32  // 1.P2GP.HRE2.HRG2
    0271: 20 48 52 41 32 08 50 57 45 32 08 50 57 47 32 20  //  HRA2.PWE2.PWG2 
    0281: 50 57 41 32 08 44 4C 50 57 10 44 4C 48 52 10 45  // PWA2.DLPW.DLHR.E
    0291: 45 43 50 08 58 42 41 53 20 47 42 41 53 10 4E 56  // ECP.XBAS GBAS.NV
    02A1: 47 41 20 4E 56 48 41 20 41 4D 44 41 20 4C 54 52  // GA NVHA AMDA LTR
    02B1: 58 08 4F 42 46 58 08 4C 54 52 59 08 4F 42 46 59  // X.OBFX.LTRY.OBFY
    02C1: 08 4C 54 52 5A 08 4F 42 46 5A 08 53 4D 53 4C 10  // .LTRZ.OBFZ.SMSL.
    02D1: 53 4E 53 4C 10 50 30 55 42 08 50 31 55 42 08 50  // SNSL.P0UB.P1UB.P
    02E1: 32 55 42 08 50 43 53 4C 08 50 42 47 45 08 4D 36  // 2UB.PCSL.PBGE.M6
    02F1: 34 42 40 04 4D 36 34 4C 40 04 43 50 45 58 20 45  // 4B@.M64L@.CPEX E
    0301: 45 43 31 08 45 45 43 32 08 53 42 4E 30 08 53 42  // EC1.EEC2.SBN0.SB
    0311: 4E 31 08 53 42 4E 32 08 4D 33 32 42 20 4D 33 32  // N1.SBN2.M32B M32
    0321: 4C 20 50 30 57 4B 20 50 31 57 4B 20 50 32 57 4B  // L P0WK P1WK P2WK
    0331: 20 43 4B 4D 30 20 43 4B 4D 31 20 43 4B 4D 32 20  //  CKM0 CKM1 CKM2 
    0341: 44 4C 41 4F 10 44 4C 41 4C 10 47 53 43 45 08 44  // DLAO.DLAL.GSCE.D
    0351: 49 44 59 20 4E 58 44 59 20 00 48 6B 00 18        // IDY NXDY .Hk..

    Scope (\_SB.PCI0.GFX0)
    {

    035F: 10 83 F0 02 5C 2F 03 5F 53 42 5F 50 43 49 30 47  // ....\/._SB_PCI0G
    036F: 46 58 30                                         // FX0

        Name (DPLD, 
    0372: 08 44 50 4C 44                                   // .DPLD

Package (0x01)
        {

    0377: 12 1A 01                                         // ...

            Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                /* 0008 */  0x41, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x80, 0x01,  // A.......
                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
            }
        })

    037A: 11 17 0A 14 82 00 00 00 20 03 D0 07 41 0E 00 00  // ........ ...A...
    038A: 00 00 80 01 00 00 00 00                          // ........

        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
        {
            DSEN = 
    0392: 14 27 5F 44 4F 53 01 70                          // .'_DOS.p

(Arg0 & 0x07)

    039A: 7B 68 0A 07 00 44 53 45 4E                       // {h...DSEN

            If (((Arg0 & 0x03) == Zero))
            {

    03A3: A0 16 93 7B 68 0A 03 00 00                       // ...{h....

                If (CondRefOf (HDOS))
                {
                    HDOS (Arg0)
                }
            }
        }


    03AC: A0 0D 5B 12 48 44 4F 53 00 48 44 4F 53 68        // ..[.HDOS.HDOSh

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {

    03BA: 14 89 18 01 5F 44 4F 44 00                       // ...._DOD.

            If (CondRefOf (HDOD))
            {
                HDOD ()
            }


    03C3: A0 0C 5B 12 48 44 4F 44 00 48 44 4F 44           // ..[.HDOD.HDOD

            If ((WCOS == Zero))
            {

    03D0: A0 1D 93 57 43 4F 53 00                          // ...WCOS.

                If ((IMTP == One))
                {

    03D8: A0 0D 93 49 4D 54 50 01                          // ...IMTP.

                    NDID = One
                }

    03E0: 70 01 4E 44 49 44                                // p.NDID

                Else
                {

    03E6: A1 07                                            // ..

                    NDID = Zero
                }
            }

    03E8: 70 00 4E 44 49 44                                // p.NDID

            Else
            {

    03EE: A1 08                                            // ..

                NDID = 0x02
            }


    03F0: 70 0A 02 4E 44 49 44                             // p..NDID

            If (
    03F7: A0 15 92                                         // ...

(DIDL != Zero))
            {

    03FA: 93 44 49 44 4C 00                                // .DIDL.

                DID1 = SDDL (DIDL)
            }


    0400: 70 53 44 44 4C 44 49 44 4C 44 49 44 31           // pSDDLDIDLDID1

            If (
    040D: A0 15 92                                         // ...

(DDL2 != Zero))
            {

    0410: 93 44 44 4C 32 00                                // .DDL2.

                DID2 = SDDL (DDL2)
            }


    0416: 70 53 44 44 4C 44 44 4C 32 44 49 44 32           // pSDDLDDL2DID2

            If (
    0423: A0 15 92                                         // ...

(DDL3 != Zero))
            {

    0426: 93 44 44 4C 33 00                                // .DDL3.

                DID3 = SDDL (DDL3)
            }


    042C: 70 53 44 44 4C 44 44 4C 33 44 49 44 33           // pSDDLDDL3DID3

            If (
    0439: A0 15 92                                         // ...

(DDL4 != Zero))
            {

    043C: 93 44 44 4C 34 00                                // .DDL4.

                DID4 = SDDL (DDL4)
            }


    0442: 70 53 44 44 4C 44 44 4C 34 44 49 44 34           // pSDDLDDL4DID4

            If (
    044F: A0 15 92                                         // ...

(DDL5 != Zero))
            {

    0452: 93 44 44 4C 35 00                                // .DDL5.

                DID5 = SDDL (DDL5)
            }


    0458: 70 53 44 44 4C 44 44 4C 35 44 49 44 35           // pSDDLDDL5DID5

            If (
    0465: A0 15 92                                         // ...

(DDL6 != Zero))
            {

    0468: 93 44 44 4C 36 00                                // .DDL6.

                DID6 = SDDL (DDL6)
            }


    046E: 70 53 44 44 4C 44 44 4C 36 44 49 44 36           // pSDDLDDL6DID6

            If (
    047B: A0 15 92                                         // ...

(DDL7 != Zero))
            {

    047E: 93 44 44 4C 37 00                                // .DDL7.

                DID7 = SDDL (DDL7)
            }


    0484: 70 53 44 44 4C 44 44 4C 37 44 49 44 37           // pSDDLDDL7DID7

            If (
    0491: A0 15 92                                         // ...

(DDL8 != Zero))
            {

    0494: 93 44 44 4C 38 00                                // .DDL8.

                DID8 = SDDL (DDL8)
            }


    049A: 70 53 44 44 4C 44 44 4C 38 44 49 44 38           // pSDDLDDL8DID8

            If (
    04A7: A0 15 92                                         // ...

(DDL9 != Zero))
            {

    04AA: 93 44 44 4C 39 00                                // .DDL9.

                DID9 = SDDL (DDL9)
            }


    04B0: 70 53 44 44 4C 44 44 4C 39 44 49 44 39           // pSDDLDDL9DID9

            If (
    04BD: A0 15 92                                         // ...

(DD10 != Zero))
            {

    04C0: 93 44 44 31 30 00                                // .DD10.

                DIDA = SDDL (DD10)
            }


    04C6: 70 53 44 44 4C 44 44 31 30 44 49 44 41           // pSDDLDD10DIDA

            If (
    04D3: A0 15 92                                         // ...

(DD11 != Zero))
            {

    04D6: 93 44 44 31 31 00                                // .DD11.

                DIDB = SDDL (DD11)
            }


    04DC: 70 53 44 44 4C 44 44 31 31 44 49 44 42           // pSDDLDD11DIDB

            If (
    04E9: A0 15 92                                         // ...

(DD12 != Zero))
            {

    04EC: 93 44 44 31 32 00                                // .DD12.

                DIDC = SDDL (DD12)
            }


    04F2: 70 53 44 44 4C 44 44 31 32 44 49 44 43           // pSDDLDD12DIDC

            If (
    04FF: A0 15 92                                         // ...

(DD13 != Zero))
            {

    0502: 93 44 44 31 33 00                                // .DD13.

                DIDD = SDDL (DD13)
            }


    0508: 70 53 44 44 4C 44 44 31 33 44 49 44 44           // pSDDLDD13DIDD

            If (
    0515: A0 15 92                                         // ...

(DD14 != Zero))
            {

    0518: 93 44 44 31 34 00                                // .DD14.

                DIDE = SDDL (DD14)
            }


    051E: 70 53 44 44 4C 44 44 31 34 44 49 44 45           // pSDDLDD14DIDE

            If (
    052B: A0 15 92                                         // ...

(DD15 != Zero))
            {

    052E: 93 44 44 31 35 00                                // .DD15.

                DIDF = SDDL (DD15)
            }


    0534: 70 53 44 44 4C 44 44 31 35 44 49 44 46           // pSDDLDD15DIDF

            If ((NDID == One))
            {

    0541: A0 44 04 93 4E 44 49 44 01                       // .D..NDID.

                Name (TMP1, 
    054A: 08 54 4D 50 31                                   // .TMP1

Package (0x01)
                {
                    0xFFFFFFFF
                })

    054F: 12 07 01 0C FF FF FF FF                          // ........

                If ((IMTP == One))
                {

    0557: A0 14 93 49 4D 54 50 01                          // ...IMTP.

                    TMP1 [Zero] = 0x0002CA00
                }

    055F: 70 0C 00 CA 02 00 88 54 4D 50 31 00 00           // p......TMP1..

                Else
                {

    056C: A1 14                                            // ..

                    TMP1 [Zero] = 
    056E: 70                                               // p

(0x00010000 | DID1)
                }


    056F: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 31  // }.....DID1..TMP1
    057F: 00 00                                            // ..

                Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
            }


    0581: A4 54 4D 50 31                                   // .TMP1

            If ((NDID == 0x02))
            {

    0586: A0 4D 05 93 4E 44 49 44 0A 02                    // .M..NDID..

                Name (TMP2, 
    0590: 08 54 4D 50 32                                   // .TMP2

Package (0x02)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMP2 [Zero] = 
    0595: 12 0C 02 0C FF FF FF FF 0C FF FF FF FF 70        // .............p

(0x00010000 | DID1)

    05A3: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 32  // }.....DID1..TMP2
    05B3: 00 00                                            // ..

                If ((IMTP == One))
                {

    05B5: A0 14 93 49 4D 54 50 01                          // ...IMTP.

                    TMP2 [One] = 0x0002CA00
                }

    05BD: 70 0C 00 CA 02 00 88 54 4D 50 32 01 00           // p......TMP2..

                Else
                {

    05CA: A1 14                                            // ..

                    TMP2 [One] = 
    05CC: 70                                               // p

(0x00010000 | DID2)
                }


    05CD: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 32  // }.....DID2..TMP2
    05DD: 01 00                                            // ..

                Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
            }


    05DF: A4 54 4D 50 32                                   // .TMP2

            If ((NDID == 0x03))
            {

    05E4: A0 47 07 93 4E 44 49 44 0A 03                    // .G..NDID..

                Name (TMP3, 
    05EE: 08 54 4D 50 33                                   // .TMP3

Package (0x03)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMP3 [Zero] = 
    05F3: 12 11 03 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    0603: FF FF 70                                         // ..p

(0x00010000 | DID1)
                TMP3 [One] = 
    0606: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 33  // }.....DID1..TMP3
    0616: 00 00 70                                         // ..p

(0x00010000 | DID2)

    0619: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 33  // }.....DID2..TMP3
    0629: 01 00                                            // ..

                If ((IMTP == One))
                {

    062B: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMP3 [0x02] = 0x0002CA00
                }

    0633: 70 0C 00 CA 02 00 88 54 4D 50 33 0A 02 00        // p......TMP3...

                Else
                {

    0641: A1 15                                            // ..

                    TMP3 [0x02] = 
    0643: 70                                               // p

(0x00010000 | DID3)
                }


    0644: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 33  // }.....DID3..TMP3
    0654: 0A 02 00                                         // ...

                Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
            }


    0657: A4 54 4D 50 33                                   // .TMP3

            If ((NDID == 0x04))
            {

    065C: A0 40 09 93 4E 44 49 44 0A 04                    // .@..NDID..

                Name (TMP4, 
    0666: 08 54 4D 50 34                                   // .TMP4

Package (0x04)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMP4 [Zero] = 
    066B: 12 16 04 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    067B: FF FF 0C FF FF FF FF 70                          // .......p

(0x00010000 | DID1)
                TMP4 [One] = 
    0683: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 34  // }.....DID1..TMP4
    0693: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMP4 [0x02] = 
    0696: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 34  // }.....DID2..TMP4
    06A6: 01 00 70                                         // ..p

(0x00010000 | DID3)

    06A9: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 34  // }.....DID3..TMP4
    06B9: 0A 02 00                                         // ...

                If ((IMTP == One))
                {

    06BC: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMP4 [0x03] = 0x0002CA00
                }

    06C4: 70 0C 00 CA 02 00 88 54 4D 50 34 0A 03 00        // p......TMP4...

                Else
                {

    06D2: A1 15                                            // ..

                    TMP4 [0x03] = 
    06D4: 70                                               // p

(0x00010000 | DID4)
                }


    06D5: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 34  // }.....DID4..TMP4
    06E5: 0A 03 00                                         // ...

                Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
            }


    06E8: A4 54 4D 50 34                                   // .TMP4

            If ((NDID == 0x05))
            {

    06ED: A0 49 0A 93 4E 44 49 44 0A 05                    // .I..NDID..

                Name (TMP5, 
    06F7: 08 54 4D 50 35                                   // .TMP5

Package (0x05)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMP5 [Zero] = 
    06FC: 12 1B 05 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    070C: FF FF 0C FF FF FF FF 0C FF FF FF FF 70           // ............p

(0x00010000 | DID1)
                TMP5 [One] = 
    0719: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 35  // }.....DID1..TMP5
    0729: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMP5 [0x02] = 
    072C: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 35  // }.....DID2..TMP5
    073C: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMP5 [0x03] = 
    073F: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 35  // }.....DID3..TMP5
    074F: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)

    0753: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 35  // }.....DID4..TMP5
    0763: 0A 03 00                                         // ...

                If ((IMTP == One))
                {

    0766: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMP5 [0x04] = 0x0002CA00
                }

    076E: 70 0C 00 CA 02 00 88 54 4D 50 35 0A 04 00        // p......TMP5...

                Else
                {

    077C: A1 15                                            // ..

                    TMP5 [0x04] = 
    077E: 70                                               // p

(0x00010000 | DID5)
                }


    077F: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 35  // }.....DID5..TMP5
    078F: 0A 04 00                                         // ...

                Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
            }


    0792: A4 54 4D 50 35                                   // .TMP5

            If ((NDID == 0x06))
            {

    0797: A0 42 0C 93 4E 44 49 44 0A 06                    // .B..NDID..

                Name (TMP6, 
    07A1: 08 54 4D 50 36                                   // .TMP6

Package (0x06)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMP6 [Zero] = 
    07A6: 12 20 06 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // . ..............
    07B6: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    07C6: FF 70                                            // .p

(0x00010000 | DID1)
                TMP6 [One] = 
    07C8: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 36  // }.....DID1..TMP6
    07D8: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMP6 [0x02] = 
    07DB: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 36  // }.....DID2..TMP6
    07EB: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMP6 [0x03] = 
    07EE: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 36  // }.....DID3..TMP6
    07FE: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMP6 [0x04] = 
    0802: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 36  // }.....DID4..TMP6
    0812: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)

    0816: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 36  // }.....DID5..TMP6
    0826: 0A 04 00                                         // ...

                If ((IMTP == One))
                {

    0829: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMP6 [0x05] = 0x0002CA00
                }

    0831: 70 0C 00 CA 02 00 88 54 4D 50 36 0A 05 00        // p......TMP6...

                Else
                {

    083F: A1 15                                            // ..

                    TMP6 [0x05] = 
    0841: 70                                               // p

(0x00010000 | DID6)
                }


    0842: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 36  // }.....DID6..TMP6
    0852: 0A 05 00                                         // ...

                Return (TMP6) /* \_SB_.PCI0.GFX0._DOD.TMP6 */
            }


    0855: A4 54 4D 50 36                                   // .TMP6

            If ((NDID == 0x07))
            {

    085A: A0 4B 0D 93 4E 44 49 44 0A 07                    // .K..NDID..

                Name (TMP7, 
    0864: 08 54 4D 50 37                                   // .TMP7

Package (0x07)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMP7 [Zero] = 
    0869: 12 25 07 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .%..............
    0879: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0889: FF 0C FF FF FF FF 70                             // ......p

(0x00010000 | DID1)
                TMP7 [One] = 
    0890: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 37  // }.....DID1..TMP7
    08A0: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMP7 [0x02] = 
    08A3: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 37  // }.....DID2..TMP7
    08B3: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMP7 [0x03] = 
    08B6: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 37  // }.....DID3..TMP7
    08C6: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMP7 [0x04] = 
    08CA: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 37  // }.....DID4..TMP7
    08DA: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMP7 [0x05] = 
    08DE: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 37  // }.....DID5..TMP7
    08EE: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)

    08F2: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 37  // }.....DID6..TMP7
    0902: 0A 05 00                                         // ...

                If ((IMTP == One))
                {

    0905: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMP7 [0x06] = 0x0002CA00
                }

    090D: 70 0C 00 CA 02 00 88 54 4D 50 37 0A 06 00        // p......TMP7...

                Else
                {

    091B: A1 15                                            // ..

                    TMP7 [0x06] = 
    091D: 70                                               // p

(0x00010000 | DID7)
                }


    091E: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 37  // }.....DID7..TMP7
    092E: 0A 06 00                                         // ...

                Return (TMP7) /* \_SB_.PCI0.GFX0._DOD.TMP7 */
            }


    0931: A4 54 4D 50 37                                   // .TMP7

            If ((NDID == 0x08))
            {

    0936: A0 44 0F 93 4E 44 49 44 0A 08                    // .D..NDID..

                Name (TMP8, 
    0940: 08 54 4D 50 38                                   // .TMP8

Package (0x08)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMP8 [Zero] = 
    0945: 12 2A 08 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .*..............
    0955: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0965: FF 0C FF FF FF FF 0C FF FF FF FF 70              // ...........p

(0x00010000 | DID1)
                TMP8 [One] = 
    0971: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 38  // }.....DID1..TMP8
    0981: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMP8 [0x02] = 
    0984: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 38  // }.....DID2..TMP8
    0994: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMP8 [0x03] = 
    0997: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 38  // }.....DID3..TMP8
    09A7: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMP8 [0x04] = 
    09AB: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 38  // }.....DID4..TMP8
    09BB: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMP8 [0x05] = 
    09BF: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 38  // }.....DID5..TMP8
    09CF: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMP8 [0x06] = 
    09D3: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 38  // }.....DID6..TMP8
    09E3: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)

    09E7: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 38  // }.....DID7..TMP8
    09F7: 0A 06 00                                         // ...

                If ((IMTP == One))
                {

    09FA: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMP8 [0x07] = 0x0002CA00
                }

    0A02: 70 0C 00 CA 02 00 88 54 4D 50 38 0A 07 00        // p......TMP8...

                Else
                {

    0A10: A1 15                                            // ..

                    TMP8 [0x07] = 
    0A12: 70                                               // p

(0x00010000 | DID8)
                }


    0A13: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 38  // }.....DID8..TMP8
    0A23: 0A 07 00                                         // ...

                Return (TMP8) /* \_SB_.PCI0.GFX0._DOD.TMP8 */
            }


    0A26: A4 54 4D 50 38                                   // .TMP8

            If ((NDID == 0x09))
            {

    0A2B: A0 4D 10 93 4E 44 49 44 0A 09                    // .M..NDID..

                Name (TMP9, 
    0A35: 08 54 4D 50 39                                   // .TMP9

Package (0x09)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMP9 [Zero] = 
    0A3A: 12 2F 09 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ./..............
    0A4A: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0A5A: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0A6A: 70                                               // p

(0x00010000 | DID1)
                TMP9 [One] = 
    0A6B: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 39  // }.....DID1..TMP9
    0A7B: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMP9 [0x02] = 
    0A7E: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 39  // }.....DID2..TMP9
    0A8E: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMP9 [0x03] = 
    0A91: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 39  // }.....DID3..TMP9
    0AA1: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMP9 [0x04] = 
    0AA5: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 39  // }.....DID4..TMP9
    0AB5: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMP9 [0x05] = 
    0AB9: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 39  // }.....DID5..TMP9
    0AC9: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMP9 [0x06] = 
    0ACD: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 39  // }.....DID6..TMP9
    0ADD: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)
                TMP9 [0x07] = 
    0AE1: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 39  // }.....DID7..TMP9
    0AF1: 0A 06 00 70                                      // ...p

(0x00010000 | DID8)

    0AF5: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 39  // }.....DID8..TMP9
    0B05: 0A 07 00                                         // ...

                If ((IMTP == One))
                {

    0B08: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMP9 [0x08] = 0x0002CA00
                }

    0B10: 70 0C 00 CA 02 00 88 54 4D 50 39 0A 08 00        // p......TMP9...

                Else
                {

    0B1E: A1 15                                            // ..

                    TMP9 [0x08] = 
    0B20: 70                                               // p

(0x00010000 | DID9)
                }


    0B21: 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 39  // }.....DID9..TMP9
    0B31: 0A 08 00                                         // ...

                Return (TMP9) /* \_SB_.PCI0.GFX0._DOD.TMP9 */
            }


    0B34: A4 54 4D 50 39                                   // .TMP9

            If ((NDID == 0x0A))
            {

    0B39: A0 46 12 93 4E 44 49 44 0A 0A                    // .F..NDID..

                Name (TMPA, 
    0B43: 08 54 4D 50 41                                   // .TMPA

Package (0x0A)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMPA [Zero] = 
    0B48: 12 34 0A 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .4..............
    0B58: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0B68: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0B78: 0C FF FF FF FF 70                                // .....p

(0x00010000 | DID1)
                TMPA [One] = 
    0B7E: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 41  // }.....DID1..TMPA
    0B8E: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMPA [0x02] = 
    0B91: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 41  // }.....DID2..TMPA
    0BA1: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMPA [0x03] = 
    0BA4: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 41  // }.....DID3..TMPA
    0BB4: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMPA [0x04] = 
    0BB8: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 41  // }.....DID4..TMPA
    0BC8: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMPA [0x05] = 
    0BCC: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 41  // }.....DID5..TMPA
    0BDC: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMPA [0x06] = 
    0BE0: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 41  // }.....DID6..TMPA
    0BF0: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)
                TMPA [0x07] = 
    0BF4: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 41  // }.....DID7..TMPA
    0C04: 0A 06 00 70                                      // ...p

(0x00010000 | DID8)
                TMPA [0x08] = 
    0C08: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 41  // }.....DID8..TMPA
    0C18: 0A 07 00 70                                      // ...p

(0x00010000 | DID9)

    0C1C: 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 41  // }.....DID9..TMPA
    0C2C: 0A 08 00                                         // ...

                If ((IMTP == One))
                {

    0C2F: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMPA [0x09] = 0x0002CA00
                }

    0C37: 70 0C 00 CA 02 00 88 54 4D 50 41 0A 09 00        // p......TMPA...

                Else
                {

    0C45: A1 15                                            // ..

                    TMPA [0x09] = 
    0C47: 70                                               // p

(0x00010000 | DIDA)
                }


    0C48: 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50 41  // }.....DIDA..TMPA
    0C58: 0A 09 00                                         // ...

                Return (TMPA) /* \_SB_.PCI0.GFX0._DOD.TMPA */
            }


    0C5B: A4 54 4D 50 41                                   // .TMPA

            If ((NDID == 0x0B))
            {

    0C60: A0 4F 13 93 4E 44 49 44 0A 0B                    // .O..NDID..

                Name (TMPB, 
    0C6A: 08 54 4D 50 42                                   // .TMPB

Package (0x0B)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMPB [Zero] = 
    0C6F: 12 39 0B 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .9..............
    0C7F: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0C8F: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0C9F: 0C FF FF FF FF 0C FF FF FF FF 70                 // ..........p

(0x00010000 | DID1)
                TMPB [One] = 
    0CAA: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 42  // }.....DID1..TMPB
    0CBA: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMPB [0x02] = 
    0CBD: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 42  // }.....DID2..TMPB
    0CCD: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMPB [0x03] = 
    0CD0: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 42  // }.....DID3..TMPB
    0CE0: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMPB [0x04] = 
    0CE4: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 42  // }.....DID4..TMPB
    0CF4: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMPB [0x05] = 
    0CF8: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 42  // }.....DID5..TMPB
    0D08: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMPB [0x06] = 
    0D0C: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 42  // }.....DID6..TMPB
    0D1C: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)
                TMPB [0x07] = 
    0D20: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 42  // }.....DID7..TMPB
    0D30: 0A 06 00 70                                      // ...p

(0x00010000 | DID8)
                TMPB [0x08] = 
    0D34: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 42  // }.....DID8..TMPB
    0D44: 0A 07 00 70                                      // ...p

(0x00010000 | DID9)
                TMPB [0x09] = 
    0D48: 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 42  // }.....DID9..TMPB
    0D58: 0A 08 00 70                                      // ...p

(0x00010000 | DIDA)

    0D5C: 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50 42  // }.....DIDA..TMPB
    0D6C: 0A 09 00                                         // ...

                If ((IMTP == One))
                {

    0D6F: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMPB [0x0A] = 0x0002CA00
                }

    0D77: 70 0C 00 CA 02 00 88 54 4D 50 42 0A 0A 00        // p......TMPB...

                Else
                {

    0D85: A1 15                                            // ..

                    TMPB [0x0A] = 
    0D87: 70                                               // p

(0x00010000 | DIDB)
                }


    0D88: 7D 0C 00 00 01 00 44 49 44 42 00 88 54 4D 50 42  // }.....DIDB..TMPB
    0D98: 0A 0A 00                                         // ...

                Return (TMPB) /* \_SB_.PCI0.GFX0._DOD.TMPB */
            }


    0D9B: A4 54 4D 50 42                                   // .TMPB

            If ((NDID == 0x0C))
            {

    0DA0: A0 48 15 93 4E 44 49 44 0A 0C                    // .H..NDID..

                Name (TMPC, 
    0DAA: 08 54 4D 50 43                                   // .TMPC

Package (0x0C)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMPC [Zero] = 
    0DAF: 12 3E 0C 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .>..............
    0DBF: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0DCF: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0DDF: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70  // ...............p

(0x00010000 | DID1)
                TMPC [One] = 
    0DEF: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 43  // }.....DID1..TMPC
    0DFF: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMPC [0x02] = 
    0E02: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 43  // }.....DID2..TMPC
    0E12: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMPC [0x03] = 
    0E15: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 43  // }.....DID3..TMPC
    0E25: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMPC [0x04] = 
    0E29: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 43  // }.....DID4..TMPC
    0E39: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMPC [0x05] = 
    0E3D: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 43  // }.....DID5..TMPC
    0E4D: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMPC [0x06] = 
    0E51: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 43  // }.....DID6..TMPC
    0E61: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)
                TMPC [0x07] = 
    0E65: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 43  // }.....DID7..TMPC
    0E75: 0A 06 00 70                                      // ...p

(0x00010000 | DID8)
                TMPC [0x08] = 
    0E79: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 43  // }.....DID8..TMPC
    0E89: 0A 07 00 70                                      // ...p

(0x00010000 | DID9)
                TMPC [0x09] = 
    0E8D: 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 43  // }.....DID9..TMPC
    0E9D: 0A 08 00 70                                      // ...p

(0x00010000 | DIDA)
                TMPC [0x0A] = 
    0EA1: 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50 43  // }.....DIDA..TMPC
    0EB1: 0A 09 00 70                                      // ...p

(0x00010000 | DIDB)

    0EB5: 7D 0C 00 00 01 00 44 49 44 42 00 88 54 4D 50 43  // }.....DIDB..TMPC
    0EC5: 0A 0A 00                                         // ...

                If ((IMTP == One))
                {

    0EC8: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMPC [0x0B] = 0x0002CA00
                }

    0ED0: 70 0C 00 CA 02 00 88 54 4D 50 43 0A 0B 00        // p......TMPC...

                Else
                {

    0EDE: A1 15                                            // ..

                    TMPC [0x0B] = 
    0EE0: 70                                               // p

(0x00010000 | DIDC)
                }


    0EE1: 7D 0C 00 00 01 00 44 49 44 43 00 88 54 4D 50 43  // }.....DIDC..TMPC
    0EF1: 0A 0B 00                                         // ...

                Return (TMPC) /* \_SB_.PCI0.GFX0._DOD.TMPC */
            }


    0EF4: A4 54 4D 50 43                                   // .TMPC

            If ((NDID == 0x0D))
            {

    0EF9: A0 42 17 93 4E 44 49 44 0A 0D                    // .B..NDID..

                Name (TMPD, 
    0F03: 08 54 4D 50 44                                   // .TMPD

Package (0x0D)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMPD [Zero] = 
    0F08: 12 44 04 0D 0C FF FF FF FF 0C FF FF FF FF 0C FF  // .D..............
    0F18: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    0F28: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0F38: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0F48: 0C FF FF FF FF 70                                // .....p

(0x00010000 | DID1)
                TMPD [One] = 
    0F4E: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 44  // }.....DID1..TMPD
    0F5E: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMPD [0x02] = 
    0F61: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 44  // }.....DID2..TMPD
    0F71: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMPD [0x03] = 
    0F74: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 44  // }.....DID3..TMPD
    0F84: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMPD [0x04] = 
    0F88: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 44  // }.....DID4..TMPD
    0F98: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMPD [0x05] = 
    0F9C: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 44  // }.....DID5..TMPD
    0FAC: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMPD [0x06] = 
    0FB0: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 44  // }.....DID6..TMPD
    0FC0: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)
                TMPD [0x07] = 
    0FC4: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 44  // }.....DID7..TMPD
    0FD4: 0A 06 00 70                                      // ...p

(0x00010000 | DID8)
                TMPD [0x08] = 
    0FD8: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 44  // }.....DID8..TMPD
    0FE8: 0A 07 00 70                                      // ...p

(0x00010000 | DID9)
                TMPD [0x09] = 
    0FEC: 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 44  // }.....DID9..TMPD
    0FFC: 0A 08 00 70                                      // ...p

(0x00010000 | DIDA)
                TMPD [0x0A] = 
    1000: 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50 44  // }.....DIDA..TMPD
    1010: 0A 09 00 70                                      // ...p

(0x00010000 | DIDB)
                TMPD [0x0B] = 
    1014: 7D 0C 00 00 01 00 44 49 44 42 00 88 54 4D 50 44  // }.....DIDB..TMPD
    1024: 0A 0A 00 70                                      // ...p

(0x00010000 | DIDC)

    1028: 7D 0C 00 00 01 00 44 49 44 43 00 88 54 4D 50 44  // }.....DIDC..TMPD
    1038: 0A 0B 00                                         // ...

                If ((IMTP == One))
                {

    103B: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMPD [0x0C] = 0x0002CA00
                }

    1043: 70 0C 00 CA 02 00 88 54 4D 50 44 0A 0C 00        // p......TMPD...

                Else
                {

    1051: A1 15                                            // ..

                    TMPD [0x0C] = 
    1053: 70                                               // p

(0x00010000 | DIDD)
                }


    1054: 7D 0C 00 00 01 00 44 49 44 44 00 88 54 4D 50 44  // }.....DIDD..TMPD
    1064: 0A 0C 00                                         // ...

                Return (TMPD) /* \_SB_.PCI0.GFX0._DOD.TMPD */
            }


    1067: A4 54 4D 50 44                                   // .TMPD

            If ((NDID == 0x0E))
            {

    106C: A0 4B 18 93 4E 44 49 44 0A 0E                    // .K..NDID..

                Name (TMPE, 
    1076: 08 54 4D 50 45                                   // .TMPE

Package (0x0E)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMPE [Zero] = 
    107B: 12 49 04 0E 0C FF FF FF FF 0C FF FF FF FF 0C FF  // .I..............
    108B: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    109B: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    10AB: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    10BB: 0C FF FF FF FF 0C FF FF FF FF 70                 // ..........p

(0x00010000 | DID1)
                TMPE [One] = 
    10C6: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 45  // }.....DID1..TMPE
    10D6: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMPE [0x02] = 
    10D9: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 45  // }.....DID2..TMPE
    10E9: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMPE [0x03] = 
    10EC: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 45  // }.....DID3..TMPE
    10FC: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMPE [0x04] = 
    1100: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 45  // }.....DID4..TMPE
    1110: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMPE [0x05] = 
    1114: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 45  // }.....DID5..TMPE
    1124: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMPE [0x06] = 
    1128: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 45  // }.....DID6..TMPE
    1138: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)
                TMPE [0x07] = 
    113C: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 45  // }.....DID7..TMPE
    114C: 0A 06 00 70                                      // ...p

(0x00010000 | DID8)
                TMPE [0x08] = 
    1150: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 45  // }.....DID8..TMPE
    1160: 0A 07 00 70                                      // ...p

(0x00010000 | DID9)
                TMPE [0x09] = 
    1164: 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 45  // }.....DID9..TMPE
    1174: 0A 08 00 70                                      // ...p

(0x00010000 | DIDA)
                TMPE [0x0A] = 
    1178: 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50 45  // }.....DIDA..TMPE
    1188: 0A 09 00 70                                      // ...p

(0x00010000 | DIDB)
                TMPE [0x0B] = 
    118C: 7D 0C 00 00 01 00 44 49 44 42 00 88 54 4D 50 45  // }.....DIDB..TMPE
    119C: 0A 0A 00 70                                      // ...p

(0x00010000 | DIDC)
                TMPE [0x0C] = 
    11A0: 7D 0C 00 00 01 00 44 49 44 43 00 88 54 4D 50 45  // }.....DIDC..TMPE
    11B0: 0A 0B 00 70                                      // ...p

(0x00010000 | DIDD)

    11B4: 7D 0C 00 00 01 00 44 49 44 44 00 88 54 4D 50 45  // }.....DIDD..TMPE
    11C4: 0A 0C 00                                         // ...

                If ((IMTP == One))
                {

    11C7: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMPE [0x0D] = 0x0002CA00
                }

    11CF: 70 0C 00 CA 02 00 88 54 4D 50 45 0A 0D 00        // p......TMPE...

                Else
                {

    11DD: A1 15                                            // ..

                    TMPE [0x0D] = 
    11DF: 70                                               // p

(0x00010000 | DIDE)
                }


    11E0: 7D 0C 00 00 01 00 44 49 44 45 00 88 54 4D 50 45  // }.....DIDE..TMPE
    11F0: 0A 0D 00                                         // ...

                Return (TMPE) /* \_SB_.PCI0.GFX0._DOD.TMPE */
            }


    11F3: A4 54 4D 50 45                                   // .TMPE

            If ((NDID == 0x0F))
            {

    11F8: A0 44 1A 93 4E 44 49 44 0A 0F                    // .D..NDID..

                Name (TMPF, 
    1202: 08 54 4D 50 46                                   // .TMPF

Package (0x0F)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMPF [Zero] = 
    1207: 12 4E 04 0F 0C FF FF FF FF 0C FF FF FF FF 0C FF  // .N..............
    1217: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    1227: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    1237: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    1247: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70  // ...............p

(0x00010000 | DID1)
                TMPF [One] = 
    1257: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 46  // }.....DID1..TMPF
    1267: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMPF [0x02] = 
    126A: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 46  // }.....DID2..TMPF
    127A: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMPF [0x03] = 
    127D: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 46  // }.....DID3..TMPF
    128D: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMPF [0x04] = 
    1291: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 46  // }.....DID4..TMPF
    12A1: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMPF [0x05] = 
    12A5: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 46  // }.....DID5..TMPF
    12B5: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMPF [0x06] = 
    12B9: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 46  // }.....DID6..TMPF
    12C9: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)
                TMPF [0x07] = 
    12CD: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 46  // }.....DID7..TMPF
    12DD: 0A 06 00 70                                      // ...p

(0x00010000 | DID8)
                TMPF [0x08] = 
    12E1: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 46  // }.....DID8..TMPF
    12F1: 0A 07 00 70                                      // ...p

(0x00010000 | DID9)
                TMPF [0x09] = 
    12F5: 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 46  // }.....DID9..TMPF
    1305: 0A 08 00 70                                      // ...p

(0x00010000 | DIDA)
                TMPF [0x0A] = 
    1309: 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50 46  // }.....DIDA..TMPF
    1319: 0A 09 00 70                                      // ...p

(0x00010000 | DIDB)
                TMPF [0x0B] = 
    131D: 7D 0C 00 00 01 00 44 49 44 42 00 88 54 4D 50 46  // }.....DIDB..TMPF
    132D: 0A 0A 00 70                                      // ...p

(0x00010000 | DIDC)
                TMPF [0x0C] = 
    1331: 7D 0C 00 00 01 00 44 49 44 43 00 88 54 4D 50 46  // }.....DIDC..TMPF
    1341: 0A 0B 00 70                                      // ...p

(0x00010000 | DIDD)
                TMPF [0x0D] = 
    1345: 7D 0C 00 00 01 00 44 49 44 44 00 88 54 4D 50 46  // }.....DIDD..TMPF
    1355: 0A 0C 00 70                                      // ...p

(0x00010000 | DIDE)

    1359: 7D 0C 00 00 01 00 44 49 44 45 00 88 54 4D 50 46  // }.....DIDE..TMPF
    1369: 0A 0D 00                                         // ...

                If ((IMTP == One))
                {

    136C: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    TMPF [0x0E] = 0x0002CA00
                }

    1374: 70 0C 00 CA 02 00 88 54 4D 50 46 0A 0E 00        // p......TMPF...

                Else
                {

    1382: A1 15                                            // ..

                    TMPF [0x0E] = 
    1384: 70                                               // p

(0x00010000 | DIDF)
                }


    1385: 7D 0C 00 00 01 00 44 49 44 46 00 88 54 4D 50 46  // }.....DIDF..TMPF
    1395: 0A 0E 00                                         // ...

                Return (TMPF) /* \_SB_.PCI0.GFX0._DOD.TMPF */
            }


    1398: A4 54 4D 50 46                                   // .TMPF

            If ((NDID == 0x10))
            {

    139D: A0 4F 19 93 4E 44 49 44 0A 10                    // .O..NDID..

                Name (TMPG, 
    13A7: 08 54 4D 50 47                                   // .TMPG

Package (0x10)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                TMPG [Zero] = 
    13AC: 12 43 05 10 0C FF FF FF FF 0C FF FF FF FF 0C FF  // .C..............
    13BC: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    13CC: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    13DC: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    13EC: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    13FC: FF FF FF FF 70                                   // ....p

(0x00010000 | DID1)
                TMPG [One] = 
    1401: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 47  // }.....DID1..TMPG
    1411: 00 00 70                                         // ..p

(0x00010000 | DID2)
                TMPG [0x02] = 
    1414: 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50 47  // }.....DID2..TMPG
    1424: 01 00 70                                         // ..p

(0x00010000 | DID3)
                TMPG [0x03] = 
    1427: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 47  // }.....DID3..TMPG
    1437: 0A 02 00 70                                      // ...p

(0x00010000 | DID4)
                TMPG [0x04] = 
    143B: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 47  // }.....DID4..TMPG
    144B: 0A 03 00 70                                      // ...p

(0x00010000 | DID5)
                TMPG [0x05] = 
    144F: 7D 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 47  // }.....DID5..TMPG
    145F: 0A 04 00 70                                      // ...p

(0x00010000 | DID6)
                TMPG [0x06] = 
    1463: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 47  // }.....DID6..TMPG
    1473: 0A 05 00 70                                      // ...p

(0x00010000 | DID7)
                TMPG [0x07] = 
    1477: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 47  // }.....DID7..TMPG
    1487: 0A 06 00 70                                      // ...p

(0x00010000 | DID8)
                TMPG [0x08] = 
    148B: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 47  // }.....DID8..TMPG
    149B: 0A 07 00 70                                      // ...p

(0x00010000 | DID9)
                TMPG [0x09] = 
    149F: 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 47  // }.....DID9..TMPG
    14AF: 0A 08 00 70                                      // ...p

(0x00010000 | DIDA)
                TMPG [0x0A] = 
    14B3: 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50 47  // }.....DIDA..TMPG
    14C3: 0A 09 00 70                                      // ...p

(0x00010000 | DIDB)
                TMPG [0x0B] = 
    14C7: 7D 0C 00 00 01 00 44 49 44 42 00 88 54 4D 50 47  // }.....DIDB..TMPG
    14D7: 0A 0A 00 70                                      // ...p

(0x00010000 | DIDC)
                TMPG [0x0C] = 
    14DB: 7D 0C 00 00 01 00 44 49 44 43 00 88 54 4D 50 47  // }.....DIDC..TMPG
    14EB: 0A 0B 00 70                                      // ...p

(0x00010000 | DIDD)
                TMPG [0x0D] = 
    14EF: 7D 0C 00 00 01 00 44 49 44 44 00 88 54 4D 50 47  // }.....DIDD..TMPG
    14FF: 0A 0C 00 70                                      // ...p

(0x00010000 | DIDE)
                TMPG [0x0E] = 
    1503: 7D 0C 00 00 01 00 44 49 44 45 00 88 54 4D 50 47  // }.....DIDE..TMPG
    1513: 0A 0D 00 70                                      // ...p

(0x00010000 | DIDF)
                TMPG [0x0F] = 0x0002CA00

    1517: 7D 0C 00 00 01 00 44 49 44 46 00 88 54 4D 50 47  // }.....DIDF..TMPG
    1527: 0A 0E 00 70 0C 00 CA 02 00 88 54 4D 50 47 0A 0F  // ...p......TMPG..
    1537: 00                                               // .

                Return (TMPG) /* \_SB_.PCI0.GFX0._DOD.TMPG */
            }


    1538: A4 54 4D 50 47                                   // .TMPG

            Return (
    153D: A4                                               // .

Package (0x01)
            {
                0x0400
            })
        }


    153E: 12 05 01 0B 00 04                                // ......

        Device (DD01)
        {

    1544: 5B 82 42 09 44 44 30 31                          // [.B.DD01

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    154C: 14 46 04 5F 41 44 52 08                          // .F._ADR.

                If (((0x0F00 & DID1) == 0x0400))
                {
                    EDPV = One
                    NXDX = NXD1 /* \NXD1 */
                    DIDX = DID1 /* \DID1 */

    1554: A0 28 93 7B 0B 00 0F 44 49 44 31 00 0B 00 04 70  // .(.{...DID1....p
    1564: 01 45 44 50 56 70 4E 58 44 31 4E 58 44 58 70 44  // .EDPVpNXD1NXDXpD
    1574: 49 44 31 44 49 44 58                             // ID1DIDX

                    Return (One)
                }


    157B: A4 01                                            // ..

                If ((DID1 == Zero))
                {

    157D: A0 09 93 44 49 44 31 00                          // ...DID1.

                    Return (One)
                }

    1585: A4 01                                            // ..

                Else
                {

    1587: A1 0B                                            // ..

                    Return (
    1589: A4                                               // .

(0xFFFF & DID1))
                }
            }


    158A: 7B 0B FF FF 44 49 44 31 00                       // {...DID1.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1593: 14 0F 5F 44 43 53 00                             // .._DCS.

                Return (CDDS (DID1))
            }


    159A: A4 43 44 44 53 44 49 44 31                       // .CDDSDID1

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    15A3: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    15AA: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    15B7: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD1) /* \NXD1 */
                }


    15BE: A4 4E 58 44 31                                   // .NXD1

                Return (NDDS (DID1))
            }


    15C3: A4 4E 44 44 53 44 49 44 31                       // .NDDSDID1

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    15CC: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD02)
        {

    15D8: 5B 82 40 0D 44 44 30 32                          // [.@.DD02

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    15E0: 14 4A 07 5F 41 44 52 08                          // .J._ADR.

                If (((0x0F00 & DID2) == 0x0400))
                {

    15E8: A0 4B 05 93 7B 0B 00 0F 44 49 44 32 00 0B 00 04  // .K..{...DID2....

                    If ((WCOS == One))
                    {

    15F8: A0 2F 93 57 43 4F 53 01                          // ./.WCOS.

                        If (((0x0F & DID2) == One))
                        {
                            EDPV = 0x02
                            NXDY = NXD2 /* \NXD2 */
                            DIDY = DID2 /* \DID2 */

    1600: A0 27 93 7B 0A 0F 44 49 44 32 00 01 70 0A 02 45  // .'.{..DID2..p..E
    1610: 44 50 56 70 4E 58 44 32 4E 58 44 59 70 44 49 44  // DPVpNXD2NXDYpDID
    1620: 32 44 49 44 59                                   // 2DIDY

                            Return (0x02)
                        }
                    }

                    EDPV = 0x02
                    NXDX = NXD2 /* \NXD2 */
                    DIDX = DID2 /* \DID2 */

    1625: A4 0A 02 70 0A 02 45 44 50 56 70 4E 58 44 32 4E  // ...p..EDPVpNXD2N
    1635: 58 44 58 70 44 49 44 32 44 49 44 58              // XDXpDID2DIDX

                    Return (0x02)
                }


    1641: A4 0A 02                                         // ...

                If ((DID2 == Zero))
                {

    1644: A0 0A 93 44 49 44 32 00                          // ...DID2.

                    Return (0x02)
                }

    164C: A4 0A 02                                         // ...

                Else
                {

    164F: A1 0B                                            // ..

                    Return (
    1651: A4                                               // .

(0xFFFF & DID2))
                }
            }


    1652: 7B 0B FF FF 44 49 44 32 00                       // {...DID2.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    165B: 14 19 5F 44 43 53 00                             // .._DCS.

                If ((LIDS == Zero))
                {

    1662: A0 09 93 4C 49 44 53 00                          // ...LIDS.

                    Return (Zero)
                }


    166A: A4 00                                            // ..

                Return (CDDS (DID2))
            }


    166C: A4 43 44 44 53 44 49 44 32                       // .CDDSDID2

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1675: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    167C: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1689: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD2) /* \NXD2 */
                }


    1690: A4 4E 58 44 32                                   // .NXD2

                Return (NDDS (DID2))
            }


    1695: A4 4E 44 44 53 44 49 44 32                       // .NDDSDID2

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    169E: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD03)
        {

    16AA: 5B 82 42 0A 44 44 30 33                          // [.B.DD03

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    16B2: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DID3) == 0x0400))
                {
                    EDPV = 0x03
                    NXDX = NXD3 /* \NXD3 */
                    DIDX = DID3 /* \DID3 */

    16BA: A0 2A 93 7B 0B 00 0F 44 49 44 33 00 0B 00 04 70  // .*.{...DID3....p
    16CA: 0A 03 45 44 50 56 70 4E 58 44 33 4E 58 44 58 70  // ..EDPVpNXD3NXDXp
    16DA: 44 49 44 33 44 49 44 58                          // DID3DIDX

                    Return (0x03)
                }


    16E2: A4 0A 03                                         // ...

                If ((DID3 == Zero))
                {

    16E5: A0 0A 93 44 49 44 33 00                          // ...DID3.

                    Return (0x03)
                }

    16ED: A4 0A 03                                         // ...

                Else
                {

    16F0: A1 0B                                            // ..

                    Return (
    16F2: A4                                               // .

(0xFFFF & DID3))
                }
            }


    16F3: 7B 0B FF FF 44 49 44 33 00                       // {...DID3.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    16FC: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DID3 == Zero))
                {

    1703: A0 0A 93 44 49 44 33 00                          // ...DID3.

                    Return (0x0B)
                }

    170B: A4 0A 0B                                         // ...

                Else
                {

    170E: A1 0A                                            // ..

                    Return (CDDS (DID3))
                }
            }


    1710: A4 43 44 44 53 44 49 44 33                       // .CDDSDID3

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1719: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1720: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    172D: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD3) /* \NXD3 */
                }


    1734: A4 4E 58 44 33                                   // .NXD3

                Return (NDDS (DID3))
            }


    1739: A4 4E 44 44 53 44 49 44 33                       // .NDDSDID3

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1742: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD04)
        {

    174E: 5B 82 42 0A 44 44 30 34                          // [.B.DD04

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1756: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DID4) == 0x0400))
                {
                    EDPV = 0x04
                    NXDX = NXD4 /* \NXD4 */
                    DIDX = DID4 /* \DID4 */

    175E: A0 2A 93 7B 0B 00 0F 44 49 44 34 00 0B 00 04 70  // .*.{...DID4....p
    176E: 0A 04 45 44 50 56 70 4E 58 44 34 4E 58 44 58 70  // ..EDPVpNXD4NXDXp
    177E: 44 49 44 34 44 49 44 58                          // DID4DIDX

                    Return (0x04)
                }


    1786: A4 0A 04                                         // ...

                If ((DID4 == Zero))
                {

    1789: A0 0A 93 44 49 44 34 00                          // ...DID4.

                    Return (0x04)
                }

    1791: A4 0A 04                                         // ...

                Else
                {

    1794: A1 0B                                            // ..

                    Return (
    1796: A4                                               // .

(0xFFFF & DID4))
                }
            }


    1797: 7B 0B FF FF 44 49 44 34 00                       // {...DID4.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    17A0: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DID4 == Zero))
                {

    17A7: A0 0A 93 44 49 44 34 00                          // ...DID4.

                    Return (0x0B)
                }

    17AF: A4 0A 0B                                         // ...

                Else
                {

    17B2: A1 0A                                            // ..

                    Return (CDDS (DID4))
                }
            }


    17B4: A4 43 44 44 53 44 49 44 34                       // .CDDSDID4

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    17BD: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    17C4: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    17D1: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD4) /* \NXD4 */
                }


    17D8: A4 4E 58 44 34                                   // .NXD4

                Return (NDDS (DID4))
            }


    17DD: A4 4E 44 44 53 44 49 44 34                       // .NDDSDID4

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    17E6: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD05)
        {

    17F2: 5B 82 42 0A 44 44 30 35                          // [.B.DD05

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    17FA: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DID5) == 0x0400))
                {
                    EDPV = 0x05
                    NXDX = NXD5 /* \NXD5 */
                    DIDX = DID5 /* \DID5 */

    1802: A0 2A 93 7B 0B 00 0F 44 49 44 35 00 0B 00 04 70  // .*.{...DID5....p
    1812: 0A 05 45 44 50 56 70 4E 58 44 35 4E 58 44 58 70  // ..EDPVpNXD5NXDXp
    1822: 44 49 44 35 44 49 44 58                          // DID5DIDX

                    Return (0x05)
                }


    182A: A4 0A 05                                         // ...

                If ((DID5 == Zero))
                {

    182D: A0 0A 93 44 49 44 35 00                          // ...DID5.

                    Return (0x05)
                }

    1835: A4 0A 05                                         // ...

                Else
                {

    1838: A1 0B                                            // ..

                    Return (
    183A: A4                                               // .

(0xFFFF & DID5))
                }
            }


    183B: 7B 0B FF FF 44 49 44 35 00                       // {...DID5.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1844: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DID5 == Zero))
                {

    184B: A0 0A 93 44 49 44 35 00                          // ...DID5.

                    Return (0x0B)
                }

    1853: A4 0A 0B                                         // ...

                Else
                {

    1856: A1 0A                                            // ..

                    Return (CDDS (DID5))
                }
            }


    1858: A4 43 44 44 53 44 49 44 35                       // .CDDSDID5

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1861: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1868: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1875: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD5) /* \NXD5 */
                }


    187C: A4 4E 58 44 35                                   // .NXD5

                Return (NDDS (DID5))
            }


    1881: A4 4E 44 44 53 44 49 44 35                       // .NDDSDID5

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    188A: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD06)
        {

    1896: 5B 82 42 0A 44 44 30 36                          // [.B.DD06

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    189E: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DID6) == 0x0400))
                {
                    EDPV = 0x06
                    NXDX = NXD6 /* \NXD6 */
                    DIDX = DID6 /* \DID6 */

    18A6: A0 2A 93 7B 0B 00 0F 44 49 44 36 00 0B 00 04 70  // .*.{...DID6....p
    18B6: 0A 06 45 44 50 56 70 4E 58 44 36 4E 58 44 58 70  // ..EDPVpNXD6NXDXp
    18C6: 44 49 44 36 44 49 44 58                          // DID6DIDX

                    Return (0x06)
                }


    18CE: A4 0A 06                                         // ...

                If ((DID6 == Zero))
                {

    18D1: A0 0A 93 44 49 44 36 00                          // ...DID6.

                    Return (0x06)
                }

    18D9: A4 0A 06                                         // ...

                Else
                {

    18DC: A1 0B                                            // ..

                    Return (
    18DE: A4                                               // .

(0xFFFF & DID6))
                }
            }


    18DF: 7B 0B FF FF 44 49 44 36 00                       // {...DID6.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    18E8: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DID6 == Zero))
                {

    18EF: A0 0A 93 44 49 44 36 00                          // ...DID6.

                    Return (0x0B)
                }

    18F7: A4 0A 0B                                         // ...

                Else
                {

    18FA: A1 0A                                            // ..

                    Return (CDDS (DID6))
                }
            }


    18FC: A4 43 44 44 53 44 49 44 36                       // .CDDSDID6

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1905: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    190C: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1919: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD6) /* \NXD6 */
                }


    1920: A4 4E 58 44 36                                   // .NXD6

                Return (NDDS (DID6))
            }


    1925: A4 4E 44 44 53 44 49 44 36                       // .NDDSDID6

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    192E: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD07)
        {

    193A: 5B 82 42 0A 44 44 30 37                          // [.B.DD07

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1942: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DID7) == 0x0400))
                {
                    EDPV = 0x07
                    NXDX = NXD7 /* \NXD7 */
                    DIDX = DID7 /* \DID7 */

    194A: A0 2A 93 7B 0B 00 0F 44 49 44 37 00 0B 00 04 70  // .*.{...DID7....p
    195A: 0A 07 45 44 50 56 70 4E 58 44 37 4E 58 44 58 70  // ..EDPVpNXD7NXDXp
    196A: 44 49 44 37 44 49 44 58                          // DID7DIDX

                    Return (0x07)
                }


    1972: A4 0A 07                                         // ...

                If ((DID7 == Zero))
                {

    1975: A0 0A 93 44 49 44 37 00                          // ...DID7.

                    Return (0x07)
                }

    197D: A4 0A 07                                         // ...

                Else
                {

    1980: A1 0B                                            // ..

                    Return (
    1982: A4                                               // .

(0xFFFF & DID7))
                }
            }


    1983: 7B 0B FF FF 44 49 44 37 00                       // {...DID7.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    198C: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DID7 == Zero))
                {

    1993: A0 0A 93 44 49 44 37 00                          // ...DID7.

                    Return (0x0B)
                }

    199B: A4 0A 0B                                         // ...

                Else
                {

    199E: A1 0A                                            // ..

                    Return (CDDS (DID7))
                }
            }


    19A0: A4 43 44 44 53 44 49 44 37                       // .CDDSDID7

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    19A9: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    19B0: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    19BD: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD7) /* \NXD7 */
                }


    19C4: A4 4E 58 44 37                                   // .NXD7

                Return (NDDS (DID7))
            }


    19C9: A4 4E 44 44 53 44 49 44 37                       // .NDDSDID7

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    19D2: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD08)
        {

    19DE: 5B 82 42 0A 44 44 30 38                          // [.B.DD08

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    19E6: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DID8) == 0x0400))
                {
                    EDPV = 0x08
                    NXDX = NXD8 /* \NXD8 */
                    DIDX = DID8 /* \DID8 */

    19EE: A0 2A 93 7B 0B 00 0F 44 49 44 38 00 0B 00 04 70  // .*.{...DID8....p
    19FE: 0A 08 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1A0E: 44 49 44 38 44 49 44 58                          // DID8DIDX

                    Return (0x08)
                }


    1A16: A4 0A 08                                         // ...

                If ((DID8 == Zero))
                {

    1A19: A0 0A 93 44 49 44 38 00                          // ...DID8.

                    Return (0x08)
                }

    1A21: A4 0A 08                                         // ...

                Else
                {

    1A24: A1 0B                                            // ..

                    Return (
    1A26: A4                                               // .

(0xFFFF & DID8))
                }
            }


    1A27: 7B 0B FF FF 44 49 44 38 00                       // {...DID8.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1A30: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DID8 == Zero))
                {

    1A37: A0 0A 93 44 49 44 38 00                          // ...DID8.

                    Return (0x0B)
                }

    1A3F: A4 0A 0B                                         // ...

                Else
                {

    1A42: A1 0A                                            // ..

                    Return (CDDS (DID8))
                }
            }


    1A44: A4 43 44 44 53 44 49 44 38                       // .CDDSDID8

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1A4D: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1A54: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1A61: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1A68: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DID8))
            }


    1A6D: A4 4E 44 44 53 44 49 44 38                       // .NDDSDID8

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1A76: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD09)
        {

    1A82: 5B 82 42 0A 44 44 30 39                          // [.B.DD09

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1A8A: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DID9) == 0x0400))
                {
                    EDPV = 0x09
                    NXDX = NXD8 /* \NXD8 */
                    DIDX = DID9 /* \DID9 */

    1A92: A0 2A 93 7B 0B 00 0F 44 49 44 39 00 0B 00 04 70  // .*.{...DID9....p
    1AA2: 0A 09 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1AB2: 44 49 44 39 44 49 44 58                          // DID9DIDX

                    Return (0x09)
                }


    1ABA: A4 0A 09                                         // ...

                If ((DID9 == Zero))
                {

    1ABD: A0 0A 93 44 49 44 39 00                          // ...DID9.

                    Return (0x09)
                }

    1AC5: A4 0A 09                                         // ...

                Else
                {

    1AC8: A1 0B                                            // ..

                    Return (
    1ACA: A4                                               // .

(0xFFFF & DID9))
                }
            }


    1ACB: 7B 0B FF FF 44 49 44 39 00                       // {...DID9.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1AD4: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DID9 == Zero))
                {

    1ADB: A0 0A 93 44 49 44 39 00                          // ...DID9.

                    Return (0x0B)
                }

    1AE3: A4 0A 0B                                         // ...

                Else
                {

    1AE6: A1 0A                                            // ..

                    Return (CDDS (DID9))
                }
            }


    1AE8: A4 43 44 44 53 44 49 44 39                       // .CDDSDID9

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1AF1: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1AF8: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1B05: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1B0C: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DID9))
            }


    1B11: A4 4E 44 44 53 44 49 44 39                       // .NDDSDID9

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1B1A: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0A)
        {

    1B26: 5B 82 42 0A 44 44 30 41                          // [.B.DD0A

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1B2E: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DIDA) == 0x0400))
                {
                    EDPV = 0x0A
                    NXDX = NXD8 /* \NXD8 */
                    DIDX = DIDA /* \DIDA */

    1B36: A0 2A 93 7B 0B 00 0F 44 49 44 41 00 0B 00 04 70  // .*.{...DIDA....p
    1B46: 0A 0A 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1B56: 44 49 44 41 44 49 44 58                          // DIDADIDX

                    Return (0x0A)
                }


    1B5E: A4 0A 0A                                         // ...

                If ((DIDA == Zero))
                {

    1B61: A0 0A 93 44 49 44 41 00                          // ...DIDA.

                    Return (0x0A)
                }

    1B69: A4 0A 0A                                         // ...

                Else
                {

    1B6C: A1 0B                                            // ..

                    Return (
    1B6E: A4                                               // .

(0xFFFF & DIDA))
                }
            }


    1B6F: 7B 0B FF FF 44 49 44 41 00                       // {...DIDA.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1B78: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DIDA == Zero))
                {

    1B7F: A0 0A 93 44 49 44 41 00                          // ...DIDA.

                    Return (0x0B)
                }

    1B87: A4 0A 0B                                         // ...

                Else
                {

    1B8A: A1 0A                                            // ..

                    Return (CDDS (DIDA))
                }
            }


    1B8C: A4 43 44 44 53 44 49 44 41                       // .CDDSDIDA

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1B95: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1B9C: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1BA9: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1BB0: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDA))
            }


    1BB5: A4 4E 44 44 53 44 49 44 41                       // .NDDSDIDA

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1BBE: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0B)
        {

    1BCA: 5B 82 42 0A 44 44 30 42                          // [.B.DD0B

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1BD2: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DIDB) == 0x0400))
                {
                    EDPV = 0x0B
                    NXDX = NXD8 /* \NXD8 */
                    DIDX = DIDB /* \DIDB */

    1BDA: A0 2A 93 7B 0B 00 0F 44 49 44 42 00 0B 00 04 70  // .*.{...DIDB....p
    1BEA: 0A 0B 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1BFA: 44 49 44 42 44 49 44 58                          // DIDBDIDX

                    Return (0x0B)
                }


    1C02: A4 0A 0B                                         // ...

                If ((DIDB == Zero))
                {

    1C05: A0 0A 93 44 49 44 42 00                          // ...DIDB.

                    Return (0x0B)
                }

    1C0D: A4 0A 0B                                         // ...

                Else
                {

    1C10: A1 0B                                            // ..

                    Return (
    1C12: A4                                               // .

(0xFFFF & DIDB))
                }
            }


    1C13: 7B 0B FF FF 44 49 44 42 00                       // {...DIDB.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1C1C: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DIDB == Zero))
                {

    1C23: A0 0A 93 44 49 44 42 00                          // ...DIDB.

                    Return (0x0B)
                }

    1C2B: A4 0A 0B                                         // ...

                Else
                {

    1C2E: A1 0A                                            // ..

                    Return (CDDS (DIDB))
                }
            }


    1C30: A4 43 44 44 53 44 49 44 42                       // .CDDSDIDB

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1C39: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1C40: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1C4D: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1C54: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDB))
            }


    1C59: A4 4E 44 44 53 44 49 44 42                       // .NDDSDIDB

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1C62: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0C)
        {

    1C6E: 5B 82 42 0A 44 44 30 43                          // [.B.DD0C

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1C76: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DIDC) == 0x0400))
                {
                    EDPV = 0x0C
                    NXDX = NXD8 /* \NXD8 */
                    DIDX = DIDC /* \DIDC */

    1C7E: A0 2A 93 7B 0B 00 0F 44 49 44 43 00 0B 00 04 70  // .*.{...DIDC....p
    1C8E: 0A 0C 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1C9E: 44 49 44 43 44 49 44 58                          // DIDCDIDX

                    Return (0x0C)
                }


    1CA6: A4 0A 0C                                         // ...

                If ((DIDC == Zero))
                {

    1CA9: A0 0A 93 44 49 44 43 00                          // ...DIDC.

                    Return (0x0C)
                }

    1CB1: A4 0A 0C                                         // ...

                Else
                {

    1CB4: A1 0B                                            // ..

                    Return (
    1CB6: A4                                               // .

(0xFFFF & DIDC))
                }
            }


    1CB7: 7B 0B FF FF 44 49 44 43 00                       // {...DIDC.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1CC0: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DIDC == Zero))
                {

    1CC7: A0 0A 93 44 49 44 43 00                          // ...DIDC.

                    Return (0x0C)
                }

    1CCF: A4 0A 0C                                         // ...

                Else
                {

    1CD2: A1 0A                                            // ..

                    Return (CDDS (DIDC))
                }
            }


    1CD4: A4 43 44 44 53 44 49 44 43                       // .CDDSDIDC

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1CDD: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1CE4: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1CF1: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1CF8: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDC))
            }


    1CFD: A4 4E 44 44 53 44 49 44 43                       // .NDDSDIDC

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1D06: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0D)
        {

    1D12: 5B 82 42 0A 44 44 30 44                          // [.B.DD0D

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1D1A: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DIDD) == 0x0400))
                {
                    EDPV = 0x0D
                    NXDX = NXD8 /* \NXD8 */
                    DIDX = DIDD /* \DIDD */

    1D22: A0 2A 93 7B 0B 00 0F 44 49 44 44 00 0B 00 04 70  // .*.{...DIDD....p
    1D32: 0A 0D 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1D42: 44 49 44 44 44 49 44 58                          // DIDDDIDX

                    Return (0x0D)
                }


    1D4A: A4 0A 0D                                         // ...

                If ((DIDD == Zero))
                {

    1D4D: A0 0A 93 44 49 44 44 00                          // ...DIDD.

                    Return (0x0D)
                }

    1D55: A4 0A 0D                                         // ...

                Else
                {

    1D58: A1 0B                                            // ..

                    Return (
    1D5A: A4                                               // .

(0xFFFF & DIDD))
                }
            }


    1D5B: 7B 0B FF FF 44 49 44 44 00                       // {...DIDD.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1D64: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DIDD == Zero))
                {

    1D6B: A0 0A 93 44 49 44 44 00                          // ...DIDD.

                    Return (0x0D)
                }

    1D73: A4 0A 0D                                         // ...

                Else
                {

    1D76: A1 0A                                            // ..

                    Return (CDDS (DIDD))
                }
            }


    1D78: A4 43 44 44 53 44 49 44 44                       // .CDDSDIDD

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1D81: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1D88: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1D95: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1D9C: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDD))
            }


    1DA1: A4 4E 44 44 53 44 49 44 44                       // .NDDSDIDD

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1DAA: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0E)
        {

    1DB6: 5B 82 42 0A 44 44 30 45                          // [.B.DD0E

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1DBE: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DIDE) == 0x0400))
                {
                    EDPV = 0x0E
                    NXDX = NXD8 /* \NXD8 */
                    DIDX = DIDE /* \DIDE */

    1DC6: A0 2A 93 7B 0B 00 0F 44 49 44 45 00 0B 00 04 70  // .*.{...DIDE....p
    1DD6: 0A 0E 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1DE6: 44 49 44 45 44 49 44 58                          // DIDEDIDX

                    Return (0x0E)
                }


    1DEE: A4 0A 0E                                         // ...

                If ((DIDE == Zero))
                {

    1DF1: A0 0A 93 44 49 44 45 00                          // ...DIDE.

                    Return (0x0E)
                }

    1DF9: A4 0A 0E                                         // ...

                Else
                {

    1DFC: A1 0B                                            // ..

                    Return (
    1DFE: A4                                               // .

(0xFFFF & DIDE))
                }
            }


    1DFF: 7B 0B FF FF 44 49 44 45 00                       // {...DIDE.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1E08: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DIDE == Zero))
                {

    1E0F: A0 0A 93 44 49 44 45 00                          // ...DIDE.

                    Return (0x0E)
                }

    1E17: A4 0A 0E                                         // ...

                Else
                {

    1E1A: A1 0A                                            // ..

                    Return (CDDS (DIDE))
                }
            }


    1E1C: A4 43 44 44 53 44 49 44 45                       // .CDDSDIDE

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1E25: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1E2C: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1E39: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1E40: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDE))
            }


    1E45: A4 4E 44 44 53 44 49 44 45                       // .NDDSDIDE

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1E4E: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0F)
        {

    1E5A: 5B 82 42 0A 44 44 30 46                          // [.B.DD0F

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1E62: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (((0x0F00 & DIDF) == 0x0400))
                {
                    EDPV = 0x0F
                    NXDX = NXD8 /* \NXD8 */
                    DIDX = DIDF /* \DIDF */

    1E6A: A0 2A 93 7B 0B 00 0F 44 49 44 46 00 0B 00 04 70  // .*.{...DIDF....p
    1E7A: 0A 0F 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1E8A: 44 49 44 46 44 49 44 58                          // DIDFDIDX

                    Return (0x0F)
                }


    1E92: A4 0A 0F                                         // ...

                If ((DIDF == Zero))
                {

    1E95: A0 0A 93 44 49 44 46 00                          // ...DIDF.

                    Return (0x0F)
                }

    1E9D: A4 0A 0F                                         // ...

                Else
                {

    1EA0: A1 0B                                            // ..

                    Return (
    1EA2: A4                                               // .

(0xFFFF & DIDF))
                }
            }


    1EA3: 7B 0B FF FF 44 49 44 46 00                       // {...DIDF.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1EAC: 14 1C 5F 44 43 53 00                             // .._DCS.

                If ((DIDC == Zero))
                {

    1EB3: A0 0A 93 44 49 44 43 00                          // ...DIDC.

                    Return (0x0F)
                }

    1EBB: A4 0A 0F                                         // ...

                Else
                {

    1EBE: A1 0A                                            // ..

                    Return (CDDS (DIDF))
                }
            }


    1EC0: A4 43 44 44 53 44 49 44 46                       // .CDDSDIDF

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1EC9: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1ED0: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1EDD: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1EE4: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDF))
            }


    1EE9: A4 4E 44 44 53 44 49 44 46                       // .NDDSDIDF

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1EF2: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Scope (DD1F)
        {

    1EFE: 10 42 09 44 44 31 46                             // .B.DD1F

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1F05: 14 1D 5F 41 44 52 08                             // .._ADR.

                If ((EDPV == Zero))
                {

    1F0C: A0 0A 93 45 44 50 56 00                          // ...EDPV.

                    Return (0x1F)
                }

    1F14: A4 0A 1F                                         // ...

                Else
                {

    1F17: A1 0B                                            // ..

                    Return (
    1F19: A4                                               // .

(0xFFFF & DIDX))
                }
            }


    1F1A: 7B 0B FF FF 44 49 44 58 00                       // {...DIDX.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1F23: 14 1B 5F 44 43 53 00                             // .._DCS.

                If ((EDPV == Zero))
                {

    1F2A: A0 09 93 45 44 50 56 00                          // ...EDPV.

                    Return (Zero)
                }

    1F32: A4 00                                            // ..

                Else
                {

    1F34: A1 0A                                            // ..

                    Return (CDDS (DIDX))
                }
            }


    1F36: A4 43 44 44 53 44 49 44 58                       // .CDDSDIDX

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1F3F: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1F46: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1F53: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXDX) /* \NXDX */
                }


    1F5A: A4 4E 58 44 58                                   // .NXDX

                Return (NDDS (DIDX))
            }


    1F5F: A4 4E 44 44 53 44 49 44 58                       // .NDDSDIDX

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }


    1F68: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {

    1F74: 14 1C 5F 50 4C 44 00                             // .._PLD.

                If (CondRefOf (\PLD1))
                {

    1F7B: A0 0E 5B 12 5C 50 4C 44 31 00                    // ..[.\PLD1.

                    Return (PLD1 ())
                }

    1F85: A4 50 4C 44 31                                   // .PLD1

                Else
                {

    1F8A: A1 06                                            // ..

                    Return (DPLD) /* \_SB_.PCI0.GFX0.DPLD */
                }
            }
        }


    1F8C: A4 44 50 4C 44                                   // .DPLD

        Device (DD2F)
        {

    1F91: 5B 82 4C 1C 44 44 32 46                          // [.L.DD2F

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1F99: 14 28 5F 41 44 52 08                             // .(_ADR.

                If ((EDPV == Zero))
                {

    1FA0: A0 0A 93 45 44 50 56 00                          // ...EDPV.

                    Return (0x1F)
                }


    1FA8: A4 0A 1F                                         // ...

                If ((EDPV == One))
                {

    1FAB: A0 0A 93 45 44 50 56 01                          // ...EDPV.

                    Return (0x1F)
                }

    1FB3: A4 0A 1F                                         // ...

                Else
                {

    1FB6: A1 0B                                            // ..

                    Return (
    1FB8: A4                                               // .

(0xFFFF & DIDY))
                }
            }


    1FB9: 7B 0B FF FF 44 49 44 59 00                       // {...DIDY.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1FC2: 14 25 5F 44 43 53 00                             // .%_DCS.

                If ((EDPV == Zero))
                {

    1FC9: A0 09 93 45 44 50 56 00                          // ...EDPV.

                    Return (Zero)
                }


    1FD1: A4 00                                            // ..

                If ((EDPV == One))
                {

    1FD3: A0 09 93 45 44 50 56 01                          // ...EDPV.

                    Return (Zero)
                }

    1FDB: A4 00                                            // ..

                Else
                {

    1FDD: A1 0A                                            // ..

                    Return (CDDS (DIDY))
                }
            }


    1FDF: A4 43 44 44 53 44 49 44 59                       // .CDDSDIDY

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1FE8: 14 28 5F 44 47 53 00                             // .(_DGS.

                If ((((SGMD & 0x7F) == One) && 
    1FEF: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1FFC: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXDY) /* \NXDY */
                }


    2003: A4 4E 58 44 59                                   // .NXDY

                Return (NDDS (DIDY))
            }


    2008: A4 4E 44 44 53 44 49 44 59                       // .NDDSDIDY

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }


    2011: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {

    201D: 14 4A 0E 5F 42 43 4C 00                          // .J._BCL.

                If (CondRefOf (\PBCL))
                {

    2025: A0 0E 5B 12 5C 50 42 43 4C 00                    // ..[.\PBCL.

                    Return (PBCL ())
                }

    202F: A4 50 42 43 4C                                   // .PBCL

                Else
                {

    2034: A1 43 0D                                         // .C.

                    Return (
    2037: A4                                               // .

Package (0x67)
                    {
                        0x50, 
                        0x32, 
                        Zero, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }
            }


    2038: 12 4F 0C 67 0A 50 0A 32 00 01 0A 02 0A 03 0A 04  // .O.g.P.2........
    2048: 0A 05 0A 06 0A 07 0A 08 0A 09 0A 0A 0A 0B 0A 0C  // ................
    2058: 0A 0D 0A 0E 0A 0F 0A 10 0A 11 0A 12 0A 13 0A 14  // ................
    2068: 0A 15 0A 16 0A 17 0A 18 0A 19 0A 1A 0A 1B 0A 1C  // ................
    2078: 0A 1D 0A 1E 0A 1F 0A 20 0A 21 0A 22 0A 23 0A 24  // ....... .!.".#.$
    2088: 0A 25 0A 26 0A 27 0A 28 0A 29 0A 2A 0A 2B 0A 2C  // .%.&.'.(.).*.+.,
    2098: 0A 2D 0A 2E 0A 2F 0A 30 0A 31 0A 32 0A 33 0A 34  // .-.../.0.1.2.3.4
    20A8: 0A 35 0A 36 0A 37 0A 38 0A 39 0A 3A 0A 3B 0A 3C  // .5.6.7.8.9.:.;.<
    20B8: 0A 3D 0A 3E 0A 3F 0A 40 0A 41 0A 42 0A 43 0A 44  // .=.>.?.@.A.B.C.D
    20C8: 0A 45 0A 46 0A 47 0A 48 0A 49 0A 4A 0A 4B 0A 4C  // .E.F.G.H.I.J.K.L
    20D8: 0A 4D 0A 4E 0A 4F 0A 50 0A 51 0A 52 0A 53 0A 54  // .M.N.O.P.Q.R.S.T
    20E8: 0A 55 0A 56 0A 57 0A 58 0A 59 0A 5A 0A 5B 0A 5C  // .U.V.W.X.Y.Z.[.\
    20F8: 0A 5D 0A 5E 0A 5F 0A 60 0A 61 0A 62 0A 63 0A 64  // .].^._.`.a.b.c.d

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {

    2108: 14 2D 5F 42 43 4D 01                             // .-_BCM.

                If ((
    210F: A0 26 90 92                                      // .&..

(Arg0 >= Zero) && 
    2113: 95 68 00                                         // .h.


    2116: 92                                               // .

(Arg0 <= 0x64)))
                {
                    \_SB.PCI0.GFX0.AINT (One, Arg0)

    2117: 94 68 0A 64 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // .h.d\/._SB_PCI0G
    2127: 46 58 30 41 49 4E 54 01 68                       // FX0AINT.h

                    BRTL = Arg0
                }
            }


    2130: 70 68 42 52 54 4C                                // phBRTL

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {

    2136: 14 0B 5F 42 51 43 00                             // .._BQC.

                Return (BRTL) /* \BRTL */
            }


    213D: A4 42 52 54 4C                                   // .BRTL

            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {

    2142: 14 1C 5F 50 4C 44 00                             // .._PLD.

                If (CondRefOf (\PLD2))
                {

    2149: A0 0E 5B 12 5C 50 4C 44 32 00                    // ..[.\PLD2.

                    Return (PLD2 ())
                }

    2153: A4 50 4C 44 32                                   // .PLD2

                Else
                {

    2158: A1 06                                            // ..

                    Return (DPLD) /* \_SB_.PCI0.GFX0.DPLD */
                }
            }
        }


    215A: A4 44 50 4C 44                                   // .DPLD

        Method (SDDL, 1, NotSerialized)
        {
            NDID++
            Local0 = 
    215F: 14 44 0B 53 44 44 4C 01 75 4E 44 49 44 70        // .D.SDDL.uNDIDp

(Arg0 & 0x0F0F)
            Local1 = (0x80000000 | Local0)

    216D: 7B 68 0B 0F 0F 00 60 7D 0C 00 00 00 80 60 61     // {h....`}.....`a

            If ((DIDL == Local0))
            {

    217C: A0 09 93 44 49 44 4C 60                          // ...DIDL`

                Return (Local1)
            }


    2184: A4 61                                            // .a

            If ((DDL2 == Local0))
            {

    2186: A0 09 93 44 44 4C 32 60                          // ...DDL2`

                Return (Local1)
            }


    218E: A4 61                                            // .a

            If ((DDL3 == Local0))
            {

    2190: A0 09 93 44 44 4C 33 60                          // ...DDL3`

                Return (Local1)
            }


    2198: A4 61                                            // .a

            If ((DDL4 == Local0))
            {

    219A: A0 09 93 44 44 4C 34 60                          // ...DDL4`

                Return (Local1)
            }


    21A2: A4 61                                            // .a

            If ((DDL5 == Local0))
            {

    21A4: A0 09 93 44 44 4C 35 60                          // ...DDL5`

                Return (Local1)
            }


    21AC: A4 61                                            // .a

            If ((DDL6 == Local0))
            {

    21AE: A0 09 93 44 44 4C 36 60                          // ...DDL6`

                Return (Local1)
            }


    21B6: A4 61                                            // .a

            If ((DDL7 == Local0))
            {

    21B8: A0 09 93 44 44 4C 37 60                          // ...DDL7`

                Return (Local1)
            }


    21C0: A4 61                                            // .a

            If ((DDL8 == Local0))
            {

    21C2: A0 09 93 44 44 4C 38 60                          // ...DDL8`

                Return (Local1)
            }


    21CA: A4 61                                            // .a

            If ((DDL9 == Local0))
            {

    21CC: A0 09 93 44 44 4C 39 60                          // ...DDL9`

                Return (Local1)
            }


    21D4: A4 61                                            // .a

            If ((DD10 == Local0))
            {

    21D6: A0 09 93 44 44 31 30 60                          // ...DD10`

                Return (Local1)
            }


    21DE: A4 61                                            // .a

            If ((DD11 == Local0))
            {

    21E0: A0 09 93 44 44 31 31 60                          // ...DD11`

                Return (Local1)
            }


    21E8: A4 61                                            // .a

            If ((DD12 == Local0))
            {

    21EA: A0 09 93 44 44 31 32 60                          // ...DD12`

                Return (Local1)
            }


    21F2: A4 61                                            // .a

            If ((DD13 == Local0))
            {

    21F4: A0 09 93 44 44 31 33 60                          // ...DD13`

                Return (Local1)
            }


    21FC: A4 61                                            // .a

            If ((DD14 == Local0))
            {

    21FE: A0 09 93 44 44 31 34 60                          // ...DD14`

                Return (Local1)
            }


    2206: A4 61                                            // .a

            If ((DD15 == Local0))
            {

    2208: A0 09 93 44 44 31 35 60                          // ...DD15`

                Return (Local1)
            }


    2210: A4 61                                            // .a

            Return (Zero)
        }


    2212: A4 00                                            // ..

        Method (CDDS, 1, NotSerialized)
        {
            Local0 = 
    2214: 14 42 07 43 44 44 53 01 70                       // .B.CDDS.p

(Arg0 & 0x0F0F)

    221D: 7B 68 0B 0F 0F 00 60                             // {h....`

            If ((Zero == Local0))
            {

    2224: A0 07 93 00 60                                   // ....`

                Return (0x1D)
            }


    2229: A4 0A 1D                                         // ...

            If ((CADL == Local0))
            {

    222C: A0 0A 93 43 41 44 4C 60                          // ...CADL`

                Return (0x1F)
            }


    2234: A4 0A 1F                                         // ...

            If ((CAL2 == Local0))
            {

    2237: A0 0A 93 43 41 4C 32 60                          // ...CAL2`

                Return (0x1F)
            }


    223F: A4 0A 1F                                         // ...

            If ((CAL3 == Local0))
            {

    2242: A0 0A 93 43 41 4C 33 60                          // ...CAL3`

                Return (0x1F)
            }


    224A: A4 0A 1F                                         // ...

            If ((CAL4 == Local0))
            {

    224D: A0 0A 93 43 41 4C 34 60                          // ...CAL4`

                Return (0x1F)
            }


    2255: A4 0A 1F                                         // ...

            If ((CAL5 == Local0))
            {

    2258: A0 0A 93 43 41 4C 35 60                          // ...CAL5`

                Return (0x1F)
            }


    2260: A4 0A 1F                                         // ...

            If ((CAL6 == Local0))
            {

    2263: A0 0A 93 43 41 4C 36 60                          // ...CAL6`

                Return (0x1F)
            }


    226B: A4 0A 1F                                         // ...

            If ((CAL7 == Local0))
            {

    226E: A0 0A 93 43 41 4C 37 60                          // ...CAL7`

                Return (0x1F)
            }


    2276: A4 0A 1F                                         // ...

            If ((CAL8 == Local0))
            {

    2279: A0 0A 93 43 41 4C 38 60                          // ...CAL8`

                Return (0x1F)
            }


    2281: A4 0A 1F                                         // ...

            Return (0x1D)
        }


    2284: A4 0A 1D                                         // ...

        Method (NDDS, 1, NotSerialized)
        {
            Local0 = 
    2287: 14 48 06 4E 44 44 53 01 70                       // .H.NDDS.p

(Arg0 & 0x0F0F)

    2290: 7B 68 0B 0F 0F 00 60                             // {h....`

            If ((Zero == Local0))
            {

    2297: A0 06 93 00 60                                   // ....`

                Return (Zero)
            }


    229C: A4 00                                            // ..

            If ((NADL == Local0))
            {

    229E: A0 09 93 4E 41 44 4C 60                          // ...NADL`

                Return (One)
            }


    22A6: A4 01                                            // ..

            If ((NDL2 == Local0))
            {

    22A8: A0 09 93 4E 44 4C 32 60                          // ...NDL2`

                Return (One)
            }


    22B0: A4 01                                            // ..

            If ((NDL3 == Local0))
            {

    22B2: A0 09 93 4E 44 4C 33 60                          // ...NDL3`

                Return (One)
            }


    22BA: A4 01                                            // ..

            If ((NDL4 == Local0))
            {

    22BC: A0 09 93 4E 44 4C 34 60                          // ...NDL4`

                Return (One)
            }


    22C4: A4 01                                            // ..

            If ((NDL5 == Local0))
            {

    22C6: A0 09 93 4E 44 4C 35 60                          // ...NDL5`

                Return (One)
            }


    22CE: A4 01                                            // ..

            If ((NDL6 == Local0))
            {

    22D0: A0 09 93 4E 44 4C 36 60                          // ...NDL6`

                Return (One)
            }


    22D8: A4 01                                            // ..

            If ((NDL7 == Local0))
            {

    22DA: A0 09 93 4E 44 4C 37 60                          // ...NDL7`

                Return (One)
            }


    22E2: A4 01                                            // ..

            If ((NDL8 == Local0))
            {

    22E4: A0 09 93 4E 44 4C 38 60                          // ...NDL8`

                Return (One)
            }


    22EC: A4 01                                            // ..

            Return (Zero)
        }


    22EE: A4 00                                            // ..

        Method (DSST, 1, NotSerialized)
        {

    22F0: 14 1F 44 53 53 54 01                             // ..DSST.

            If (((Arg0 & 0xC0000000) == 0xC0000000))
            {

    22F7: A0 18 93 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0  // ...{h...........

                CSTE = NSTE /* \NSTE */
            }
        }


    2307: 70 4E 53 54 45 43 53 54 45                       // pNSTECSTE

        Scope (\_SB.PCI0)
        {

    2310: 10 30 5C 2E 5F 53 42 5F 50 43 49 30              // .0\._SB_PCI0

            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)

    231C: 5B 80 4D 43 48 50 02 0A 40 0A C0                 // [.MCHP..@..

            Field (MCHP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                AUDE,   8, 
                Offset (0x60), 
                TASM,   10, 
                Offset (0x62)
            }
        }


    2327: 5B 81 18 4D 43 48 50 00 00 40 0A 41 55 44 45 08  // [..MCHP..@.AUDE.
    2337: 00 48 25 54 41 53 4D 0A 00 06                    // .H%TASM...

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)

    2341: 5B 80 49 47 44 50 02 0A 40 0A C0                 // [.IGDP..@..

        Field (IGDP, AnyAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            GIVD,   1, 
                ,   2, 
            GUMA,   3, 
            Offset (0x12), 
            Offset (0x14), 
                ,   4, 
            GMFN,   1, 
            Offset (0x18), 
            Offset (0xA4), 
            ASLE,   8, 
            Offset (0xA8), 
            GSSE,   1, 
            GSSB,   14, 
            GSES,   1, 
            Offset (0xB0), 
                ,   12, 
            CDVL,   1, 
            Offset (0xB2), 
            Offset (0xB5), 
            LBPC,   8, 
            Offset (0xBC), 
            ASLS,   32
        }


    234C: 5B 81 47 05 49 47 44 50 00 00 40 08 00 01 47 49  // [.G.IGDP..@...GI
    235C: 56 44 01 00 02 47 55 4D 41 03 00 09 00 10 00 04  // VD...GUMA.......
    236C: 47 4D 46 4E 01 00 1B 00 40 46 41 53 4C 45 08 00  // GMFN....@FASLE..
    237C: 18 47 53 53 45 01 47 53 53 42 0E 47 53 45 53 01  // .GSSE.GSSB.GSES.
    238C: 00 30 00 0C 43 44 56 4C 01 00 03 00 18 4C 42 50  // .0..CDVL.....LBP
    239C: 43 08 00 30 41 53 4C 53 20                       // C..0ASLS 

        OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)

    23A5: 5B 80 49 47 44 4D 00 41 53 4C 42 0B 00 20        // [.IGDM.ASLB.. 

        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            SIGN,   128, 
            SIZE,   32, 
            OVER,   32, 
            SVER,   256, 
            VVER,   128, 
            GVER,   128, 
            MBOX,   32, 
            DMOD,   32, 
            PCON,   32, 
            DVER,   64, 
            Offset (0x100), 
            DRDY,   32, 
            CSTS,   32, 
            CEVT,   32, 
            Offset (0x120), 
            DIDL,   32, 
            DDL2,   32, 
            DDL3,   32, 
            DDL4,   32, 
            DDL5,   32, 
            DDL6,   32, 
            DDL7,   32, 
            DDL8,   32, 
            CPDL,   32, 
            CPL2,   32, 
            CPL3,   32, 
            CPL4,   32, 
            CPL5,   32, 
            CPL6,   32, 
            CPL7,   32, 
            CPL8,   32, 
            CADL,   32, 
            CAL2,   32, 
            CAL3,   32, 
            CAL4,   32, 
            CAL5,   32, 
            CAL6,   32, 
            CAL7,   32, 
            CAL8,   32, 
            NADL,   32, 
            NDL2,   32, 
            NDL3,   32, 
            NDL4,   32, 
            NDL5,   32, 
            NDL6,   32, 
            NDL7,   32, 
            NDL8,   32, 
            ASLP,   32, 
            TIDX,   32, 
            CHPD,   32, 
            CLID,   32, 
            CDCK,   32, 
            SXSW,   32, 
            EVTS,   32, 
            CNOT,   32, 
            NRDY,   32, 
            DDL9,   32, 
            DD10,   32, 
            DD11,   32, 
            DD12,   32, 
            DD13,   32, 
            DD14,   32, 
            DD15,   32, 
            CPL9,   32, 
            CP10,   32, 
            CP11,   32, 
            CP12,   32, 
            CP13,   32, 
            CP14,   32, 
            CP15,   32, 
            Offset (0x200), 
            SCIE,   1, 
            GEFC,   4, 
            GXFC,   3, 
            GESF,   8, 
            Offset (0x204), 
            PARM,   32, 
            DSLP,   32, 
            Offset (0x300), 
            ARDY,   32, 
            ASLC,   32, 
            TCHE,   32, 
            ALSI,   32, 
            BCLP,   32, 
            PFIT,   32, 
            CBLV,   32, 
            BCLM,   320, 
            CPFM,   32, 
            EPFM,   32, 
            PLUT,   592, 
            PFMB,   32, 
            CCDV,   32, 
            PCFT,   32, 
            SROT,   32, 
            IUER,   32, 
            FDSP,   64, 
            FDSS,   32, 
            STAT,   32, 
            Offset (0x400), 
            GVD1,   49152, 
            PHED,   32, 
            BDDC,   2048
        }


    23B3: 5B 81 42 20 49 47 44 4D 00 53 49 47 4E 40 08 53  // [.B IGDM.SIGN@.S
    23C3: 49 5A 45 20 4F 56 45 52 20 53 56 45 52 40 10 56  // IZE OVER SVER@.V
    23D3: 56 45 52 40 08 47 56 45 52 40 08 4D 42 4F 58 20  // VER@.GVER@.MBOX 
    23E3: 44 4D 4F 44 20 50 43 4F 4E 20 44 56 45 52 40 04  // DMOD PCON DVER@.
    23F3: 00 40 4A 44 52 44 59 20 43 53 54 53 20 43 45 56  // .@JDRDY CSTS CEV
    2403: 54 20 00 40 0A 44 49 44 4C 20 44 44 4C 32 20 44  // T .@.DIDL DDL2 D
    2413: 44 4C 33 20 44 44 4C 34 20 44 44 4C 35 20 44 44  // DL3 DDL4 DDL5 DD
    2423: 4C 36 20 44 44 4C 37 20 44 44 4C 38 20 43 50 44  // L6 DDL7 DDL8 CPD
    2433: 4C 20 43 50 4C 32 20 43 50 4C 33 20 43 50 4C 34  // L CPL2 CPL3 CPL4
    2443: 20 43 50 4C 35 20 43 50 4C 36 20 43 50 4C 37 20  //  CPL5 CPL6 CPL7 
    2453: 43 50 4C 38 20 43 41 44 4C 20 43 41 4C 32 20 43  // CPL8 CADL CAL2 C
    2463: 41 4C 33 20 43 41 4C 34 20 43 41 4C 35 20 43 41  // AL3 CAL4 CAL5 CA
    2473: 4C 36 20 43 41 4C 37 20 43 41 4C 38 20 4E 41 44  // L6 CAL7 CAL8 NAD
    2483: 4C 20 4E 44 4C 32 20 4E 44 4C 33 20 4E 44 4C 34  // L NDL2 NDL3 NDL4
    2493: 20 4E 44 4C 35 20 4E 44 4C 36 20 4E 44 4C 37 20  //  NDL5 NDL6 NDL7 
    24A3: 4E 44 4C 38 20 41 53 4C 50 20 54 49 44 58 20 43  // NDL8 ASLP TIDX C
    24B3: 48 50 44 20 43 4C 49 44 20 43 44 43 4B 20 53 58  // HPD CLID CDCK SX
    24C3: 53 57 20 45 56 54 53 20 43 4E 4F 54 20 4E 52 44  // SW EVTS CNOT NRD
    24D3: 59 20 44 44 4C 39 20 44 44 31 30 20 44 44 31 31  // Y DDL9 DD10 DD11
    24E3: 20 44 44 31 32 20 44 44 31 33 20 44 44 31 34 20  //  DD12 DD13 DD14 
    24F3: 44 44 31 35 20 43 50 4C 39 20 43 50 31 30 20 43  // DD15 CPL9 CP10 C
    2503: 50 31 31 20 43 50 31 32 20 43 50 31 33 20 43 50  // P11 CP12 CP13 CP
    2513: 31 34 20 43 50 31 35 20 00 20 53 43 49 45 01 47  // 14 CP15 . SCIE.G
    2523: 45 46 43 04 47 58 46 43 03 47 45 53 46 08 00 10  // EFC.GXFC.GESF...
    2533: 50 41 52 4D 20 44 53 4C 50 20 00 40 7A 41 52 44  // PARM DSLP .@zARD
    2543: 59 20 41 53 4C 43 20 54 43 48 45 20 41 4C 53 49  // Y ASLC TCHE ALSI
    2553: 20 42 43 4C 50 20 50 46 49 54 20 43 42 4C 56 20  //  BCLP PFIT CBLV 
    2563: 42 43 4C 4D 40 14 43 50 46 4D 20 45 50 46 4D 20  // BCLM@.CPFM EPFM 
    2573: 50 4C 55 54 40 25 50 46 4D 42 20 43 43 44 56 20  // PLUT@%PFMB CCDV 
    2583: 50 43 46 54 20 53 52 4F 54 20 49 55 45 52 20 46  // PCFT SROT IUER F
    2593: 44 53 50 40 04 46 44 53 53 20 53 54 41 54 20 00  // DSP@.FDSS STAT .
    25A3: 40 23 47 56 44 31 80 00 0C 50 48 45 44 20 42 44  // @#GVD1...PHED BD
    25B3: 44 43 40 80                                      // DC@.

        Name (DBTB, 
    25B7: 08 44 42 54 42                                   // .DBTB

Package (0x15)
        {
            Zero, 
            0x07, 
            0x38, 
            0x01C0, 
            0x0E00, 
            0x3F, 
            0x01C7, 
            0x0E07, 
            0x01F8, 
            0x0E38, 
            0x0FC0, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            0x7000, 
            0x7007, 
            0x7038, 
            0x71C0, 
            0x7E00
        })

    25BC: 12 32 15 00 0A 07 0A 38 0B C0 01 0B 00 0E 0A 3F  // .2.....8.......?
    25CC: 0B C7 01 0B 07 0E 0B F8 01 0B 38 0E 0B C0 0F 00  // ..........8.....
    25DC: 00 00 00 00 0B 00 70 0B 07 70 0B 38 70 0B C0 71  // ......p..p.8p..q
    25EC: 0B 00 7E                                         // ..~

        Name (CDCT, 
    25EF: 08 43 44 43 54                                   // .CDCT

Package (0x05)
        {

    25F4: 12 27 05                                         // .'.

            Package (0x02)
            {
                0xE4, 
                0x0140
            }, 


    25F7: 12 07 02 0A E4 0B 40 01                          // ......@.

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 


    25FF: 12 07 02 0A DE 0B 4D 01                          // ......M.

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 


    2607: 12 07 02 0A DE 0B 4D 01                          // ......M.

            Package (0x02)
            {
                Zero, 
                Zero
            }, 


    260F: 12 04 02 00 00                                   // .....

            Package (0x02)
            {
                0xDE, 
                0x014D
            }
        })

    2614: 12 07 02 0A DE 0B 4D 01                          // ......M.

        Name (SUCC, One)

    261C: 08 53 55 43 43 01                                // .SUCC.

        Name (NVLD, 0x02)

    2622: 08 4E 56 4C 44 0A 02                             // .NVLD..

        Name (CRIT, 0x04)

    2629: 08 43 52 49 54 0A 04                             // .CRIT..

        Name (NCRT, 0x06)

    2630: 08 4E 43 52 54 0A 06                             // .NCRT..

        Method (GSCI, 0, Serialized)
        {

    2637: 14 49 4E 47 53 43 49 08                          // .INGSCI.

            Method (GBDA, 0, Serialized)
            {

    263F: 14 40 1D 47 42 44 41 08                          // .@.GBDA.

                If ((GESF == Zero))
                {
                    PARM = 0x0659
                    GESF = Zero

    2647: A0 1A 93 47 45 53 46 00 70 0B 59 06 50 41 52 4D  // ...GESF.p.Y.PARM
    2657: 70 00 47 45 53 46                                // p.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    265D: A4 53 55 43 43                                   // .SUCC

                If ((GESF == One))
                {
                    PARM = 0x00300482

    2662: A0 30 93 47 45 53 46 01 70 0C 82 04 30 00 50 41  // .0.GESF.p...0.PA
    2672: 52 4D                                            // RM

                    If ((S0ID == One))
                    {

    2674: A0 13 93 53 30 49 44 01                          // ...S0ID.

                        PARM |= 0x0100
                    }

                    GESF = Zero

    267C: 7D 50 41 52 4D 0B 00 01 50 41 52 4D 70 00 47 45  // }PARM...PARMp.GE
    268C: 53 46                                            // SF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    268E: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x04))
                {
                    PARM &= 0xEFFF0000
                    PARM &= 
    2693: A0 47 04 93 47 45 53 46 0A 04 7B 50 41 52 4D 0C  // .G..GESF..{PARM.
    26A3: 00 00 FF EF 50 41 52 4D 7B 50 41 52 4D           // ....PARM{PARM

(DerefOf (
    26B0: 79 83                                            // y.

DBTB [IBTT]) << 0x10)
                    PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                    GESF = Zero

    26B2: 88 44 42 54 42 49 42 54 54 00 0A 10 00 50 41 52  // .DBTBIBTT....PAR
    26C2: 4D 7D 49 42 54 54 50 41 52 4D 50 41 52 4D 70 00  // M}IBTTPARMPARMp.
    26D2: 47 45 53 46                                      // GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    26D6: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x05))
                {
                    PARM = IPSC /* \IPSC */
                    PARM |= 
    26DB: A0 4A 06 93 47 45 53 46 0A 05 70 49 50 53 43 50  // .J..GESF..pIPSCP
    26EB: 41 52 4D 7D 50 41 52 4D                          // ARM}PARM

(IPAT << 0x08)
                    PARM += 0x0100
                    PARM |= 
    26F3: 79 49 50 41 54 0A 08 00 50 41 52 4D 72 50 41 52  // yIPAT...PARMrPAR
    2703: 4D 0B 00 01 50 41 52 4D 7D 50 41 52 4D           // M...PARM}PARM

(LIDS << 0x10)
                    PARM += 0x00010000
                    PARM |= 
    2710: 79 4C 49 44 53 0A 10 00 50 41 52 4D 72 50 41 52  // yLIDS...PARMrPAR
    2720: 4D 0C 00 00 01 00 50 41 52 4D 7D 50 41 52 4D     // M.....PARM}PARM

(IBIA << 0x14)
                    GESF = Zero

    272F: 79 49 42 49 41 0A 14 00 50 41 52 4D 70 00 47 45  // yIBIA...PARMp.GE
    273F: 53 46                                            // SF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2741: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x07))
                {
                    PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                    PARM ^= One
                    PARM |= 
    2746: A0 43 07 93 47 45 53 46 0A 07 70 47 49 56 44 50  // .C..GESF..pGIVDP
    2756: 41 52 4D 7F 50 41 52 4D 01 50 41 52 4D 7D 50 41  // ARM.PARM.PARM}PA
    2766: 52 4D                                            // RM

(GMFN << One)
                    PARM |= 0x1800
                    PARM |= 
    2768: 79 47 4D 46 4E 01 00 50 41 52 4D 7D 50 41 52 4D  // yGMFN..PARM}PARM
    2778: 0B 00 18 50 41 52 4D 7D 50 41 52 4D              // ...PARM}PARM

(IDMS << 0x11)
                    PARM |= (DerefOf (
    2784: 79 49 44 4D 53 0A 11 00 50 41 52 4D 7D 79 83     // yIDMS...PARM}y.

DerefOf (
    2793: 88 83                                            // ..

CDCT [HVCO]) [CDVL]) << 
                        0x15) /* \_SB_.PCI0.GFX0.PARM */
                    GESF = One

    2795: 88 43 44 43 54 48 56 43 4F 00 43 44 56 4C 00 0A  // .CDCTHVCO.CDVL..
    27A5: 15 00 50 41 52 4D 50 41 52 4D 70 01 47 45 53 46  // ..PARMPARMp.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    27B5: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x0A))
                {
                    PARM = Zero

    27BA: A0 2A 93 47 45 53 46 0A 0A 70 00 50 41 52 4D     // .*.GESF..p.PARM

                    If (ISSC)
                    {

    27C9: A0 10 49 53 53 43                                // ..ISSC

                        PARM |= 0x03
                    }

                    GESF = Zero

    27CF: 7D 50 41 52 4D 0A 03 50 41 52 4D 70 00 47 45 53  // }PARM..PARMp.GES
    27DF: 46                                               // F

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    27E0: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x0B))
                {
                    PARM = KSV0 /* \KSV0 */
                    GESF = KSV1 /* \KSV1 */

    27E5: A0 1F 93 47 45 53 46 0A 0B 70 4B 53 56 30 50 41  // ...GESF..pKSV0PA
    27F5: 52 4D 70 4B 53 56 31 47 45 53 46                 // RMpKSV1GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                GESF = Zero

    2800: A4 53 55 43 43 70 00 47 45 53 46                 // .SUCCp.GESF

                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
            }


    280B: A4 43 52 49 54                                   // .CRIT

            Method (SBCB, 0, Serialized)
            {

    2810: 14 42 2D 53 42 43 42 08                          // .B-SBCB.

                If ((GESF == Zero))
                {
                    PARM = Zero
                    PARM = 0x000F87DD
                    GESF = Zero

    2818: A0 22 93 47 45 53 46 00 70 00 50 41 52 4D 70 0C  // .".GESF.p.PARMp.
    2828: DD 87 0F 00 50 41 52 4D 70 00 47 45 53 46        // ....PARMp.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2836: A4 53 55 43 43                                   // .SUCC

                If ((GESF == One))
                {
                    GESF = Zero
                    PARM = Zero

    283B: A0 18 93 47 45 53 46 01 70 00 47 45 53 46 70 00  // ...GESF.p.GESFp.
    284B: 50 41 52 4D                                      // PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    284F: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x03))
                {
                    GESF = Zero
                    PARM = Zero

    2854: A0 19 93 47 45 53 46 0A 03 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    2864: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2869: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x04))
                {
                    GESF = Zero
                    PARM = Zero

    286E: A0 19 93 47 45 53 46 0A 04 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    287E: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2883: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x05))
                {
                    GESF = Zero
                    PARM = Zero

    2888: A0 19 93 47 45 53 46 0A 05 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    2898: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    289D: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x07))
                {

    28A2: A0 4A 07 93 47 45 53 46 0A 07                    // .J..GESF..

                    If (((S0ID == One) && 
    28AC: A0 34 90 93 53 30 49 44 01                       // .4..S0ID.

(OSYS < 0x07DF)))
                    {

    28B5: 95 4F 53 59 53 0B DF 07                          // .OSYS...

                        If (((PARM & 0xFF) == One))
                        {
                            \GUAM (One)
                        }


    28BD: A0 11 93 7B 50 41 52 4D 0A FF 00 01 5C 47 55 41  // ...{PARM....\GUA
    28CD: 4D 01                                            // M.

                        If (((PARM & 0xFF) == Zero))
                        {
                            \GUAM (Zero)
                        }
                    }


    28CF: A0 11 93 7B 50 41 52 4D 0A FF 00 00 5C 47 55 41  // ...{PARM....\GUA
    28DF: 4D 00                                            // M.

                    If ((PARM == Zero))
                    {
                        Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */

    28E1: A0 2A 93 50 41 52 4D 00 70 43 4C 49 44 60        // .*.PARM.pCLID`

                        If ((0x80000000 & Local0))
                        {
                            CLID &= 0x0F
                            GLID (CLID)
                        }
                    }

                    GESF = Zero
                    PARM = Zero

    28EF: A0 1C 7B 0C 00 00 00 80 60 00 7B 43 4C 49 44 0A  // ..{.....`.{CLID.
    28FF: 0F 43 4C 49 44 47 4C 49 44 43 4C 49 44 70 00 47  // .CLIDGLIDCLIDp.G
    290F: 45 53 46 70 00 50 41 52 4D                       // ESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2918: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x08))
                {
                    GESF = Zero
                    PARM = Zero

    291D: A0 19 93 47 45 53 46 0A 08 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    292D: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2932: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x09))
                {
                    IBTT = (PARM & 0xFF)
                    GESF = Zero
                    PARM = Zero

    2937: A0 24 93 47 45 53 46 0A 09 7B 50 41 52 4D 0A FF  // .$.GESF..{PARM..
    2947: 49 42 54 54 70 00 47 45 53 46 70 00 50 41 52 4D  // IBTTp.GESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2957: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x0A))
                {
                    IPSC = (PARM & 0xFF)

    295C: A0 46 05 93 47 45 53 46 0A 0A 7B 50 41 52 4D 0A  // .F..GESF..{PARM.
    296C: FF 49 50 53 43                                   // .IPSC

                    If (((PARM >> 0x08) & 0xFF))
                    {
                        IPAT = ((PARM >> 0x08) & 0xFF)

    2971: A0 21 7B 7A 50 41 52 4D 0A 08 00 0A FF 00 7B 7A  // .!{zPARM......{z
    2981: 50 41 52 4D 0A 08 00 0A FF 49 50 41 54           // PARM.....IPAT

                        IPAT--
                    }

                    IBIA = ((PARM >> 0x14) & 0x07)
                    GESF = Zero
                    PARM = Zero

    298E: 76 49 50 41 54 7B 7A 50 41 52 4D 0A 14 00 0A 07  // vIPAT{zPARM.....
    299E: 49 42 49 41 70 00 47 45 53 46 70 00 50 41 52 4D  // IBIAp.GESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    29AE: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x0B))
                {
                    IF1E = ((PARM >> One) & One)

    29B3: A0 44 05 93 47 45 53 46 0A 0B 7B 7A 50 41 52 4D  // .D..GESF..{zPARM
    29C3: 01 00 01 49 46 31 45                             // ...IF1E

                    If ((PARM & 0x0001E000))
                    {

    29CA: A0 1B 7B 50 41 52 4D 0C 00 E0 01 00 00           // ..{PARM......

                        IDMS = ((PARM >> 0x0D) & 0x0F)
                    }

    29D7: 7B 7A 50 41 52 4D 0A 0D 00 0A 0F 49 44 4D 53     // {zPARM.....IDMS

                    Else
                    {

    29E6: A1 10                                            // ..

                        IDMS = ((PARM >> 0x11) & 0x0F)
                    }

                    GESF = Zero
                    PARM = Zero

    29E8: 7B 7A 50 41 52 4D 0A 11 00 0A 0F 49 44 4D 53 70  // {zPARM.....IDMSp
    29F8: 00 47 45 53 46 70 00 50 41 52 4D                 // .GESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2A03: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x10))
                {
                    GESF = Zero
                    PARM = Zero

    2A08: A0 19 93 47 45 53 46 0A 10 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    2A18: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2A1D: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x11))
                {
                    PARM = 
    2A22: A0 2C 93 47 45 53 46 0A 11 70                    // .,.GESF..p

(LIDS << 0x08)
                    PARM += 0x0100
                    GESF = Zero

    2A2C: 79 4C 49 44 53 0A 08 00 50 41 52 4D 72 50 41 52  // yLIDS...PARMrPAR
    2A3C: 4D 0B 00 01 50 41 52 4D 70 00 47 45 53 46        // M...PARMp.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2A4A: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x12))
                {

    2A4F: A0 49 04 93 47 45 53 46 0A 12                    // .I..GESF..

                    If ((PARM & One))
                    {

    2A59: A0 26 7B 50 41 52 4D 01 00                       // .&{PARM..

                        If (((PARM >> One) == One))
                        {

    2A62: A0 10 93 7A 50 41 52 4D 01 00 01                 // ...zPARM...

                            ISSC = One
                        }

    2A6D: 70 01 49 53 53 43                                // p.ISSC

                        Else
                        {
                            GESF = Zero

    2A73: A1 0C 70 00 47 45 53 46                          // ..p.GESF

                            Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                        }
                    }

    2A7B: A4 43 52 49 54                                   // .CRIT

                    Else
                    {

    2A80: A1 07                                            // ..

                        ISSC = Zero
                    }

                    GESF = Zero
                    PARM = Zero

    2A82: 70 00 49 53 53 43 70 00 47 45 53 46 70 00 50 41  // p.ISSCp.GESFp.PA
    2A92: 52 4D                                            // RM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2A94: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x13))
                {
                    GESF = Zero
                    PARM = Zero

    2A99: A0 19 93 47 45 53 46 0A 13 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    2AA9: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2AAE: A4 53 55 43 43                                   // .SUCC

                If ((GESF == 0x14))
                {
                    PAVP = (PARM & 0x0F)
                    GESF = Zero
                    PARM = Zero

    2AB3: A0 24 93 47 45 53 46 0A 14 7B 50 41 52 4D 0A 0F  // .$.GESF..{PARM..
    2AC3: 50 41 56 50 70 00 47 45 53 46 70 00 50 41 52 4D  // PAVPp.GESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                GESF = Zero

    2AD3: A4 53 55 43 43 70 00 47 45 53 46                 // .SUCCp.GESF

                Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
            }


    2ADE: A4 53 55 43 43                                   // .SUCC

            If ((GEFC == 0x04))
            {

    2AE3: A0 11 93 47 45 46 43 0A 04                       // ...GEFC..

                GXFC = GBDA ()
            }


    2AEC: 70 47 42 44 41 47 58 46 43                       // pGBDAGXFC

            If ((GEFC == 0x06))
            {

    2AF5: A0 11 93 47 45 46 43 0A 06                       // ...GEFC..

                GXFC = SBCB ()
            }

            GEFC = Zero
            CPSC = One
            GSSE = Zero
            SCIE = Zero

    2AFE: 70 53 42 43 42 47 58 46 43 70 00 47 45 46 43 70  // pSBCBGXFCp.GEFCp
    2B0E: 01 43 50 53 43 70 00 47 53 53 45 70 00 53 43 49  // .CPSCp.GSSEp.SCI
    2B1E: 45                                               // E

            Return (Zero)
        }


    2B1F: A4 00                                            // ..

        Method (PDRD, 0, NotSerialized)
        {

    2B21: 14 0C 50 44 52 44 00                             // ..PDRD.

            Return (
    2B28: A4                                               // .

!DRDY)
        }


    2B29: 92 44 52 44 59                                   // .DRDY

        Method (PSTS, 0, NotSerialized)
        {

    2B2E: 14 1D 50 53 54 53 00                             // ..PSTS.

            If ((CSTS > 0x02))
            {

    2B35: A0 0E 94 43 53 54 53 0A 02                       // ...CSTS..

                Sleep (ASLP)
            }


    2B3E: 5B 22 41 53 4C 50                                // ["ASLP

            Return (
    2B44: A4                                               // .

(CSTS == 0x03))
        }


    2B45: 93 43 53 54 53 0A 03                             // .CSTS..

        Method (GNOT, 2, NotSerialized)
        {

    2B4C: 14 4D 05 47 4E 4F 54 02                          // .M.GNOT.

            If (PDRD ())
            {

    2B54: A0 07 50 44 52 44                                // ..PDRD

                Return (One)
            }

            CEVT = Arg0
            CSTS = 0x03

    2B5A: A4 01 70 68 43 45 56 54 70 0A 03 43 53 54 53     // ..phCEVTp..CSTS

            If (((CHPD == Zero) && 
    2B69: A0 1C 90 93 43 48 50 44 00                       // ....CHPD.

(Arg1 == Zero)))
            {

    2B72: 93 69 00                                         // .i.

                Notify (\_SB.PCI0.GFX0, Arg1)
            }


    2B75: 86 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
    2B85: 69                                               // i

            If (CondRefOf (HNOT))
            {
                HNOT (Arg0)
            }

    2B86: A0 0D 5B 12 48 4E 4F 54 00 48 4E 4F 54 68        // ..[.HNOT.HNOTh

            Else
            {

    2B94: A1 13                                            // ..

                Notify (\_SB.PCI0.GFX0, 0x80) // Status Change
            }


    2B96: 86 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
    2BA6: 0A 80                                            // ..

            Return (Zero)
        }


    2BA8: A4 00                                            // ..

        Method (GHDS, 1, NotSerialized)
        {
            TIDX = Arg0

    2BAA: 14 13 47 48 44 53 01 70 68 54 49 44 58           // ..GHDS.phTIDX

            Return (GNOT (One, Zero))
        }


    2BB7: A4 47 4E 4F 54 01 00                             // .GNOT..

        Method (GLID, 1, NotSerialized)
        {

    2BBE: 14 35 47 4C 49 44 01                             // .5GLID.

            If ((Arg0 == One))
            {

    2BC5: A0 0B 93 68 01                                   // ...h.

                CLID = 0x03
            }

    2BCA: 70 0A 03 43 4C 49 44                             // p..CLID

            Else
            {

    2BD1: A1 07                                            // ..

                CLID = Arg0
            }


    2BD3: 70 68 43 4C 49 44                                // phCLID

            If (GNOT (0x02, Zero))
            {
                CLID |= 0x80000000

    2BD9: A0 18 47 4E 4F 54 0A 02 00 7D 43 4C 49 44 0C 00  // ..GNOT...}CLID..
    2BE9: 00 00 80 43 4C 49 44                             // ...CLID

                Return (One)
            }


    2BF0: A4 01                                            // ..

            Return (Zero)
        }


    2BF2: A4 00                                            // ..

        Method (GDCK, 1, NotSerialized)
        {
            CDCK = Arg0

    2BF4: 14 14 47 44 43 4B 01 70 68 43 44 43 4B           // ..GDCK.phCDCK

            Return (GNOT (0x04, Zero))
        }


    2C01: A4 47 4E 4F 54 0A 04 00                          // .GNOT...

        Method (PARD, 0, NotSerialized)
        {

    2C09: 14 19 50 41 52 44 00                             // ..PARD.

            If (!ARDY)
            {

    2C10: A0 0C 92 41 52 44 59                             // ...ARDY

                Sleep (ASLP)
            }


    2C17: 5B 22 41 53 4C 50                                // ["ASLP

            Return (
    2C1D: A4                                               // .

!ARDY)
        }


    2C1E: 92 41 52 44 59                                   // .ARDY

        Method (IUEH, 1, Serialized)
        {
            IUER &= 0xC0
            IUER ^= 
    2C23: 14 36 49 55 45 48 09 7B 49 55 45 52 0A C0 49 55  // .6IUEH.{IUER..IU
    2C33: 45 52 7F 49 55 45 52                             // ER.IUER

(One << Arg0)

    2C3A: 79 01 68 00 49 55 45 52                          // y.h.IUER

            If (
    2C42: A0 0E 92                                         // ...

(Arg0 <= 0x04))
            {

    2C45: 94 68 0A 04                                      // .h..

                Return (AINT (0x05, Zero))
            }

    2C49: A4 41 49 4E 54 0A 05 00                          // .AINT...

            Else
            {

    2C51: A1 08                                            // ..

                Return (AINT (Arg0, Zero))
            }
        }


    2C53: A4 41 49 4E 54 68 00                             // .AINTh.

        Method (AINT, 2, NotSerialized)
        {

    2C5A: 14 4A 17 41 49 4E 54 02                          // .J.AINT.

            If (!
    2C62: A0 0E 92                                         // ...

(TCHE & (One << Arg0)))
            {

    2C65: 7B 54 43 48 45 79 01 68 00 00                    // {TCHEy.h..

                Return (One)
            }


    2C6F: A4 01                                            // ..

            If (PARD ())
            {

    2C71: A0 07 50 41 52 44                                // ..PARD

                Return (One)
            }


    2C77: A4 01                                            // ..

            If ((
    2C79: A0 34 90 92                                      // .4..

(Arg0 >= 0x05) && 
    2C7D: 95 68 0A 05                                      // .h..


    2C81: 92                                               // .

(Arg0 <= 0x07)))
            {
                ASLC = 
    2C82: 94 68 0A 07 70                                   // .h..p

(One << Arg0)
                ASLE = One
                Local2 = Zero

    2C87: 79 01 68 00 41 53 4C 43 70 01 41 53 4C 45 70 00  // y.h.ASLCp.ASLEp.
    2C97: 62                                               // b

                While (((Local2 < 0xFA) && 
    2C98: A2 13 90 95 62 0A FA                             // ....b..


    2C9F: 92                                               // .

(ASLC != Zero)))
                {
                    Sleep (0x04)

    2CA0: 93 41 53 4C 43 00 5B 22 0A 04                    // .ASLC.["..

                    Local2++
                }


    2CAA: 75 62                                            // ub

                Return (Zero)
            }


    2CAC: A4 00                                            // ..

            If ((Arg0 == 0x02))
            {

    2CAE: A0 40 0C 93 68 0A 02                             // .@..h..

                If (CPFM)
                {
                    Local0 = (CPFM & 0x0F)
                    Local1 = (EPFM & 0x0F)

    2CB5: A0 47 09 43 50 46 4D 7B 43 50 46 4D 0A 0F 60 7B  // .G.CPFM{CPFM..`{
    2CC5: 45 50 46 4D 0A 0F 61                             // EPFM..a

                    If ((Local0 == One))
                    {

    2CCC: A0 2A 93 60 01                                   // .*.`.

                        If ((Local1 & 0x06))
                        {

    2CD1: A0 0D 7B 61 0A 06 00                             // ..{a...

                            PFIT = 0x06
                        }

    2CD8: 70 0A 06 50 46 49 54                             // p..PFIT

                        ElseIf
    2CDF: A1 17                                            // ..

 ((Local1 & 0x08))
                        {

    2CE1: A0 0D 7B 61 0A 08 00                             // ..{a...

                            PFIT = 0x08
                        }

    2CE8: 70 0A 08 50 46 49 54                             // p..PFIT

                        Else
                        {

    2CEF: A1 07                                            // ..

                            PFIT = One
                        }
                    }


    2CF1: 70 01 50 46 49 54                                // p.PFIT

                    If ((Local0 == 0x06))
                    {

    2CF7: A0 2A 93 60 0A 06                                // .*.`..

                        If ((Local1 & 0x08))
                        {

    2CFD: A0 0D 7B 61 0A 08 00                             // ..{a...

                            PFIT = 0x08
                        }

    2D04: 70 0A 08 50 46 49 54                             // p..PFIT

                        ElseIf
    2D0B: A1 16                                            // ..

 ((Local1 & One))
                        {

    2D0D: A0 0B 7B 61 01 00                                // ..{a..

                            PFIT = One
                        }

    2D13: 70 01 50 46 49 54                                // p.PFIT

                        Else
                        {

    2D19: A1 08                                            // ..

                            PFIT = 0x06
                        }
                    }


    2D1B: 70 0A 06 50 46 49 54                             // p..PFIT

                    If ((Local0 == 0x08))
                    {

    2D22: A0 2A 93 60 0A 08                                // .*.`..

                        If ((Local1 & One))
                        {

    2D28: A0 0B 7B 61 01 00                                // ..{a..

                            PFIT = One
                        }

    2D2E: 70 01 50 46 49 54                                // p.PFIT

                        ElseIf
    2D34: A1 18                                            // ..

 ((Local1 & 0x06))
                        {

    2D36: A0 0D 7B 61 0A 06 00                             // ..{a...

                            PFIT = 0x06
                        }

    2D3D: 70 0A 06 50 46 49 54                             // p..PFIT

                        Else
                        {

    2D44: A1 08                                            // ..

                            PFIT = 0x08
                        }
                    }
                }

    2D46: 70 0A 08 50 46 49 54                             // p..PFIT

                Else
                {

    2D4D: A1 0C                                            // ..

                    PFIT ^= 0x07
                }

                PFIT |= 0x80000000

    2D4F: 7F 50 46 49 54 0A 07 50 46 49 54 7D 50 46 49 54  // .PFIT..PFIT}PFIT
    2D5F: 0C 00 00 00 80 50 46 49 54                       // .....PFIT

                ASLC = 0x04
            }

    2D68: 70 0A 04 41 53 4C 43                             // p..ASLC

            ElseIf
    2D6F: A1 4D 05                                         // .M.

 ((Arg0 == One))
            {

    2D72: A0 43 04 93 68 01                                // .C..h.

                If ((Arg1 & 0x80000000))
                {
                    Arg1 &= 0x7FFFFFFF

    2D78: A0 17 7B 69 0C 00 00 00 80 00 7B 69 0C FF FF FF  // ..{i......{i....
    2D88: 7F 69                                            // .i

                    BCLP = Arg1
                }

    2D8A: 70 69 42 43 4C 50                                // piBCLP

                Else
                {

    2D90: A1 10                                            // ..

                    BCLP = 
    2D92: 70                                               // p

((Arg1 * 0xFF) / 0x64)
                }

                BCLP |= 0x80000000

    2D93: 78 77 69 0A FF 00 0A 64 00 00 42 43 4C 50 7D 42  // xwi....d..BCLP}B
    2DA3: 43 4C 50 0C 00 00 00 80 42 43 4C 50              // CLP.....BCLP

                ASLC = 0x02
            }

    2DAF: 70 0A 02 41 53 4C 43                             // p..ASLC

            ElseIf
    2DB6: A1 16                                            // ..

 ((Arg0 == Zero))
            {
                ALSI = Arg1

    2DB8: A0 10 93 68 00 70 69 41 4C 53 49                 // ...h.piALSI

                ASLC = One
            }

    2DC3: 70 01 41 53 4C 43                                // p.ASLC

            Else
            {

    2DC9: A1 03                                            // ..

                Return (One)
            }

            ASLE = One

    2DCB: A4 01 70 01 41 53 4C 45                          // ..p.ASLE

            Return (Zero)
        }


    2DD3: A4 00                                            // ..

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {

    2DD5: 14 4D 48 5F 44 53 4D 0C                          // .MH_DSM.


    2DDD: 08 5F 54 5F 30 00                                // ._T_0.

            If ((Arg0 == 
    2DE3: A0 4A 47 93 68                                   // .JG.h

ToUUID ("3e5b41c6-eb1d-4260-9d15-c71fbadae414") /* Unknown UUID */))
            {

    2DE8: 11 13 0A 10 C6 41 5B 3E 1D EB 60 42 9D 15 C7 1F  // .....A[>..`B....
    2DF8: BA DA E4 14                                      // ....

                Switch (ToInteger (Arg2))
                {

    2DFC: A2 41 46 01 70 99 6A 00 5F 54 5F 30              // .AF.p.j._T_0

                    Case (Zero)
                    {

    2E08: A0 37 93 5F 54 5F 30 00                          // .7._T_0.

                        If ((Arg1 == One))
                        {
                            Debug = "iGfx Supported Functions Bitmap "

    2E10: A0 2F 93 69 01 70 0D 69 47 66 78 20 53 75 70 70  // ./.i.p.iGfx Supp
    2E20: 6F 72 74 65 64 20 46 75 6E 63 74 69 6F 6E 73 20  // orted Functions 
    2E30: 42 69 74 6D 61 70 20 00 5B 31                    // Bitmap .[1

                            Return (0x0001E7FF)
                        }
                    }

    2E3A: A4 0C FF E7 01 00                                // ......

                    Case
    2E40: A1 4C 41                                         // .LA

 (One)
                    {

    2E43: A0 4D 09 93 5F 54 5F 30 01                       // .M.._T_0.

                        If ((Arg1 == One))
                        {
                            Debug = " Adapter Power State Notification "

    2E4C: A0 44 09 93 69 01 70 0D 20 41 64 61 70 74 65 72  // .D..i.p. Adapter
    2E5C: 20 50 6F 77 65 72 20 53 74 61 74 65 20 4E 6F 74  //  Power State Not
    2E6C: 69 66 69 63 61 74 69 6F 6E 20 00 5B 31           // ification .[1

                            If (((S0ID == One) && 
    2E79: A0 39 90 93 53 30 49 44 01                       // .9..S0ID.

(OSYS < 0x07DF)))
                            {

    2E82: 95 4F 53 59 53 0B DF 07                          // .OSYS...

                                If (((DerefOf (
    2E8A: A0 12 93 7B 83                                   // ...{.

Arg3 [Zero]) & 0xFF) == One))
                                {
                                    \GUAM (One)
                                }

                                Local0 = 
    2E8F: 88 6B 00 00 0A FF 00 01 5C 47 55 41 4D 01 70     // .k......\GUAM.p

(DerefOf (
    2E9E: 7B 83                                            // {.

Arg3 [One]) & 0xFF)

    2EA0: 88 6B 01 00 0A FF 00 60                          // .k.....`

                                If ((Local0 == Zero))
                                {
                                    \GUAM (Zero)
                                }
                            }


    2EA8: A0 0A 93 60 00 5C 47 55 41 4D 00                 // ...`.\GUAM.

                            If ((DerefOf (
    2EB3: A0 2B 93 83                                      // .+..

Arg3 [Zero]) == Zero))
                            {
                                Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */

    2EB7: 88 6B 00 00 00 70 43 4C 49 44 60                 // .k...pCLID`

                                If ((0x80000000 & Local0))
                                {
                                    CLID &= 0x0F
                                    GLID (CLID)
                                }
                            }


    2EC2: A0 1C 7B 0C 00 00 00 80 60 00 7B 43 4C 49 44 0A  // ..{.....`.{CLID.
    2ED2: 0F 43 4C 49 44 47 4C 49 44 43 4C 49 44           // .CLIDGLIDCLID

                            Return (One)
                        }
                    }

    2EDF: A4 01                                            // ..

                    Case
    2EE1: A1 4B 37                                         // .K7

 (0x02)
                    {

    2EE4: A0 35 93 5F 54 5F 30 0A 02                       // .5._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "Display Power State Notification "

    2EED: A0 2C 93 69 01 70 0D 44 69 73 70 6C 61 79 20 50  // .,.i.p.Display P
    2EFD: 6F 77 65 72 20 53 74 61 74 65 20 4E 6F 74 69 66  // ower State Notif
    2F0D: 69 63 61 74 69 6F 6E 20 00 5B 31                 // ication .[1

                            Return (One)
                        }
                    }

    2F18: A4 01                                            // ..

                    Case
    2F1A: A1 42 34                                         // .B4

 (0x03)
                    {

    2F1D: A0 36 93 5F 54 5F 30 0A 03                       // .6._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "BIOS POST Completion Notification "

    2F26: A0 2D 93 69 01 70 0D 42 49 4F 53 20 50 4F 53 54  // .-.i.p.BIOS POST
    2F36: 20 43 6F 6D 70 6C 65 74 69 6F 6E 20 4E 6F 74 69  //  Completion Noti
    2F46: 66 69 63 61 74 69 6F 6E 20 00 5B 31              // fication .[1

                            Return (One)
                        }
                    }

    2F52: A4 01                                            // ..

                    Case
    2F54: A1 48 30                                         // .H0

 (0x04)
                    {

    2F57: A0 27 93 5F 54 5F 30 0A 04                       // .'._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "Pre-Hires Set Mode "

    2F60: A0 1E 93 69 01 70 0D 50 72 65 2D 48 69 72 65 73  // ...i.p.Pre-Hires
    2F70: 20 53 65 74 20 4D 6F 64 65 20 00 5B 31           //  Set Mode .[1

                            Return (One)
                        }
                    }

    2F7D: A4 01                                            // ..

                    Case
    2F7F: A1 4D 2D                                         // .M-

 (0x05)
                    {

    2F82: A0 28 93 5F 54 5F 30 0A 05                       // .(._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "Post-Hires Set Mode "

    2F8B: A0 1F 93 69 01 70 0D 50 6F 73 74 2D 48 69 72 65  // ...i.p.Post-Hire
    2F9B: 73 20 53 65 74 20 4D 6F 64 65 20 00 5B 31        // s Set Mode .[1

                            Return (One)
                        }
                    }

    2FA9: A4 01                                            // ..

                    Case
    2FAB: A1 41 2B                                         // .A+

 (0x06)
                    {

    2FAE: A0 30 93 5F 54 5F 30 0A 06                       // .0._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "SetDisplayDeviceNotification"

    2FB7: A0 27 93 69 01 70 0D 53 65 74 44 69 73 70 6C 61  // .'.i.p.SetDispla
    2FC7: 79 44 65 76 69 63 65 4E 6F 74 69 66 69 63 61 74  // yDeviceNotificat
    2FD7: 69 6F 6E 00 5B 31                                // ion.[1

                            Return (One)
                        }
                    }

    2FDD: A4 01                                            // ..

                    Case
    2FDF: A1 4D 27                                         // .M'

 (0x07)
                    {

    2FE2: A0 38 93 5F 54 5F 30 0A 07                       // .8._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "SetBootDevicePreference "
                            IBTT = (DerefOf (
    2FEB: A0 2F 93 69 01 70 0D 53 65 74 42 6F 6F 74 44 65  // ./.i.p.SetBootDe
    2FFB: 76 69 63 65 50 72 65 66 65 72 65 6E 63 65 20 00  // vicePreference .
    300B: 5B 31 7B 83                                      // [1{.

Arg3 [Zero]) & 0xFF)

    300F: 88 6B 00 00 0A FF 49 42 54 54                    // .k....IBTT

                            Return (One)
                        }
                    }

    3019: A4 01                                            // ..

                    Case
    301B: A1 41 24                                         // .A$

 (0x08)
                    {

    301E: A0 42 06 93 5F 54 5F 30 0A 08                    // .B.._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "SetPanelPreference "
                            IPSC = (DerefOf (
    3028: A0 48 05 93 69 01 70 0D 53 65 74 50 61 6E 65 6C  // .H..i.p.SetPanel
    3038: 50 72 65 66 65 72 65 6E 63 65 20 00 5B 31 7B 83  // Preference .[1{.

Arg3 [Zero]) & 0xFF)

    3048: 88 6B 00 00 0A FF 49 50 53 43                    // .k....IPSC

                            If ((DerefOf (
    3052: A0 1B 7B 83                                      // ..{.

Arg3 [One]) & 0xFF))
                            {
                                IPAT = (DerefOf (
    3056: 88 6B 01 00 0A FF 00 7B 83                       // .k.....{.

Arg3 [One]) & 0xFF)

    305F: 88 6B 01 00 0A FF 49 50 41 54                    // .k....IPAT

                                IPAT--
                            }

                            IBIA = ((DerefOf (
    3069: 76 49 50 41 54 7B 7A 83                          // vIPAT{z.

Arg3 [0x02]) >> 0x04) & 0x07)

    3071: 88 6B 0A 02 00 0A 04 00 0A 07 49 42 49 41        // .k........IBIA

                            Return (One)
                        }
                    }

    307F: A4 01                                            // ..

                    Case
    3081: A1 4B 1D                                         // .K.

 (0x09)
                    {

    3084: A0 22 93 5F 54 5F 30 0A 09                       // ."._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "FullScreenDOS "

    308D: A0 19 93 69 01 70 0D 46 75 6C 6C 53 63 72 65 65  // ...i.p.FullScree
    309D: 6E 44 4F 53 20 00 5B 31                          // nDOS .[1

                            Return (One)
                        }
                    }

    30A5: A4 01                                            // ..

                    Case
    30A7: A1 45 1B                                         // .E.

 (0x0A)
                    {

    30AA: A0 31 93 5F 54 5F 30 0A 0A                       // .1._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "APM Complete "
                            Local0 = 
    30B3: A0 28 93 69 01 70 0D 41 50 4D 20 43 6F 6D 70 6C  // .(.i.p.APM Compl
    30C3: 65 74 65 20 00 5B 31 70                          // ete .[1p

(LIDS << 0x08)
                            Local0 += 0x0100

    30CB: 79 4C 49 44 53 0A 08 00 60 72 60 0B 00 01 60     // yLIDS...`r`...`

                            Return (Local0)
                        }
                    }

    30DA: A4 60                                            // .`

                    Case
    30DC: A1 40 18                                         // .@.

 (0x0D)
                    {

    30DF: A0 46 06 93 5F 54 5F 30 0A 0D                    // .F.._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "GetBootDisplayPreference "
                            Local0 = ((DerefOf (
    30E9: A0 4C 05 93 69 01 70 0D 47 65 74 42 6F 6F 74 44  // .L..i.p.GetBootD
    30F9: 69 73 70 6C 61 79 50 72 65 66 65 72 65 6E 63 65  // isplayPreference
    3109: 20 00 5B 31 7D 79 83                             //  .[1}y.

Arg3 [0x03]) << 0x18) | 
    3110: 88 6B 0A 03 00 0A 18 00                          // .k......

(DerefOf (
    3118: 79 83                                            // y.


                                Arg3 [0x02]) << 0x10))
                            Local0 &= 0xEFFF0000
                            Local0 &= 
    311A: 88 6B 0A 02 00 0A 10 00 60 7B 60 0C 00 00 FF EF  // .k......`{`.....
    312A: 60 7B 60                                         // `{`

(DerefOf (
    312D: 79 83                                            // y.

DBTB [IBTT]) << 0x10)
                            Local0 |= IBTT

    312F: 88 44 42 54 42 49 42 54 54 00 0A 10 00 60 7D 49  // .DBTBIBTT....`}I
    313F: 42 54 54 60 60                                   // BTT``

                            Return (Local0)
                        }
                    }

    3144: A4 60                                            // .`

                    Case
    3146: A1 46 11                                         // .F.

 (0x0E)
                    {

    3149: A0 4B 05 93 5F 54 5F 30 0A 0E                    // .K.._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "GetPanelDetails "
                            Local0 = IPSC /* \IPSC */
                            Local0 |= 
    3153: A0 41 05 93 69 01 70 0D 47 65 74 50 61 6E 65 6C  // .A..i.p.GetPanel
    3163: 44 65 74 61 69 6C 73 20 00 5B 31 70 49 50 53 43  // Details .[1pIPSC
    3173: 60 7D 60                                         // `}`

(IPAT << 0x08)
                            Local0 += 0x0100
                            Local0 |= 
    3176: 79 49 50 41 54 0A 08 00 60 72 60 0B 00 01 60 7D  // yIPAT...`r`...`}
    3186: 60                                               // `

(LIDS << 0x10)
                            Local0 += 0x00010000
                            Local0 |= 
    3187: 79 4C 49 44 53 0A 10 00 60 72 60 0C 00 00 01 00  // yLIDS...`r`.....
    3197: 60 7D 60                                         // `}`

(IBIA << 0x14)

    319A: 79 49 42 49 41 0A 14 00 60                       // yIBIA...`

                            Return (Local0)
                        }
                    }

    31A3: A4 60                                            // .`

                    Case
    31A5: A1 47 0B                                         // .G.

 (0x0F)
                    {

    31A8: A0 48 06 93 5F 54 5F 30 0A 0F                    // .H.._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "GetInternalGraphics "
                            Local0 = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                            Local0 ^= One
                            Local0 |= 
    31B2: A0 4E 05 93 69 01 70 0D 47 65 74 49 6E 74 65 72  // .N..i.p.GetInter
    31C2: 6E 61 6C 47 72 61 70 68 69 63 73 20 00 5B 31 70  // nalGraphics .[1p
    31D2: 47 49 56 44 60 7F 60 01 60 7D 60                 // GIVD`.`.`}`

(GMFN << One)
                            Local0 |= 0x1800
                            Local0 |= 
    31DD: 79 47 4D 46 4E 01 00 60 7D 60 0B 00 18 60 7D 60  // yGMFN..`}`...`}`

(IDMS << 0x11)
                            Local0 |= (DerefOf (
    31ED: 79 49 44 4D 53 0A 11 00 60 7D 79 83              // yIDMS...`}y.

DerefOf (
    31F9: 88 83                                            // ..

CDCT [HVCO]) [CDVL]) << 
                                0x15)

    31FB: 88 43 44 43 54 48 56 43 4F 00 43 44 56 4C 00 0A  // .CDCTHVCO.CDVL..
    320B: 15 00 60 60                                      // ..``

                            Return (Local0)
                        }
                    }

    320F: A4 60                                            // .`

                    Case
    3211: A1 4B 04                                         // .K.

 (0x10)
                    {

    3214: A0 48 04 93 5F 54 5F 30 0A 10                    // .H.._T_0..

                        If ((Arg1 == One))
                        {
                            Debug = "GetAKSV "

    321E: A0 3E 93 69 01 70 0D 47 65 74 41 4B 53 56 20 00  // .>.i.p.GetAKSV .
    322E: 5B 31                                            // [1

                            Name (KSVP, 
    3230: 08 4B 53 56 50                                   // .KSVP

Package (0x02)
                            {
                                0x80000000, 
                                0x8000
                            })
                            KSVP [Zero] = KSV0 /* \KSV0 */
                            KSVP [One] = KSV1 /* \KSV1 */

    3235: 12 0A 02 0C 00 00 00 80 0B 00 80 70 4B 53 56 30  // ...........pKSV0
    3245: 88 4B 53 56 50 00 00 70 4B 53 56 31 88 4B 53 56  // .KSVP..pKSV1.KSV
    3255: 50 01 00                                         // P..

                            Return (KSVP) /* \_SB_.PCI0.GFX0._DSM.KSVP */
                        }
                    }


    3258: A4 4B 53 56 50                                   // .KSVP

                }
            }


    325D: A5                                               // .

            Return (
    325E: A4                                               // .

Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }


    325F: 11 03 01 00                                      // ....

    Scope (\_SB)
    {

    3263: 10 3C 5C 5F 53 42 5F                             // .<\_SB_

        Device (SKC0)
        {

    326A: 5B 82 34 53 4B 43 30                             // [.4SKC0

            Name (_HID, "INT3470")  // _HID: Hardware ID

    3271: 08 5F 48 49 44 0D 49 4E 54 33 34 37 30 00        // ._HID.INT3470.

            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID

    327F: 08 5F 43 49 44 0C 41 D0 0C 02                    // ._CID.A...

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

    3289: 14 16 5F 53 54 41 00                             // .._STA.

                If ((IMTP == 0x02))
                {

    3290: A0 0B 93 49 4D 54 50 0A 02                       // ...IMTP..

                    Return (0x0F)
                }

    3299: A4 0A 0F                                         // ...

                Else
                {

    329C: A1 03                                            // ..

                    Return (Zero)
                }
            }
        }
    }


    329E: A4 00                                            // ..

    Scope (\_SB.PCI0.GFX0)
    {

    32A0: 10 35 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58  // .5\/._SB_PCI0GFX
    32B0: 30                                               // 0

        Device (SKC0)
        {

    32B1: 5B 82 23 53 4B 43 30                             // [.#SKC0

            Name (_ADR, 0xCA00)  // _ADR: Address

    32B8: 08 5F 41 44 52 0B 00 CA                          // ._ADR...

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

    32C0: 14 15 5F 53 54 41 00                             // .._STA.

                If ((IMTP == One))
                {

    32C7: A0 0A 93 49 4D 54 50 01                          // ...IMTP.

                    Return (0x0F)
                }

    32CF: A4 0A 0F                                         // ...

                Else
                {

    32D2: A1 03                                            // ..

                    Return (Zero)
                }
            }
        }
    }
}



Table Header:
Table Body (Length 0x32D6)
