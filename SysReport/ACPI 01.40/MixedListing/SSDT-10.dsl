{
    External (_PR_.CPPC, IntObj)
    External (_PR_.PR00, DeviceObj)
    External (_PR_.PR00.LPSS, PkgObj)
    External (_PR_.PR00.TPSS, PkgObj)
    External (_PR_.PR01, DeviceObj)
    External (_PR_.PR02, DeviceObj)
    External (_PR_.PR03, DeviceObj)
    External (_PR_.PR04, DeviceObj)
    External (_PR_.PR05, DeviceObj)
    External (_PR_.PR06, DeviceObj)
    External (_PR_.PR07, DeviceObj)
    External (_PR_.PR08, DeviceObj)
    External (_PR_.PR09, DeviceObj)
    External (_PR_.PR10, DeviceObj)
    External (_PR_.PR11, DeviceObj)
    External (_PR_.PR12, DeviceObj)
    External (_PR_.PR13, DeviceObj)
    External (_PR_.PR14, DeviceObj)
    External (_PR_.PR15, DeviceObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GMHB, MethodObj)    // 0 Arguments
    External (PNHM, FieldUnitObj)
    External (TCNT, FieldUnitObj)


    0024: A0 40 14 00 15 5C 2E 5F 53 42 5F 4F 53 43 50 01  // .@...\._SB_OSCP.
    0034: 00 15 5C 54 43 4E 54 05 00 15 5C 50 4E 48 4D 05  // ..\TCNT...\PNHM.
    0044: 00 15 5C 2E 5F 53 42 5F 50 43 49 30 06 00 15 5C  // ..\._SB_PCI0...\
    0054: 2F 03 5F 53 42 5F 50 43 49 30 47 4D 48 42 08 00  // /._SB_PCI0GMHB..
    0064: 15 5C 2E 5F 50 52 5F 50 52 30 30 06 00 15 5C 2E  // .\._PR_PR00...\.
    0074: 5F 50 52 5F 50 52 30 31 06 00 15 5C 2E 5F 50 52  // _PR_PR01...\._PR
    0084: 5F 50 52 30 32 06 00 15 5C 2E 5F 50 52 5F 50 52  // _PR02...\._PR_PR
    0094: 30 33 06 00 15 5C 2E 5F 50 52 5F 50 52 30 34 06  // 03...\._PR_PR04.
    00A4: 00 15 5C 2E 5F 50 52 5F 50 52 30 35 06 00 15 5C  // ..\._PR_PR05...\
    00B4: 2E 5F 50 52 5F 50 52 30 36 06 00 15 5C 2E 5F 50  // ._PR_PR06...\._P
    00C4: 52 5F 50 52 30 37 06 00 15 5C 2E 5F 50 52 5F 50  // R_PR07...\._PR_P
    00D4: 52 30 38 06 00 15 5C 2E 5F 50 52 5F 50 52 30 39  // R08...\._PR_PR09
    00E4: 06 00 15 5C 2E 5F 50 52 5F 50 52 31 30 06 00 15  // ...\._PR_PR10...
    00F4: 5C 2E 5F 50 52 5F 50 52 31 31 06 00 15 5C 2E 5F  // \._PR_PR11...\._
    0104: 50 52 5F 50 52 31 32 06 00 15 5C 2E 5F 50 52 5F  // PR_PR12...\._PR_
    0114: 50 52 31 33 06 00 15 5C 2E 5F 50 52 5F 50 52 31  // PR13...\._PR_PR1
    0124: 34 06 00 15 5C 2E 5F 50 52 5F 50 52 31 35 06 00  // 4...\._PR_PR15..
    0134: 15 5C 2E 5F 50 52 5F 43 50 50 43 01 00 15 5C 2F  // .\._PR_CPPC...\/
    0144: 03 5F 50 52 5F 50 52 30 30 4C 50 53 53 04 00 15  // ._PR_PR00LPSS...
    0154: 5C 2F 03 5F 50 52 5F 50 52 30 30 54 50 53 53 04  // \/._PR_PR00TPSS.
    0164: 00                                               // .

    Scope (\_SB.PCI0)
    {

    0165: 10 49 86 5C 2E 5F 53 42 5F 50 43 49 30           // .I.\._SB_PCI0

        OperationRegion (MBAR, SystemMemory, (\_SB.PCI0.GMHB () + 0x5000), 0x1000)

    0172: 5B 80 4D 42 41 52 00 72 5C 2F 03 5F 53 42 5F 50  // [.MBAR.r\/._SB_P
    0182: 43 49 30 47 4D 48 42 0B 00 50 00 0B 00 10        // CI0GMHB..P....

        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x9A0), 
            PPL1,   15, 
            PL1E,   1, 
                ,   1, 
            PL1T,   7, 
            Offset (0x9A4), 
            PPL2,   15, 
            PL2E,   1, 
                ,   1, 
            PL2T,   7, 
            Offset (0xF3C), 
            TARN,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TAR1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TAR2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            TAR,    8
        }


    0190: 5B 81 44 0C 4D 42 41 52 01 00 80 98 04 50 54 44  // [.D.MBAR.....PTD
    01A0: 50 0F 00 01 50 4D 49 4E 0F 00 01 50 4D 41 58 0F  // P...PMIN...PMAX.
    01B0: 00 01 54 4D 41 58 07 00 09 50 57 52 55 04 00 04  // ..TMAX...PWRU...
    01C0: 45 47 59 55 05 00 03 54 49 4D 55 04 00 4C 0E 00  // EGYU...TIMU..L..
    01D0: 20 4C 50 4D 53 01 43 54 4E 4C 02 00 4D 21 50 50  //  LPMS.CTNL..M!PP
    01E0: 4C 31 0F 50 4C 31 45 01 00 01 50 4C 31 54 07 00  // L1.PL1E...PL1T..
    01F0: 08 50 50 4C 32 0F 50 4C 32 45 01 00 01 50 4C 32  // .PPL2.PL2E...PL2
    0200: 54 07 00 88 CA 02 54 41 52 4E 08 00 18 50 54 44  // T.....TARN...PTD
    0210: 31 0F 00 01 54 41 52 31 08 00 08 50 4D 58 31 0F  // 1...TAR1...PMX1.
    0220: 00 01 50 4D 4E 31 0F 00 01 50 54 44 32 0F 00 01  // ..PMN1...PTD2...
    0230: 54 41 52 32 08 00 08 50 4D 58 32 0F 00 01 50 4D  // TAR2...PMX2...PM
    0240: 4E 32 0F 00 01 43 54 43 4C 02 00 1D 43 4C 43 4B  // N2...CTCL...CLCK
    0250: 01 54 41 52 5F 08                                // .TAR_.

        Method (CTCU, 0, NotSerialized)
        {
            PPL1 = PTD2 /* \_SB_.PCI0.PTD2 */
            PL1E = One
            PPL2 = CLC2 (PTD2)
            PL2E = One
            SPPC (One)
            TAR = (TAR2 - One)

    0256: 14 3E 43 54 43 55 00 70 50 54 44 32 50 50 4C 31  // .>CTCU.pPTD2PPL1
    0266: 70 01 50 4C 31 45 70 43 4C 43 32 50 54 44 32 50  // p.PL1EpCLC2PTD2P
    0276: 50 4C 32 70 01 50 4C 32 45 53 50 50 43 01 74 54  // PL2p.PL2ESPPC.tT
    0286: 41 52 32 01 54 41 52 5F                          // AR2.TAR_

            CTCL = 0x02
        }


    028E: 70 0A 02 43 54 43 4C                             // p..CTCL

        Method (CTCN, 0, NotSerialized)
        {

    0295: 14 41 09 43 54 43 4E 00                          // .A.CTCN.

            If ((CTCL == One))
            {
                PPL1 = PTDP /* \_SB_.PCI0.PTDP */
                PL1E = One
                PPL2 = CLC2 (PTDP)
                PL2E = One
                NPPC (TARN)
                TAR = (TARN - One)

    029D: A0 42 04 93 43 54 43 4C 01 70 50 54 44 50 50 50  // .B..CTCL.pPTDPPP
    02AD: 4C 31 70 01 50 4C 31 45 70 43 4C 43 32 50 54 44  // L1p.PL1EpCLC2PTD
    02BD: 50 50 50 4C 32 70 01 50 4C 32 45 4E 50 50 43 54  // PPPL2p.PL2ENPPCT
    02CD: 41 52 4E 74 54 41 52 4E 01 54 41 52 5F           // ARNtTARN.TAR_

                CTCL = Zero
            }

    02DA: 70 00 43 54 43 4C                                // p.CTCL

            ElseIf
    02E0: A1 46 04                                         // .F.

 ((CTCL == 0x02))
            {
                CTCL = Zero
                TAR = (TARN - One)
                NPPC (TARN)
                PPL2 = CLC2 (PTDP)
                PL2E = One
                PPL1 = PTDP /* \_SB_.PCI0.PTDP */

    02E3: A0 43 04 93 43 54 43 4C 0A 02 70 00 43 54 43 4C  // .C..CTCL..p.CTCL
    02F3: 74 54 41 52 4E 01 54 41 52 5F 4E 50 50 43 54 41  // tTARN.TAR_NPPCTA
    0303: 52 4E 70 43 4C 43 32 50 54 44 50 50 50 4C 32 70  // RNpCLC2PTDPPPL2p
    0313: 01 50 4C 32 45 70 50 54 44 50 50 50 4C 31        // .PL2EpPTDPPPL1

                PL1E = One
            }
        }


    0321: 70 01 50 4C 31 45                                // p.PL1E

        Method (CTCD, 0, NotSerialized)
        {
            CTCL = One
            TAR = (TAR1 - One)
            NPPC (TAR1)
            PPL2 = CLC2 (PTD1)
            PL2E = One
            PPL1 = PTD1 /* \_SB_.PCI0.PTD1 */

    0327: 14 41 04 43 54 43 44 00 70 01 43 54 43 4C 74 54  // .A.CTCD.p.CTCLtT
    0337: 41 52 31 01 54 41 52 5F 4E 50 50 43 54 41 52 31  // AR1.TAR_NPPCTAR1
    0347: 70 43 4C 43 32 50 54 44 31 50 50 4C 32 70 01 50  // pCLC2PTD1PPL2p.P
    0357: 4C 32 45 70 50 54 44 31 50 50 4C 31              // L2EpPTD1PPL1

            PL1E = One
        }


    0363: 70 01 50 4C 31 45                                // p.PL1E

        Name (TRAT, Zero)

    0369: 08 54 52 41 54 00                                // .TRAT.

        Name (PRAT, Zero)

    036F: 08 50 52 41 54 00                                // .PRAT.

        Name (TMPI, Zero)

    0375: 08 54 4D 50 49 00                                // .TMPI.

        Method (NPPC, 1, Serialized)
        {
            TRAT = Arg0

    037B: 14 4C 0C 4E 50 50 43 09 70 68 54 52 41 54        // .L.NPPC.phTRAT

            If ((\_SB.OSCP & 0x0400))
            {

    0389: A0 25 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0B 00 04  // .%{\._SB_OSCP...
    0399: 00                                               // .

                TMPI = 
    039A: 70                                               // p

SizeOf (\_PR.PR00.TPSS)
            }

    039B: 87 5C 2F 03 5F 50 52 5F 50 52 30 30 54 50 53 53  // .\/._PR_PR00TPSS
    03AB: 54 4D 50 49                                      // TMPI

            Else
            {

    03AF: A1 16                                            // ..

                TMPI = 
    03B1: 70                                               // p

SizeOf (\_PR.PR00.LPSS)
            }


    03B2: 87 5C 2F 03 5F 50 52 5F 50 52 30 30 4C 50 53 53  // .\/._PR_PR00LPSS
    03C2: 54 4D 50 49                                      // TMPI

            While (
    03C6: A2 41 08 92                                      // .A..

(TMPI != Zero))
            {
                TMPI--

    03CA: 93 54 4D 50 49 00 76 54 4D 50 49                 // .TMPI.vTMPI

                If ((\_SB.OSCP & 0x0400))
                {

    03D5: A0 30 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0B 00 04  // .0{\._SB_OSCP...
    03E5: 00                                               // .

                    PRAT = 
    03E6: 70                                               // p

DerefOf (
    03E7: 83                                               // .

DerefOf (
    03E8: 88 83                                            // ..

\_PR.PR00.TPSS [TMPI]) [0x04])
                }

    03EA: 88 5C 2F 03 5F 50 52 5F 50 52 30 30 54 50 53 53  // .\/._PR_PR00TPSS
    03FA: 54 4D 50 49 00 0A 04 00 50 52 41 54              // TMPI....PRAT

                Else
                {

    0406: A1 21                                            // .!

                    PRAT = 
    0408: 70                                               // p

DerefOf (
    0409: 83                                               // .

DerefOf (
    040A: 88 83                                            // ..

\_PR.PR00.LPSS [TMPI]) [0x04])
                }

                PRAT >>= 0x08

    040C: 88 5C 2F 03 5F 50 52 5F 50 52 30 30 4C 50 53 53  // .\/._PR_PR00LPSS
    041C: 54 4D 50 49 00 0A 04 00 50 52 41 54 7A 50 52 41  // TMPI....PRATzPRA
    042C: 54 0A 08 50 52 41 54                             // T..PRAT

                If (
    0433: A0 14 92                                         // ...

(PRAT >= TRAT))
                {
                    SPPC (TMPI)

    0436: 95 50 52 41 54 54 52 41 54 53 50 50 43 54 4D 50  // .PRATTRATSPPCTMP
    0446: 49                                               // I

                    Break
                }
            }
        }


    0447: A5                                               // .

        Method (SPPC, 1, Serialized)
        {

    0448: 14 4B 52 53 50 50 43 09                          // .KRSPPC.

            \_PR.CPPC = Arg0

    0450: 08 5F 54 5F 30 00 70 68 5C 2E 5F 50 52 5F 43 50  // ._T_0.ph\._PR_CP
    0460: 50 43                                            // PC

            Switch (ToInteger (TCNT))
            {

    0462: A2 41 51 01 70 99 54 43 4E 54 00 5F 54 5F 30     // .AQ.p.TCNT._T_0

                Case (0x10)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change
                    Notify (\_PR.PR03, 0x80) // Status Change
                    Notify (\_PR.PR04, 0x80) // Status Change
                    Notify (\_PR.PR05, 0x80) // Status Change
                    Notify (\_PR.PR06, 0x80) // Status Change
                    Notify (\_PR.PR07, 0x80) // Status Change
                    Notify (\_PR.PR08, 0x80) // Status Change
                    Notify (\_PR.PR09, 0x80) // Status Change
                    Notify (\_PR.PR10, 0x80) // Status Change
                    Notify (\_PR.PR11, 0x80) // Status Change
                    Notify (\_PR.PR12, 0x80) // Status Change
                    Notify (\_PR.PR13, 0x80) // Status Change
                    Notify (\_PR.PR14, 0x80) // Status Change

    0471: A0 49 0D 93 5F 54 5F 30 0A 10 86 5C 2E 5F 50 52  // .I.._T_0...\._PR
    0481: 5F 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52  // _PR00...\._PR_PR
    0491: 30 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A  // 01...\._PR_PR02.
    04A1: 80 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80 86 5C  // ..\._PR_PR03...\
    04B1: 2E 5F 50 52 5F 50 52 30 34 0A 80 86 5C 2E 5F 50  // ._PR_PR04...\._P
    04C1: 52 5F 50 52 30 35 0A 80 86 5C 2E 5F 50 52 5F 50  // R_PR05...\._PR_P
    04D1: 52 30 36 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 37  // R06...\._PR_PR07
    04E1: 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 38 0A 80 86  // ...\._PR_PR08...
    04F1: 5C 2E 5F 50 52 5F 50 52 30 39 0A 80 86 5C 2E 5F  // \._PR_PR09...\._
    0501: 50 52 5F 50 52 31 30 0A 80 86 5C 2E 5F 50 52 5F  // PR_PR10...\._PR_
    0511: 50 52 31 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 31  // PR11...\._PR_PR1
    0521: 32 0A 80 86 5C 2E 5F 50 52 5F 50 52 31 33 0A 80  // 2...\._PR_PR13..
    0531: 86 5C 2E 5F 50 52 5F 50 52 31 34 0A 80           // .\._PR_PR14..

                    Notify (\_PR.PR15, 0x80) // Status Change
                }

    053E: 86 5C 2E 5F 50 52 5F 50 52 31 35 0A 80           // .\._PR_PR15..

                Case
    054B: A1 47 42                                         // .GB

 (0x0E)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change
                    Notify (\_PR.PR03, 0x80) // Status Change
                    Notify (\_PR.PR04, 0x80) // Status Change
                    Notify (\_PR.PR05, 0x80) // Status Change
                    Notify (\_PR.PR06, 0x80) // Status Change
                    Notify (\_PR.PR07, 0x80) // Status Change
                    Notify (\_PR.PR08, 0x80) // Status Change
                    Notify (\_PR.PR09, 0x80) // Status Change
                    Notify (\_PR.PR10, 0x80) // Status Change
                    Notify (\_PR.PR11, 0x80) // Status Change
                    Notify (\_PR.PR12, 0x80) // Status Change

    054E: A0 4F 0B 93 5F 54 5F 30 0A 0E 86 5C 2E 5F 50 52  // .O.._T_0...\._PR
    055E: 5F 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52  // _PR00...\._PR_PR
    056E: 30 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A  // 01...\._PR_PR02.
    057E: 80 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80 86 5C  // ..\._PR_PR03...\
    058E: 2E 5F 50 52 5F 50 52 30 34 0A 80 86 5C 2E 5F 50  // ._PR_PR04...\._P
    059E: 52 5F 50 52 30 35 0A 80 86 5C 2E 5F 50 52 5F 50  // R_PR05...\._PR_P
    05AE: 52 30 36 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 37  // R06...\._PR_PR07
    05BE: 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 38 0A 80 86  // ...\._PR_PR08...
    05CE: 5C 2E 5F 50 52 5F 50 52 30 39 0A 80 86 5C 2E 5F  // \._PR_PR09...\._
    05DE: 50 52 5F 50 52 31 30 0A 80 86 5C 2E 5F 50 52 5F  // PR_PR10...\._PR_
    05EE: 50 52 31 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 31  // PR11...\._PR_PR1
    05FE: 32 0A 80                                         // 2..

                    Notify (\_PR.PR13, 0x80) // Status Change
                }

    0601: 86 5C 2E 5F 50 52 5F 50 52 31 33 0A 80           // .\._PR_PR13..

                Case
    060E: A1 44 36                                         // .D6

 (0x0C)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change
                    Notify (\_PR.PR03, 0x80) // Status Change
                    Notify (\_PR.PR04, 0x80) // Status Change
                    Notify (\_PR.PR05, 0x80) // Status Change
                    Notify (\_PR.PR06, 0x80) // Status Change
                    Notify (\_PR.PR07, 0x80) // Status Change
                    Notify (\_PR.PR08, 0x80) // Status Change
                    Notify (\_PR.PR09, 0x80) // Status Change
                    Notify (\_PR.PR10, 0x80) // Status Change

    0611: A0 45 0A 93 5F 54 5F 30 0A 0C 86 5C 2E 5F 50 52  // .E.._T_0...\._PR
    0621: 5F 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52  // _PR00...\._PR_PR
    0631: 30 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A  // 01...\._PR_PR02.
    0641: 80 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80 86 5C  // ..\._PR_PR03...\
    0651: 2E 5F 50 52 5F 50 52 30 34 0A 80 86 5C 2E 5F 50  // ._PR_PR04...\._P
    0661: 52 5F 50 52 30 35 0A 80 86 5C 2E 5F 50 52 5F 50  // R_PR05...\._PR_P
    0671: 52 30 36 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 37  // R06...\._PR_PR07
    0681: 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 38 0A 80 86  // ...\._PR_PR08...
    0691: 5C 2E 5F 50 52 5F 50 52 30 39 0A 80 86 5C 2E 5F  // \._PR_PR09...\._
    06A1: 50 52 5F 50 52 31 30 0A 80                       // PR_PR10..

                    Notify (\_PR.PR11, 0x80) // Status Change
                }

    06AA: 86 5C 2E 5F 50 52 5F 50 52 31 31 0A 80           // .\._PR_PR11..

                Case
    06B7: A1 4B 2B                                         // .K+

 (0x0A)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change
                    Notify (\_PR.PR03, 0x80) // Status Change
                    Notify (\_PR.PR04, 0x80) // Status Change
                    Notify (\_PR.PR05, 0x80) // Status Change
                    Notify (\_PR.PR06, 0x80) // Status Change
                    Notify (\_PR.PR07, 0x80) // Status Change
                    Notify (\_PR.PR08, 0x80) // Status Change

    06BA: A0 4B 08 93 5F 54 5F 30 0A 0A 86 5C 2E 5F 50 52  // .K.._T_0...\._PR
    06CA: 5F 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52  // _PR00...\._PR_PR
    06DA: 30 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A  // 01...\._PR_PR02.
    06EA: 80 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80 86 5C  // ..\._PR_PR03...\
    06FA: 2E 5F 50 52 5F 50 52 30 34 0A 80 86 5C 2E 5F 50  // ._PR_PR04...\._P
    070A: 52 5F 50 52 30 35 0A 80 86 5C 2E 5F 50 52 5F 50  // R_PR05...\._PR_P
    071A: 52 30 36 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 37  // R06...\._PR_PR07
    072A: 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 38 0A 80     // ...\._PR_PR08..

                    Notify (\_PR.PR09, 0x80) // Status Change
                }

    0739: 86 5C 2E 5F 50 52 5F 50 52 30 39 0A 80           // .\._PR_PR09..

                Case
    0746: A1 4C 22                                         // .L"

 (0x08)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change
                    Notify (\_PR.PR03, 0x80) // Status Change
                    Notify (\_PR.PR04, 0x80) // Status Change
                    Notify (\_PR.PR05, 0x80) // Status Change
                    Notify (\_PR.PR06, 0x80) // Status Change

    0749: A0 41 07 93 5F 54 5F 30 0A 08 86 5C 2E 5F 50 52  // .A.._T_0...\._PR
    0759: 5F 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52  // _PR00...\._PR_PR
    0769: 30 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A  // 01...\._PR_PR02.
    0779: 80 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80 86 5C  // ..\._PR_PR03...\
    0789: 2E 5F 50 52 5F 50 52 30 34 0A 80 86 5C 2E 5F 50  // ._PR_PR04...\._P
    0799: 52 5F 50 52 30 35 0A 80 86 5C 2E 5F 50 52 5F 50  // R_PR05...\._PR_P
    07A9: 52 30 36 0A 80                                   // R06..

                    Notify (\_PR.PR07, 0x80) // Status Change
                }

    07AE: 86 5C 2E 5F 50 52 5F 50 52 30 37 0A 80           // .\._PR_PR07..

                Case
    07BB: A1 47 1B                                         // .G.

 (0x07)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change
                    Notify (\_PR.PR03, 0x80) // Status Change
                    Notify (\_PR.PR04, 0x80) // Status Change
                    Notify (\_PR.PR05, 0x80) // Status Change

    07BE: A0 44 06 93 5F 54 5F 30 0A 07 86 5C 2E 5F 50 52  // .D.._T_0...\._PR
    07CE: 5F 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52  // _PR00...\._PR_PR
    07DE: 30 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A  // 01...\._PR_PR02.
    07EE: 80 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80 86 5C  // ..\._PR_PR03...\
    07FE: 2E 5F 50 52 5F 50 52 30 34 0A 80 86 5C 2E 5F 50  // ._PR_PR04...\._P
    080E: 52 5F 50 52 30 35 0A 80                          // R_PR05..

                    Notify (\_PR.PR06, 0x80) // Status Change
                }

    0816: 86 5C 2E 5F 50 52 5F 50 52 30 36 0A 80           // .\._PR_PR06..

                Case
    0823: A1 4F 14                                         // .O.

 (0x06)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change
                    Notify (\_PR.PR03, 0x80) // Status Change
                    Notify (\_PR.PR04, 0x80) // Status Change

    0826: A0 47 05 93 5F 54 5F 30 0A 06 86 5C 2E 5F 50 52  // .G.._T_0...\._PR
    0836: 5F 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52  // _PR00...\._PR_PR
    0846: 30 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A  // 01...\._PR_PR02.
    0856: 80 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80 86 5C  // ..\._PR_PR03...\
    0866: 2E 5F 50 52 5F 50 52 30 34 0A 80                 // ._PR_PR04..

                    Notify (\_PR.PR05, 0x80) // Status Change
                }

    0871: 86 5C 2E 5F 50 52 5F 50 52 30 35 0A 80           // .\._PR_PR05..

                Case
    087E: A1 44 0F                                         // .D.

 (0x05)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change
                    Notify (\_PR.PR03, 0x80) // Status Change

    0881: A0 4A 04 93 5F 54 5F 30 0A 05 86 5C 2E 5F 50 52  // .J.._T_0...\._PR
    0891: 5F 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52  // _PR00...\._PR_PR
    08A1: 30 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A  // 01...\._PR_PR02.
    08B1: 80 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80        // ..\._PR_PR03..

                    Notify (\_PR.PR04, 0x80) // Status Change
                }

    08BF: 86 5C 2E 5F 50 52 5F 50 52 30 34 0A 80           // .\._PR_PR04..

                Case
    08CC: A1 46 0A                                         // .F.

 (0x04)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change
                    Notify (\_PR.PR02, 0x80) // Status Change

    08CF: A0 3C 93 5F 54 5F 30 0A 04 86 5C 2E 5F 50 52 5F  // .<._T_0...\._PR_
    08DF: 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52 30  // PR00...\._PR_PR0
    08EF: 31 0A 80 86 5C 2E 5F 50 52 5F 50 52 30 32 0A 80  // 1...\._PR_PR02..

                    Notify (\_PR.PR03, 0x80) // Status Change
                }

    08FF: 86 5C 2E 5F 50 52 5F 50 52 30 33 0A 80           // .\._PR_PR03..

                Case
    090C: A1 46 06                                         // .F.

 (0x03)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change
                    Notify (\_PR.PR01, 0x80) // Status Change

    090F: A0 2F 93 5F 54 5F 30 0A 03 86 5C 2E 5F 50 52 5F  // ./._T_0...\._PR_
    091F: 50 52 30 30 0A 80 86 5C 2E 5F 50 52 5F 50 52 30  // PR00...\._PR_PR0
    092F: 31 0A 80                                         // 1..

                    Notify (\_PR.PR02, 0x80) // Status Change
                }

    0932: 86 5C 2E 5F 50 52 5F 50 52 30 32 0A 80           // .\._PR_PR02..

                Case
    093F: A1 33                                            // .3

 (0x02)
                {
                    Notify (\_PR.PR00, 0x80) // Status Change

    0941: A0 22 93 5F 54 5F 30 0A 02 86 5C 2E 5F 50 52 5F  // ."._T_0...\._PR_
    0951: 50 52 30 30 0A 80                                // PR00..

                    Notify (\_PR.PR01, 0x80) // Status Change
                }

    0957: 86 5C 2E 5F 50 52 5F 50 52 30 31 0A 80           // .\._PR_PR01..

                Default
                {

    0964: A1 0E                                            // ..

                    Notify (\_PR.PR00, 0x80) // Status Change
                }


    0966: 86 5C 2E 5F 50 52 5F 50 52 30 30 0A 80           // .\._PR_PR00..

            }
        }


    0973: A5                                               // .

        Method (CLC2, 1, Serialized)
        {

    0974: 14 4A 05 43 4C 43 32 09                          // .J.CLC2.

            Local0 = (PNHM & 0x0FFF0FF0)

    097C: 08 5F 54 5F 30 00 7B 50 4E 48 4D 0C F0 0F FF 0F  // ._T_0.{PNHM.....
    098C: 60                                               // `

            Switch (ToInteger (Local0))
            {

    098D: A2 41 04 01 70 99 60 00 5F 54 5F 30              // .A..p.`._T_0

                Case (0x000306C0)
                {

    0999: A0 16 93 5F 54 5F 30 0C C0 06 03 00              // ..._T_0.....

                    Return (
    09A5: A4                                               // .

((Arg0 * 0x05) / 0x04))
                }

    09A6: 78 77 68 0A 05 00 0A 04 00 00                    // xwh.......

                Case
    09B0: A1 1D                                            // ..

 (0x00040650)
                {

    09B2: A0 0E 93 5F 54 5F 30 0C 50 06 04 00              // ..._T_0.P...

                    Return (0xC8)
                }

    09BE: A4 0A C8                                         // ...

                Default
                {

    09C1: A1 0C                                            // ..

                    Return (
    09C3: A4                                               // .

((Arg0 * 0x05) / 0x04))
                }


    09C4: 78 77 68 0A 05 00 0A 04 00 00                    // xwh.......

            }
        }
    }
}



Table Header:
Table Body (Length 0x9CF)
