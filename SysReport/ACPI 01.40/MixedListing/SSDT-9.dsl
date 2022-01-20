{
    External (_PR_.PR00, DeviceObj)
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
    External (OSYS, UnknownObj)


    0024: A0 47 0E 00 15 5C 2E 5F 53 42 5F 4F 53 43 50 01  // .G...\._SB_OSCP.
    0034: 00 15 5C 2E 5F 50 52 5F 50 52 30 30 06 00 15 5C  // ..\._PR_PR00...\
    0044: 2E 5F 50 52 5F 50 52 30 31 06 00 15 5C 2E 5F 50  // ._PR_PR01...\._P
    0054: 52 5F 50 52 30 32 06 00 15 5C 2E 5F 50 52 5F 50  // R_PR02...\._PR_P
    0064: 52 30 33 06 00 15 5C 2E 5F 50 52 5F 50 52 30 34  // R03...\._PR_PR04
    0074: 06 00 15 5C 2E 5F 50 52 5F 50 52 30 35 06 00 15  // ...\._PR_PR05...
    0084: 5C 2E 5F 50 52 5F 50 52 30 36 06 00 15 5C 2E 5F  // \._PR_PR06...\._
    0094: 50 52 5F 50 52 30 37 06 00 15 5C 2E 5F 50 52 5F  // PR_PR07...\._PR_
    00A4: 50 52 30 38 06 00 15 5C 2E 5F 50 52 5F 50 52 30  // PR08...\._PR_PR0
    00B4: 39 06 00 15 5C 2E 5F 50 52 5F 50 52 31 30 06 00  // 9...\._PR_PR10..
    00C4: 15 5C 2E 5F 50 52 5F 50 52 31 31 06 00 15 5C 2E  // .\._PR_PR11...\.
    00D4: 5F 50 52 5F 50 52 31 32 06 00 15 5C 2E 5F 50 52  // _PR_PR12...\._PR
    00E4: 5F 50 52 31 33 06 00 15 5C 2E 5F 50 52 5F 50 52  // _PR13...\._PR_PR
    00F4: 31 34 06 00 15 5C 2E 5F 50 52 5F 50 52 31 35 06  // 14...\._PR_PR15.
    0104: 00 15 4F 53 59 53 00 00                          // ..OSYS..

    Scope (\)
    {

    010C: 10 40 15 5C 00                                   // .@.\.

        Name (SSDT, 
    0111: 08 53 53 44 54                                   // .SSDT

Package (0x15)
        {
            "CPU0IST ", 
            0x9797E198, 
            0x000006B4, 
            "APIST   ", 
            0x97879018, 
            0x00000D14, 
            "CPU0CST ", 
            0x9787A698, 
            0x000003FF, 
            "APCST   ", 
            0x97878018, 
            0x0000030A, 
            "CPU0HWP ", 
            0x9797EF18, 
            0x000000BA, 
            "APHWP   ", 
            0x97878418, 
            0x00000317, 
            "HWPLVT  ", 
            0x9787A018, 
            0x00000628
        })

    0116: 12 4F 08 15 0D 43 50 55 30 49 53 54 20 00 0C 98  // .O...CPU0IST ...
    0126: E1 97 97 0C B4 06 00 00 0D 41 50 49 53 54 20 20  // .........APIST  
    0136: 20 00 0C 18 90 87 97 0C 14 0D 00 00 0D 43 50 55  //  ............CPU
    0146: 30 43 53 54 20 00 0C 98 A6 87 97 0C FF 03 00 00  // 0CST ...........
    0156: 0D 41 50 43 53 54 20 20 20 00 0C 18 80 87 97 0C  // .APCST   .......
    0166: 0A 03 00 00 0D 43 50 55 30 48 57 50 20 00 0C 18  // .....CPU0HWP ...
    0176: EF 97 97 0C BA 00 00 00 0D 41 50 48 57 50 20 20  // .........APHWP  
    0186: 20 00 0C 18 84 87 97 0C 17 03 00 00 0D 48 57 50  //  ............HWP
    0196: 4C 56 54 20 20 00 0C 18 A0 87 97 0C 28 06 00 00  // LVT  .......(...

        Name (\PC00, 0x80000000)

    01A6: 08 5C 50 43 30 30 0C 00 00 00 80                 // .\PC00.....

        Name (\PC01, 0x80000000)

    01B1: 08 5C 50 43 30 31 0C 00 00 00 80                 // .\PC01.....

        Name (\PC02, 0x80000000)

    01BC: 08 5C 50 43 30 32 0C 00 00 00 80                 // .\PC02.....

        Name (\PC03, 0x80000000)

    01C7: 08 5C 50 43 30 33 0C 00 00 00 80                 // .\PC03.....

        Name (\PC04, 0x80000000)

    01D2: 08 5C 50 43 30 34 0C 00 00 00 80                 // .\PC04.....

        Name (\PC05, 0x80000000)

    01DD: 08 5C 50 43 30 35 0C 00 00 00 80                 // .\PC05.....

        Name (\PC06, 0x80000000)

    01E8: 08 5C 50 43 30 36 0C 00 00 00 80                 // .\PC06.....

        Name (\PC07, 0x80000000)

    01F3: 08 5C 50 43 30 37 0C 00 00 00 80                 // .\PC07.....

        Name (\PC08, 0x80000000)

    01FE: 08 5C 50 43 30 38 0C 00 00 00 80                 // .\PC08.....

        Name (\PC09, 0x80000000)

    0209: 08 5C 50 43 30 39 0C 00 00 00 80                 // .\PC09.....

        Name (\PC10, 0x80000000)

    0214: 08 5C 50 43 31 30 0C 00 00 00 80                 // .\PC10.....

        Name (\PC11, 0x80000000)

    021F: 08 5C 50 43 31 31 0C 00 00 00 80                 // .\PC11.....

        Name (\PC12, 0x80000000)

    022A: 08 5C 50 43 31 32 0C 00 00 00 80                 // .\PC12.....

        Name (\PC13, 0x80000000)

    0235: 08 5C 50 43 31 33 0C 00 00 00 80                 // .\PC13.....

        Name (\PC14, 0x80000000)

    0240: 08 5C 50 43 31 34 0C 00 00 00 80                 // .\PC14.....

        Name (\PC15, 0x80000000)

    024B: 08 5C 50 43 31 35 0C 00 00 00 80                 // .\PC15.....

        Name (\SDTL, Zero)
    }


    0256: 08 5C 53 44 54 4C 00                             // .\SDTL.

    Scope (\_PR)
    {

    025D: 10 45 1B 5C 5F 50 52 5F                          // .E.\_PR_

        Name (CTPC, Zero)

    0265: 08 43 54 50 43 00                                // .CTPC.

        OperationRegion (PNVS, SystemMemory, 0x85CA8000, 0x006C)

    026B: 5B 80 50 4E 56 53 00 0C 00 80 CA 85 0B 6C 00     // [.PNVS.......l.

        Field (PNVS, AnyAcc, Lock, Preserve)
        {
            PGRV,   8, 
            CFGD,   32, 
            Offset (0x06), 
            ACRT,   8, 
            APSV,   8, 
            AAC0,   8, 
            CPID,   32, 
            CPPC,   8, 
            CLVL,   8, 
            CBMI,   8, 
            PL10,   16, 
            PL20,   16, 
            PLW0,   8, 
            CTC0,   8, 
            TAR0,   8, 
            PPC0,   8, 
            PL11,   16, 
            PL21,   16, 
            PLW1,   8, 
            CTC1,   8, 
            TAR1,   8, 
            PPC1,   8, 
            PL12,   16, 
            PL22,   16, 
            PLW2,   8, 
            CTC2,   8, 
            TAR2,   8, 
            PPC2,   8, 
            C3MW,   8, 
            C6MW,   8, 
            C7MW,   8, 
            CDMW,   8, 
            C3LT,   16, 
            C6LT,   16, 
            C7LT,   16, 
            CDLT,   16, 
            CDLV,   16, 
            CDPW,   16, 
            MPMF,   8, 
            DTSE,   8, 
            DTS1,   8, 
            DTS2,   8, 
            DTSF,   8, 
            PDTS,   8, 
            PKGA,   8, 
            DTS3,   8, 
            DTS4,   8, 
            BGMA,   64, 
            BGMS,   8, 
            BGIA,   16, 
            BGIL,   16, 
            DSIA,   16, 
            DSIL,   8, 
            DSAE,   8, 
            EPCS,   8, 
            EMNA,   64, 
            ELNG,   64, 
            HWPV,   8, 
            HWPA,   16, 
            HWPL,   16, 
            POWS,   8, 
            HDCE,   8, 
            HWPI,   8, 
            DTSI,   8
        }


    027A: 5B 81 47 14 50 4E 56 53 10 50 47 52 56 08 43 46  // [.G.PNVS.PGRV.CF
    028A: 47 44 20 00 08 41 43 52 54 08 41 50 53 56 08 41  // GD ..ACRT.APSV.A
    029A: 41 43 30 08 43 50 49 44 20 43 50 50 43 08 43 4C  // AC0.CPID CPPC.CL
    02AA: 56 4C 08 43 42 4D 49 08 50 4C 31 30 10 50 4C 32  // VL.CBMI.PL10.PL2
    02BA: 30 10 50 4C 57 30 08 43 54 43 30 08 54 41 52 30  // 0.PLW0.CTC0.TAR0
    02CA: 08 50 50 43 30 08 50 4C 31 31 10 50 4C 32 31 10  // .PPC0.PL11.PL21.
    02DA: 50 4C 57 31 08 43 54 43 31 08 54 41 52 31 08 50  // PLW1.CTC1.TAR1.P
    02EA: 50 43 31 08 50 4C 31 32 10 50 4C 32 32 10 50 4C  // PC1.PL12.PL22.PL
    02FA: 57 32 08 43 54 43 32 08 54 41 52 32 08 50 50 43  // W2.CTC2.TAR2.PPC
    030A: 32 08 43 33 4D 57 08 43 36 4D 57 08 43 37 4D 57  // 2.C3MW.C6MW.C7MW
    031A: 08 43 44 4D 57 08 43 33 4C 54 10 43 36 4C 54 10  // .CDMW.C3LT.C6LT.
    032A: 43 37 4C 54 10 43 44 4C 54 10 43 44 4C 56 10 43  // C7LT.CDLT.CDLV.C
    033A: 44 50 57 10 4D 50 4D 46 08 44 54 53 45 08 44 54  // DPW.MPMF.DTSE.DT
    034A: 53 31 08 44 54 53 32 08 44 54 53 46 08 50 44 54  // S1.DTS2.DTSF.PDT
    035A: 53 08 50 4B 47 41 08 44 54 53 33 08 44 54 53 34  // S.PKGA.DTS3.DTS4
    036A: 08 42 47 4D 41 40 04 42 47 4D 53 08 42 47 49 41  // .BGMA@.BGMS.BGIA
    037A: 10 42 47 49 4C 10 44 53 49 41 10 44 53 49 4C 08  // .BGIL.DSIA.DSIL.
    038A: 44 53 41 45 08 45 50 43 53 08 45 4D 4E 41 40 04  // DSAE.EPCS.EMNA@.
    039A: 45 4C 4E 47 40 04 48 57 50 56 08 48 57 50 41 10  // ELNG@.HWPV.HWPA.
    03AA: 48 57 50 4C 10 50 4F 57 53 08 48 44 43 45 08 48  // HWPL.POWS.HDCE.H
    03BA: 57 50 49 08 44 54 53 49 08                       // WPI.DTSI.

        OperationRegion (IO_D, SystemIO, \_PR.DSIA, \_PR.DSIL)

    03C3: 5B 80 49 4F 5F 44 01 5C 2E 5F 50 52 5F 44 53 49  // [.IO_D.\._PR_DSI
    03D3: 41 5C 2E 5F 50 52 5F 44 53 49 4C                 // A\._PR_DSIL

        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }


    03DE: 5B 81 0B 49 4F 5F 44 01 54 52 50 44 08           // [..IO_D.TRPD.

        OperationRegion (IO_P, SystemIO, \_PR.BGIA, \_PR.BGIL)

    03EB: 5B 80 49 4F 5F 50 01 5C 2E 5F 50 52 5F 42 47 49  // [.IO_P.\._PR_BGI
    03FB: 41 5C 2E 5F 50 52 5F 42 47 49 4C                 // A\._PR_BGIL

        Field (IO_P, ByteAcc, NoLock, Preserve)
        {
            TRPF,   8
        }
    }


    0406: 5B 81 0B 49 4F 5F 50 01 54 52 50 46 08           // [..IO_P.TRPF.

    Scope (\_PR.PR00)
    {

    0413: 10 4C 39 5C 2E 5F 50 52 5F 50 52 30 30           // .L9\._PR_PR00

        Name (HI0, Zero)

    0420: 08 48 49 30 5F 00                                // .HI0_.

        Name (HC0, Zero)

    0426: 08 48 43 30 5F 00                                // .HC0_.

        Name (HW0, Zero)

    042C: 08 48 57 30 5F 00                                // .HW0_.

        Name (HW2, Zero)

    0432: 08 48 57 32 5F 00                                // .HW2_.

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = CPDC (Arg0)
            GCAP (Local0)
        }


    0438: 14 12 5F 50 44 43 09 70 43 50 44 43 68 60 47 43  // .._PDC.pCPDCh`GC
    0448: 41 50 60                                         // AP`

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            Local0 = COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    044B: 14 17 5F 4F 53 43 0C 70 43 4F 53 43 68 69 6A 6B  // .._OSC.pCOSChijk
    045B: 60 47 43 41 50 60                                // `GCAP`

            Return (Local0)
        }


    0461: A4 60                                            // .`

        Name (STS0, 
    0463: 08 53 54 53 30                                   // .STS0

Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                           // ....
        })

    0468: 11 07 0A 04 00 00 00 00                          // ........

        Method (CPDC, 1, Serialized)
        {

    0470: 14 4B 05 43 50 44 43 09                          // .K.CPDC.

            CreateDWordField (Arg0, Zero, REVS)

    0478: 8A 68 00 52 45 56 53                             // .h.REVS

            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = 
    047F: 8A 68 0A 04 53 49 5A 45 70                       // .h..SIZEp

SizeOf (Arg0)
            Local1 = 
    0488: 87 68 60 70                                      // .h`p

(Local0 - 0x08)

    048C: 74 60 0A 08 00 61                                // t`...a

            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Concatenate (STS0, TEMP, Local2)

    0492: 5B 13 68 0A 40 77 61 0A 08 00 54 45 4D 50 73 53  // [.h.@wa...TEMPsS
    04A2: 54 53 30 54 45 4D 50 62                          // TS0TEMPb

            Return (COSC (
    04AA: A4 43 4F 53 43                                   // .COSC

ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2))
        }


    04AF: 11 13 0A 10 16 A6 77 40 0C 29 BE 47 9E BD D8 70  // ......w@.).G...p
    04BF: 58 71 39 53 52 45 56 53 53 49 5A 45 62           // Xq9SREVSSIZEb

        Name (UID0, 
    04CC: 08 55 49 44 30                                   // .UID0

ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)

    04D1: 11 13 0A 10 16 A6 77 40 0C 29 BE 47 9E BD D8 70  // ......w@.).G...p
    04E1: 58 71 39 53                                      // Xq9S

        OperationRegion (SMIP, SystemIO, 0xB2, One)

    04E5: 5B 80 53 4D 49 50 01 0A B2 01                    // [.SMIP....

        Field (SMIP, ByteAcc, NoLock, Preserve)
        {
            IOB2,   8
        }


    04EF: 5B 81 0B 53 4D 49 50 01 49 4F 42 32 08           // [..SMIP.IOB2.

        Method (COSC, 4, Serialized)
        {

    04FC: 14 40 0E 43 4F 53 43 0C                          // .@.COSC.

            CreateDWordField (Arg3, Zero, STS0)

    0504: 8A 6B 00 53 54 53 30                             // .k.STS0

            CreateDWordField (Arg3, 0x04, CAP0)

    050B: 8A 6B 0A 04 43 41 50 30                          // .k..CAP0

            CreateDWordField (Arg0, Zero, IID0)

    0513: 8A 68 00 49 49 44 30                             // .h.IID0

            CreateDWordField (Arg0, 0x04, IID1)

    051A: 8A 68 0A 04 49 49 44 31                          // .h..IID1

            CreateDWordField (Arg0, 0x08, IID2)

    0522: 8A 68 0A 08 49 49 44 32                          // .h..IID2

            CreateDWordField (Arg0, 0x0C, IID3)

    052A: 8A 68 0A 0C 49 49 44 33                          // .h..IID3

            CreateDWordField (UID0, Zero, EID0)

    0532: 8A 55 49 44 30 00 45 49 44 30                    // .UID0.EID0

            CreateDWordField (UID0, 0x04, EID1)

    053C: 8A 55 49 44 30 0A 04 45 49 44 31                 // .UID0..EID1

            CreateDWordField (UID0, 0x08, EID2)

    0547: 8A 55 49 44 30 0A 08 45 49 44 32                 // .UID0..EID2

            CreateDWordField (UID0, 0x0C, EID3)

    0552: 8A 55 49 44 30 0A 0C 45 49 44 33                 // .UID0..EID3

            If (!
    055D: A0 32 92                                         // .2.

(((IID0 == EID0) && 
    0560: 90 90 93 49 49 44 30 45 49 44 30                 // ...IID0EID0

(IID1 == EID1)) && 
    056B: 93 49 49 44 31 45 49 44 31                       // .IID1EID1

((
                IID2 == EID2) && 
    0574: 90 93 49 49 44 32 45 49 44 32                    // ..IID2EID2

(IID3 == EID3))))
            {
                STS0 = 0x06

    057E: 93 49 49 44 33 45 49 44 33 70 0A 06 53 54 53 30  // .IID3EID3p..STS0

                Return (Arg3)
            }


    058E: A4 6B                                            // .k

            If (
    0590: A0 0E 92                                         // ...

(Arg1 != One))
            {
                STS0 = 0x0A

    0593: 93 69 01 70 0A 0A 53 54 53 30                    // .i.p..STS0

                Return (Arg3)
            }


    059D: A4 6B                                            // .k

            If (!
    059F: A0 10 92                                         // ...


    05A2: 92                                               // .

(Arg2 >= 0x02))
            {
                STS0 = 0x02

    05A3: 95 6A 0A 02 70 0A 02 53 54 53 30                 // .j..p..STS0

                Return (Arg3)
            }


    05AE: A4 6B                                            // .k

            If (~(STS0 & One))
            {

    05B0: A0 2A 80 7B 53 54 53 30 01 00 00                 // .*.{STS0...

                If ((CAP0 & 0x2000))
                {

    05BB: A0 16 7B 43 41 50 30 0B 00 20 00                 // ..{CAP0.. .

                    \_PR.HDCE = Zero
                }

    05C6: 70 00 5C 2E 5F 50 52 5F 48 44 43 45              // p.\._PR_HDCE

                Else
                {

    05D2: A1 08                                            // ..

                    IOB2 = 0x28
                }
            }


    05D4: 70 0A 28 49 4F 42 32                             // p.(IOB2

            Return (Arg3)
        }


    05DB: A4 6B                                            // .k

        Method (GCAP, 1, Serialized)
        {

    05DD: 14 42 1D 47 43 41 50 09                          // .B.GCAP.

            CreateDWordField (Arg0, Zero, STS0)

    05E5: 8A 68 00 53 54 53 30                             // .h.STS0

            CreateDWordField (Arg0, 0x04, CAP0)

    05EC: 8A 68 0A 04 43 41 50 30                          // .h..CAP0

            If (((STS0 == 0x06) || 
    05F4: A0 12 91 93 53 54 53 30 0A 06                    // ....STS0..

(STS0 == 0x0A)))
            {

    05FE: 93 53 54 53 30 0A 0A                             // .STS0..

                Return (Zero)
            }


    0605: A4 00                                            // ..

            If ((STS0 & One))
            {
                CAP0 &= 0x0BFF

    0607: A0 16 7B 53 54 53 30 01 00 7B 43 41 50 30 0B FF  // ..{STS0..{CAP0..
    0617: 0B 43 41 50 30                                   // .CAP0

                Return (Zero)
            }

            PC00 = ((PC00 & 0x7FFFFFFF) | CAP0) /* \_PR_.PR00.GCAP.CAP0 */

    061C: A4 00 7D 7B 50 43 30 30 0C FF FF FF 7F 00 43 41  // ..}{PC00......CA
    062C: 50 30 50 43 30 30                                // P0PC00

            If ((CFGD & 0x7A))
            {

    0632: A0 47 05 7B 43 46 47 44 0A 7A 00                 // .G.{CFGD.z.

                If ((((CFGD & 0x0200) && 
    063D: A0 4C 04 90 90 7B 43 46 47 44 0B 00 02 00        // .L...{CFGD....

(PC00 & 0x18)) && 
    064B: 7B 50 43 30 30 0A 18 00                          // {PC00...

!
    0653: 92                                               // .


                    (SDTL & 0x02)))
                {
                    SDTL |= 0x02

    0654: 7B 53 44 54 4C 0A 02 00 7D 53 44 54 4C 0A 02 53  // {SDTL...}SDTL..S
    0664: 44 54 4C                                         // DTL

                    OperationRegion (CST0, SystemMemory, DerefOf (
    0667: 5B 80 43 53 54 30 00 83                          // [.CST0..

SSDT [0x07]), 
    066F: 88 53 53 44 54 0A 07 00                          // .SSDT...

DerefOf (
    0677: 83                                               // .

SSDT [0x08]))

    0678: 88 53 53 44 54 0A 08 00                          // .SSDT...

                    Load (CST0, HC0) /* \_PR_.PR00.HC0_ */
                }
            }


    0680: 5B 20 43 53 54 30 48 43 30 5F                    // [ CST0HC0_

            If (((CFGD & One) && 
    068A: A0 3F 90 7B 43 46 47 44 01 00                    // .?.{CFGD..

!
    0694: 92                                               // .

(SDTL & 0x08)))
            {
                SDTL |= 0x08

    0695: 7B 53 44 54 4C 0A 08 00 7D 53 44 54 4C 0A 08 53  // {SDTL...}SDTL..S
    06A5: 44 54 4C                                         // DTL

                OperationRegion (IST0, SystemMemory, DerefOf (
    06A8: 5B 80 49 53 54 30 00 83                          // [.IST0..

SSDT [One]), 
    06B0: 88 53 53 44 54 01 00                             // .SSDT..

DerefOf (
    06B7: 83                                               // .

SSDT [0x02]))

    06B8: 88 53 53 44 54 0A 02 00                          // .SSDT...

                Load (IST0, HI0) /* \_PR_.PR00.HI0_ */
            }


    06C0: 5B 20 49 53 54 30 48 49 30 5F                    // [ IST0HI0_

            If (
    06CA: A0 40 0D 92                                      // .@..

(OSYS >= 0x07DF))
            {

    06CE: 95 4F 53 59 53 0B DF 07                          // .OSYS...

                If (((CFGD & 0x00400000) && 
    06D6: A0 44 0C 90 7B 43 46 47 44 0C 00 00 40 00 00     // .D..{CFGD...@..

!
    06E5: 92                                               // .

(SDTL & 0x40)))
                {

    06E6: 7B 53 44 54 4C 0A 40 00                          // {SDTL.@.

                    If ((\_SB.OSCP & 0x40))
                    {
                        SDTL |= 0x40

    06EE: A0 4E 06 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 40  // .N.{\._SB_OSCP.@
    06FE: 00 7D 53 44 54 4C 0A 40 53 44 54 4C              // .}SDTL.@SDTL

                        OperationRegion (HWP0, SystemMemory, DerefOf (
    070A: 5B 80 48 57 50 30 00 83                          // [.HWP0..

SSDT [0x0D]), 
    0712: 88 53 53 44 54 0A 0D 00                          // .SSDT...

DerefOf (
    071A: 83                                               // .

SSDT [0x0E]))
                        Load (HWP0, HW0) /* \_PR_.PR00.HW0_ */

    071B: 88 53 53 44 54 0A 0E 00 5B 20 48 57 50 30 48 57  // .SSDT...[ HWP0HW
    072B: 30 5F                                            // 0_

                        If ((CFGD & 0x00800000))
                        {

    072D: A0 2F 7B 43 46 47 44 0C 00 00 80 00 00           // ./{CFGD......

                            OperationRegion (HWPL, SystemMemory, DerefOf (
    073A: 5B 80 48 57 50 4C 00 83                          // [.HWPL..

SSDT [0x13]), 
    0742: 88 53 53 44 54 0A 13 00                          // .SSDT...

DerefOf (
    074A: 83                                               // .

SSDT [0x14]))

    074B: 88 53 53 44 54 0A 14 00                          // .SSDT...

                            Load (HWPL, HW2) /* \_PR_.PR00.HW2_ */
                        }
                    }


    0753: 5B 20 48 57 50 4C 48 57 32 5F                    // [ HWPLHW2_

                    If ((\_SB.OSCP & 0x20))
                    {

    075D: A0 26 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // .&{\._SB_OSCP. .

                        If (!
    076D: A0 16 92                                         // ...

(\_SB.OSCP & 0x40))
                        {

    0770: 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 40 00        // {\._SB_OSCP.@.

                            HWPV = Zero
                        }
                    }


    077E: 70 00 48 57 50 56                                // p.HWPV

                    If ((\_SB.OSCP & 0x40))
                    {

    0784: A0 16 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 40 00  // ..{\._SB_OSCP.@.

                        HWPV = 0x02
                    }
                }
            }


    0794: 70 0A 02 48 57 50 56                             // p..HWPV

            If (!
    079B: A0 12 92                                         // ...

(PC00 & 0x1000))
            {

    079E: 7B 50 43 30 30 0B 00 10 00                       // {PC00....

                IOB2 = 0x27
            }


    07A7: 70 0A 27 49 4F 42 32                             // p.'IOB2

            Return (Zero)
        }
    }


    07AE: A4 00                                            // ..

    Scope (\_PR.PR01)
    {

    07B0: 10 41 1E 5C 2E 5F 50 52 5F 50 52 30 31           // .A.\._PR_PR01

        Name (HI1, Zero)

    07BD: 08 48 49 31 5F 00                                // .HI1_.

        Name (HC1, Zero)

    07C3: 08 48 43 31 5F 00                                // .HC1_.

        Name (HW1, Zero)

    07C9: 08 48 57 31 5F 00                                // .HW1_.

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    07CF: 14 1D 5F 50 44 43 09 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    07DF: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    07ED: 14 22 5F 4F 53 43 0C 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    07FD: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    080D: 60                                               // `

            Return (Local0)
        }


    080E: A4 60                                            // .`

        Method (GCAP, 1, Serialized)
        {

    0810: 14 42 09 47 43 41 50 09                          // .B.GCAP.

            CreateDWordField (Arg0, Zero, ST01)

    0818: 8A 68 00 53 54 30 31                             // .h.ST01

            CreateDWordField (Arg0, 0x04, CP01)

    081F: 8A 68 0A 04 43 50 30 31                          // .h..CP01

            If (((ST01 == 0x06) || 
    0827: A0 12 91 93 53 54 30 31 0A 06                    // ....ST01..

(ST01 == 0x0A)))
            {

    0831: 93 53 54 30 31 0A 0A                             // .ST01..

                Return (Zero)
            }


    0838: A4 00                                            // ..

            If ((ST01 & One))
            {
                CP01 &= 0x0BFF

    083A: A0 16 7B 53 54 30 31 01 00 7B 43 50 30 31 0B FF  // ..{ST01..{CP01..
    084A: 0B 43 50 30 31                                   // .CP01

                Return (Zero)
            }

            PC01 = ((PC01 & 0x7FFFFFFF) | CP01) /* \_PR_.PR01.GCAP.CP01 */

    084F: A4 00 7D 7B 50 43 30 31 0C FF FF FF 7F 00 43 50  // ..}{PC01......CP
    085F: 30 31 50 43 30 31                                // 01PC01

            If (((PC01 & 0x09) == 0x09))
            {
                APPT ()
            }


    0865: A0 10 93 7B 50 43 30 31 0A 09 00 0A 09 41 50 50  // ...{PC01.....APP
    0875: 54                                               // T

            If ((\_SB.OSCP & 0x20))
            {
                HWPT ()
            }


    0876: A0 13 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0886: 48 57 50 54                                      // HWPT

            If ((PC01 & 0x18))
            {
                APCT ()
            }

            PC00 = PC01 /* \PC01 */

    088A: A0 0D 7B 50 43 30 31 0A 18 00 41 50 43 54 70 50  // ..{PC01...APCTpP
    089A: 43 30 31 50 43 30 30                             // C01PC00

            Return (Zero)
        }


    08A1: A4 00                                            // ..

        Method (APCT, 0, Serialized)
        {

    08A3: 14 4A 04 41 50 43 54 08                          // .J.APCT.

            If (((CFGD & 0x7A) && 
    08AB: A0 42 04 90 7B 43 46 47 44 0A 7A 00              // .B..{CFGD.z.

!
    08B7: 92                                               // .

(SDTL & 0x20)))
            {
                SDTL |= 0x20

    08B8: 7B 53 44 54 4C 0A 20 00 7D 53 44 54 4C 0A 20 53  // {SDTL. .}SDTL. S
    08C8: 44 54 4C                                         // DTL

                OperationRegion (CST1, SystemMemory, DerefOf (
    08CB: 5B 80 43 53 54 31 00 83                          // [.CST1..

SSDT [0x0A]), 
    08D3: 88 53 53 44 54 0A 0A 00                          // .SSDT...

DerefOf (
    08DB: 83                                               // .

SSDT [0x0B]))

    08DC: 88 53 53 44 54 0A 0B 00                          // .SSDT...

                Load (CST1, HC1) /* \_PR_.PR01.HC1_ */
            }
        }


    08E4: 5B 20 43 53 54 31 48 43 31 5F                    // [ CST1HC1_

        Method (APPT, 0, Serialized)
        {

    08EE: 14 49 04 41 50 50 54 08                          // .I.APPT.

            If (((CFGD & One) && 
    08F6: A0 41 04 90 7B 43 46 47 44 01 00                 // .A..{CFGD..

!
    0901: 92                                               // .

(SDTL & 0x10)))
            {
                SDTL |= 0x10

    0902: 7B 53 44 54 4C 0A 10 00 7D 53 44 54 4C 0A 10 53  // {SDTL...}SDTL..S
    0912: 44 54 4C                                         // DTL

                OperationRegion (IST1, SystemMemory, DerefOf (
    0915: 5B 80 49 53 54 31 00 83                          // [.IST1..

SSDT [0x04]), 
    091D: 88 53 53 44 54 0A 04 00                          // .SSDT...

DerefOf (
    0925: 83                                               // .

SSDT [0x05]))

    0926: 88 53 53 44 54 0A 05 00                          // .SSDT...

                Load (IST1, HI1) /* \_PR_.PR01.HI1_ */
            }
        }


    092E: 5B 20 49 53 54 31 48 49 31 5F                    // [ IST1HI1_

        Method (HWPT, 0, Serialized)
        {

    0938: 14 49 05 48 57 50 54 08                          // .I.HWPT.

            If (
    0940: A0 41 05 92                                      // .A..

(OSYS >= 0x07DF))
            {

    0944: 95 4F 53 59 53 0B DF 07                          // .OSYS...

                If (((CFGD & 0x00400000) && 
    094C: A0 45 04 90 7B 43 46 47 44 0C 00 00 40 00 00     // .E..{CFGD...@..

!
    095B: 92                                               // .

(SDTL & 0x80)))
                {
                    SDTL |= 0x80

    095C: 7B 53 44 54 4C 0A 80 00 7D 53 44 54 4C 0A 80 53  // {SDTL...}SDTL..S
    096C: 44 54 4C                                         // DTL

                    OperationRegion (HWP1, SystemMemory, DerefOf (
    096F: 5B 80 48 57 50 31 00 83                          // [.HWP1..

SSDT [0x10]), 
    0977: 88 53 53 44 54 0A 10 00                          // .SSDT...

DerefOf (
    097F: 83                                               // .

SSDT [0x11]))

    0980: 88 53 53 44 54 0A 11 00                          // .SSDT...

                    Load (HWP1, HW1) /* \_PR_.PR01.HW1_ */
                }
            }
        }
    }


    0988: 5B 20 48 57 50 31 48 57 31 5F                    // [ HWP1HW1_

    Scope (\_PR.PR02)
    {

    0992: 10 41 10 5C 2E 5F 50 52 5F 50 52 30 32           // .A.\._PR_PR02

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    099F: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    09AF: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    09BD: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    09CD: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    09DD: 60                                               // `

            Return (Local0)
        }


    09DE: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    09E0: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST02)

    09E8: 8A 68 00 53 54 30 32                             // .h.ST02

            CreateDWordField (Arg0, 0x04, CP02)

    09EF: 8A 68 0A 04 43 50 30 32                          // .h..CP02

            If (((ST02 == 0x06) || 
    09F7: A0 12 91 93 53 54 30 32 0A 06                    // ....ST02..

(ST02 == 0x0A)))
            {

    0A01: 93 53 54 30 32 0A 0A                             // .ST02..

                Return (Zero)
            }


    0A08: A4 00                                            // ..

            If ((ST02 & One))
            {
                CP02 &= 0x0BFF

    0A0A: A0 16 7B 53 54 30 32 01 00 7B 43 50 30 32 0B FF  // ..{ST02..{CP02..
    0A1A: 0B 43 50 30 32                                   // .CP02

                Return (Zero)
            }

            PC02 = ((PC02 & 0x7FFFFFFF) | CP02) /* \_PR_.PR02.GCAP.CP02 */

    0A1F: A4 00 7D 7B 50 43 30 32 0C FF FF FF 7F 00 43 50  // ..}{PC02......CP
    0A2F: 30 32 50 43 30 32                                // 02PC02

            If (((PC02 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    0A35: A0 1B 93 7B 50 43 30 32 0A 09 00 0A 09 5C 2F 03  // ...{PC02.....\/.
    0A45: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    0A51: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0A61: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC02 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC02 /* \PC02 */

    0A70: A0 18 7B 50 43 30 32 0A 18 00 5C 2F 03 5F 50 52  // ..{PC02...\/._PR
    0A80: 5F 50 52 30 31 41 50 43 54 70 50 43 30 32 50 43  // _PR01APCTpPC02PC
    0A90: 30 30                                            // 00

            Return (Zero)
        }
    }


    0A92: A4 00                                            // ..

    Scope (\_PR.PR03)
    {

    0A94: 10 41 10 5C 2E 5F 50 52 5F 50 52 30 33           // .A.\._PR_PR03

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    0AA1: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    0AB1: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    0ABF: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    0ACF: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    0ADF: 60                                               // `

            Return (Local0)
        }


    0AE0: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0AE2: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST03)

    0AEA: 8A 68 00 53 54 30 33                             // .h.ST03

            CreateDWordField (Arg0, 0x04, CP03)

    0AF1: 8A 68 0A 04 43 50 30 33                          // .h..CP03

            If (((ST03 == 0x06) || 
    0AF9: A0 12 91 93 53 54 30 33 0A 06                    // ....ST03..

(ST03 == 0x0A)))
            {

    0B03: 93 53 54 30 33 0A 0A                             // .ST03..

                Return (Zero)
            }


    0B0A: A4 00                                            // ..

            If ((ST03 & One))
            {
                CP03 &= 0x0BFF

    0B0C: A0 16 7B 53 54 30 33 01 00 7B 43 50 30 33 0B FF  // ..{ST03..{CP03..
    0B1C: 0B 43 50 30 33                                   // .CP03

                Return (Zero)
            }

            PC03 = ((PC03 & 0x7FFFFFFF) | CP03) /* \_PR_.PR03.GCAP.CP03 */

    0B21: A4 00 7D 7B 50 43 30 33 0C FF FF FF 7F 00 43 50  // ..}{PC03......CP
    0B31: 30 33 50 43 30 33                                // 03PC03

            If (((PC03 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    0B37: A0 1B 93 7B 50 43 30 33 0A 09 00 0A 09 5C 2F 03  // ...{PC03.....\/.
    0B47: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    0B53: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0B63: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC03 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC03 /* \PC03 */

    0B72: A0 18 7B 50 43 30 33 0A 18 00 5C 2F 03 5F 50 52  // ..{PC03...\/._PR
    0B82: 5F 50 52 30 31 41 50 43 54 70 50 43 30 33 50 43  // _PR01APCTpPC03PC
    0B92: 30 30                                            // 00

            Return (Zero)
        }
    }


    0B94: A4 00                                            // ..

    Scope (\_PR.PR04)
    {

    0B96: 10 41 10 5C 2E 5F 50 52 5F 50 52 30 34           // .A.\._PR_PR04

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    0BA3: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    0BB3: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    0BC1: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    0BD1: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    0BE1: 60                                               // `

            Return (Local0)
        }


    0BE2: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0BE4: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST04)

    0BEC: 8A 68 00 53 54 30 34                             // .h.ST04

            CreateDWordField (Arg0, 0x04, CP04)

    0BF3: 8A 68 0A 04 43 50 30 34                          // .h..CP04

            If (((ST04 == 0x06) || 
    0BFB: A0 12 91 93 53 54 30 34 0A 06                    // ....ST04..

(ST04 == 0x0A)))
            {

    0C05: 93 53 54 30 34 0A 0A                             // .ST04..

                Return (Zero)
            }


    0C0C: A4 00                                            // ..

            If ((ST04 & One))
            {
                CP04 &= 0x0BFF

    0C0E: A0 16 7B 53 54 30 34 01 00 7B 43 50 30 34 0B FF  // ..{ST04..{CP04..
    0C1E: 0B 43 50 30 34                                   // .CP04

                Return (Zero)
            }

            PC04 = ((PC04 & 0x7FFFFFFF) | CP04) /* \_PR_.PR04.GCAP.CP04 */

    0C23: A4 00 7D 7B 50 43 30 34 0C FF FF FF 7F 00 43 50  // ..}{PC04......CP
    0C33: 30 34 50 43 30 34                                // 04PC04

            If (((PC04 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    0C39: A0 1B 93 7B 50 43 30 34 0A 09 00 0A 09 5C 2F 03  // ...{PC04.....\/.
    0C49: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    0C55: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0C65: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC04 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC04 /* \PC04 */

    0C74: A0 18 7B 50 43 30 34 0A 18 00 5C 2F 03 5F 50 52  // ..{PC04...\/._PR
    0C84: 5F 50 52 30 31 41 50 43 54 70 50 43 30 34 50 43  // _PR01APCTpPC04PC
    0C94: 30 30                                            // 00

            Return (Zero)
        }
    }


    0C96: A4 00                                            // ..

    Scope (\_PR.PR05)
    {

    0C98: 10 41 10 5C 2E 5F 50 52 5F 50 52 30 35           // .A.\._PR_PR05

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    0CA5: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    0CB5: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    0CC3: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    0CD3: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    0CE3: 60                                               // `

            Return (Local0)
        }


    0CE4: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0CE6: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST05)

    0CEE: 8A 68 00 53 54 30 35                             // .h.ST05

            CreateDWordField (Arg0, 0x04, CP05)

    0CF5: 8A 68 0A 04 43 50 30 35                          // .h..CP05

            If (((ST05 == 0x06) || 
    0CFD: A0 12 91 93 53 54 30 35 0A 06                    // ....ST05..

(ST05 == 0x0A)))
            {

    0D07: 93 53 54 30 35 0A 0A                             // .ST05..

                Return (Zero)
            }


    0D0E: A4 00                                            // ..

            If ((ST05 & One))
            {
                CP05 &= 0x0BFF

    0D10: A0 16 7B 53 54 30 35 01 00 7B 43 50 30 35 0B FF  // ..{ST05..{CP05..
    0D20: 0B 43 50 30 35                                   // .CP05

                Return (Zero)
            }

            PC05 = ((PC05 & 0x7FFFFFFF) | CP05) /* \_PR_.PR05.GCAP.CP05 */

    0D25: A4 00 7D 7B 50 43 30 35 0C FF FF FF 7F 00 43 50  // ..}{PC05......CP
    0D35: 30 35 50 43 30 35                                // 05PC05

            If (((PC05 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    0D3B: A0 1B 93 7B 50 43 30 35 0A 09 00 0A 09 5C 2F 03  // ...{PC05.....\/.
    0D4B: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    0D57: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0D67: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC05 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC05 /* \PC05 */

    0D76: A0 18 7B 50 43 30 35 0A 18 00 5C 2F 03 5F 50 52  // ..{PC05...\/._PR
    0D86: 5F 50 52 30 31 41 50 43 54 70 50 43 30 35 50 43  // _PR01APCTpPC05PC
    0D96: 30 30                                            // 00

            Return (Zero)
        }
    }


    0D98: A4 00                                            // ..

    Scope (\_PR.PR06)
    {

    0D9A: 10 41 10 5C 2E 5F 50 52 5F 50 52 30 36           // .A.\._PR_PR06

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    0DA7: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    0DB7: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    0DC5: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    0DD5: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    0DE5: 60                                               // `

            Return (Local0)
        }


    0DE6: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0DE8: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST06)

    0DF0: 8A 68 00 53 54 30 36                             // .h.ST06

            CreateDWordField (Arg0, 0x04, CP06)

    0DF7: 8A 68 0A 04 43 50 30 36                          // .h..CP06

            If (((ST06 == 0x06) || 
    0DFF: A0 12 91 93 53 54 30 36 0A 06                    // ....ST06..

(ST06 == 0x0A)))
            {

    0E09: 93 53 54 30 36 0A 0A                             // .ST06..

                Return (Zero)
            }


    0E10: A4 00                                            // ..

            If ((ST06 & One))
            {
                CP06 &= 0x0BFF

    0E12: A0 16 7B 53 54 30 36 01 00 7B 43 50 30 36 0B FF  // ..{ST06..{CP06..
    0E22: 0B 43 50 30 36                                   // .CP06

                Return (Zero)
            }

            PC06 = ((PC06 & 0x7FFFFFFF) | CP06) /* \_PR_.PR06.GCAP.CP06 */

    0E27: A4 00 7D 7B 50 43 30 36 0C FF FF FF 7F 00 43 50  // ..}{PC06......CP
    0E37: 30 36 50 43 30 36                                // 06PC06

            If (((PC06 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    0E3D: A0 1B 93 7B 50 43 30 36 0A 09 00 0A 09 5C 2F 03  // ...{PC06.....\/.
    0E4D: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    0E59: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0E69: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC06 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC06 /* \PC06 */

    0E78: A0 18 7B 50 43 30 36 0A 18 00 5C 2F 03 5F 50 52  // ..{PC06...\/._PR
    0E88: 5F 50 52 30 31 41 50 43 54 70 50 43 30 36 50 43  // _PR01APCTpPC06PC
    0E98: 30 30                                            // 00

            Return (Zero)
        }
    }


    0E9A: A4 00                                            // ..

    Scope (\_PR.PR07)
    {

    0E9C: 10 41 10 5C 2E 5F 50 52 5F 50 52 30 37           // .A.\._PR_PR07

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    0EA9: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    0EB9: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    0EC7: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    0ED7: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    0EE7: 60                                               // `

            Return (Local0)
        }


    0EE8: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0EEA: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST07)

    0EF2: 8A 68 00 53 54 30 37                             // .h.ST07

            CreateDWordField (Arg0, 0x04, CP07)

    0EF9: 8A 68 0A 04 43 50 30 37                          // .h..CP07

            If (((ST07 == 0x06) || 
    0F01: A0 12 91 93 53 54 30 37 0A 06                    // ....ST07..

(ST07 == 0x0A)))
            {

    0F0B: 93 53 54 30 37 0A 0A                             // .ST07..

                Return (Zero)
            }


    0F12: A4 00                                            // ..

            If ((ST07 & One))
            {
                CP07 &= 0x0BFF

    0F14: A0 16 7B 53 54 30 37 01 00 7B 43 50 30 37 0B FF  // ..{ST07..{CP07..
    0F24: 0B 43 50 30 37                                   // .CP07

                Return (Zero)
            }

            PC07 = ((PC07 & 0x7FFFFFFF) | CP07) /* \_PR_.PR07.GCAP.CP07 */

    0F29: A4 00 7D 7B 50 43 30 37 0C FF FF FF 7F 00 43 50  // ..}{PC07......CP
    0F39: 30 37 50 43 30 37                                // 07PC07

            If (((PC07 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    0F3F: A0 1B 93 7B 50 43 30 37 0A 09 00 0A 09 5C 2F 03  // ...{PC07.....\/.
    0F4F: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    0F5B: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0F6B: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC07 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC07 /* \PC07 */

    0F7A: A0 18 7B 50 43 30 37 0A 18 00 5C 2F 03 5F 50 52  // ..{PC07...\/._PR
    0F8A: 5F 50 52 30 31 41 50 43 54 70 50 43 30 37 50 43  // _PR01APCTpPC07PC
    0F9A: 30 30                                            // 00

            Return (Zero)
        }
    }


    0F9C: A4 00                                            // ..

    Scope (\_PR.PR08)
    {

    0F9E: 10 41 10 5C 2E 5F 50 52 5F 50 52 30 38           // .A.\._PR_PR08

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    0FAB: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    0FBB: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    0FC9: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    0FD9: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    0FE9: 60                                               // `

            Return (Local0)
        }


    0FEA: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0FEC: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST08)

    0FF4: 8A 68 00 53 54 30 38                             // .h.ST08

            CreateDWordField (Arg0, 0x04, CP08)

    0FFB: 8A 68 0A 04 43 50 30 38                          // .h..CP08

            If (((ST08 == 0x06) || 
    1003: A0 12 91 93 53 54 30 38 0A 06                    // ....ST08..

(ST08 == 0x0A)))
            {

    100D: 93 53 54 30 38 0A 0A                             // .ST08..

                Return (Zero)
            }


    1014: A4 00                                            // ..

            If ((ST08 & One))
            {
                CP08 &= 0x0BFF

    1016: A0 16 7B 53 54 30 38 01 00 7B 43 50 30 38 0B FF  // ..{ST08..{CP08..
    1026: 0B 43 50 30 38                                   // .CP08

                Return (Zero)
            }

            PC08 = ((PC08 & 0x7FFFFFFF) | CP08) /* \_PR_.PR08.GCAP.CP08 */

    102B: A4 00 7D 7B 50 43 30 38 0C FF FF FF 7F 00 43 50  // ..}{PC08......CP
    103B: 30 38 50 43 30 38                                // 08PC08

            If (((PC08 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    1041: A0 1B 93 7B 50 43 30 38 0A 09 00 0A 09 5C 2F 03  // ...{PC08.....\/.
    1051: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    105D: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    106D: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC08 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC08 /* \PC08 */

    107C: A0 18 7B 50 43 30 38 0A 18 00 5C 2F 03 5F 50 52  // ..{PC08...\/._PR
    108C: 5F 50 52 30 31 41 50 43 54 70 50 43 30 38 50 43  // _PR01APCTpPC08PC
    109C: 30 30                                            // 00

            Return (Zero)
        }
    }


    109E: A4 00                                            // ..

    Scope (\_PR.PR09)
    {

    10A0: 10 41 10 5C 2E 5F 50 52 5F 50 52 30 39           // .A.\._PR_PR09

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    10AD: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    10BD: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    10CB: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    10DB: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    10EB: 60                                               // `

            Return (Local0)
        }


    10EC: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    10EE: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST09)

    10F6: 8A 68 00 53 54 30 39                             // .h.ST09

            CreateDWordField (Arg0, 0x04, CP09)

    10FD: 8A 68 0A 04 43 50 30 39                          // .h..CP09

            If (((ST09 == 0x06) || 
    1105: A0 12 91 93 53 54 30 39 0A 06                    // ....ST09..

(ST09 == 0x0A)))
            {

    110F: 93 53 54 30 39 0A 0A                             // .ST09..

                Return (Zero)
            }


    1116: A4 00                                            // ..

            If ((ST09 & One))
            {
                CP09 &= 0x0BFF

    1118: A0 16 7B 53 54 30 39 01 00 7B 43 50 30 39 0B FF  // ..{ST09..{CP09..
    1128: 0B 43 50 30 39                                   // .CP09

                Return (Zero)
            }

            PC09 = ((PC09 & 0x7FFFFFFF) | CP09) /* \_PR_.PR09.GCAP.CP09 */

    112D: A4 00 7D 7B 50 43 30 39 0C FF FF FF 7F 00 43 50  // ..}{PC09......CP
    113D: 30 39 50 43 30 39                                // 09PC09

            If (((PC09 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    1143: A0 1B 93 7B 50 43 30 39 0A 09 00 0A 09 5C 2F 03  // ...{PC09.....\/.
    1153: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    115F: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    116F: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC09 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC09 /* \PC09 */

    117E: A0 18 7B 50 43 30 39 0A 18 00 5C 2F 03 5F 50 52  // ..{PC09...\/._PR
    118E: 5F 50 52 30 31 41 50 43 54 70 50 43 30 39 50 43  // _PR01APCTpPC09PC
    119E: 30 30                                            // 00

            Return (Zero)
        }
    }


    11A0: A4 00                                            // ..

    Scope (\_PR.PR10)
    {

    11A2: 10 41 10 5C 2E 5F 50 52 5F 50 52 31 30           // .A.\._PR_PR10

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    11AF: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    11BF: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    11CD: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    11DD: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    11ED: 60                                               // `

            Return (Local0)
        }


    11EE: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    11F0: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST10)

    11F8: 8A 68 00 53 54 31 30                             // .h.ST10

            CreateDWordField (Arg0, 0x04, CP10)

    11FF: 8A 68 0A 04 43 50 31 30                          // .h..CP10

            If (((ST10 == 0x06) || 
    1207: A0 12 91 93 53 54 31 30 0A 06                    // ....ST10..

(ST10 == 0x0A)))
            {

    1211: 93 53 54 31 30 0A 0A                             // .ST10..

                Return (Zero)
            }


    1218: A4 00                                            // ..

            If ((ST10 & One))
            {
                CP10 = (ST10 & 0x0BFF)

    121A: A0 16 7B 53 54 31 30 01 00 7B 53 54 31 30 0B FF  // ..{ST10..{ST10..
    122A: 0B 43 50 31 30                                   // .CP10

                Return (Zero)
            }

            PC10 = ((PC10 & 0x7FFFFFFF) | CP10) /* \_PR_.PR10.GCAP.CP10 */

    122F: A4 00 7D 7B 50 43 31 30 0C FF FF FF 7F 00 43 50  // ..}{PC10......CP
    123F: 31 30 50 43 31 30                                // 10PC10

            If (((PC10 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    1245: A0 1B 93 7B 50 43 31 30 0A 09 00 0A 09 5C 2F 03  // ...{PC10.....\/.
    1255: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    1261: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    1271: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC10 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC10 /* \PC10 */

    1280: A0 18 7B 50 43 31 30 0A 18 00 5C 2F 03 5F 50 52  // ..{PC10...\/._PR
    1290: 5F 50 52 30 31 41 50 43 54 70 50 43 31 30 50 43  // _PR01APCTpPC10PC
    12A0: 30 30                                            // 00

            Return (Zero)
        }
    }


    12A2: A4 00                                            // ..

    Scope (\_PR.PR11)
    {

    12A4: 10 41 10 5C 2E 5F 50 52 5F 50 52 31 31           // .A.\._PR_PR11

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    12B1: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    12C1: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    12CF: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    12DF: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    12EF: 60                                               // `

            Return (Local0)
        }


    12F0: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    12F2: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST11)

    12FA: 8A 68 00 53 54 31 31                             // .h.ST11

            CreateDWordField (Arg0, 0x04, CP11)

    1301: 8A 68 0A 04 43 50 31 31                          // .h..CP11

            If (((ST11 == 0x06) || 
    1309: A0 12 91 93 53 54 31 31 0A 06                    // ....ST11..

(ST11 == 0x0A)))
            {

    1313: 93 53 54 31 31 0A 0A                             // .ST11..

                Return (Zero)
            }


    131A: A4 00                                            // ..

            If ((ST11 & One))
            {
                CP11 = (ST11 & 0x0BFF)

    131C: A0 16 7B 53 54 31 31 01 00 7B 53 54 31 31 0B FF  // ..{ST11..{ST11..
    132C: 0B 43 50 31 31                                   // .CP11

                Return (Zero)
            }

            PC11 = ((PC11 & 0x7FFFFFFF) | CP11) /* \_PR_.PR11.GCAP.CP11 */

    1331: A4 00 7D 7B 50 43 31 31 0C FF FF FF 7F 00 43 50  // ..}{PC11......CP
    1341: 31 31 50 43 31 31                                // 11PC11

            If (((PC11 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    1347: A0 1B 93 7B 50 43 31 31 0A 09 00 0A 09 5C 2F 03  // ...{PC11.....\/.
    1357: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    1363: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    1373: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC11 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC11 /* \PC11 */

    1382: A0 18 7B 50 43 31 31 0A 18 00 5C 2F 03 5F 50 52  // ..{PC11...\/._PR
    1392: 5F 50 52 30 31 41 50 43 54 70 50 43 31 31 50 43  // _PR01APCTpPC11PC
    13A2: 30 30                                            // 00

            Return (Zero)
        }
    }


    13A4: A4 00                                            // ..

    Scope (\_PR.PR12)
    {

    13A6: 10 41 10 5C 2E 5F 50 52 5F 50 52 31 32           // .A.\._PR_PR12

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    13B3: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    13C3: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    13D1: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    13E1: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    13F1: 60                                               // `

            Return (Local0)
        }


    13F2: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    13F4: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST12)

    13FC: 8A 68 00 53 54 31 32                             // .h.ST12

            CreateDWordField (Arg0, 0x04, CP12)

    1403: 8A 68 0A 04 43 50 31 32                          // .h..CP12

            If (((ST12 == 0x06) || 
    140B: A0 12 91 93 53 54 31 32 0A 06                    // ....ST12..

(ST12 == 0x0A)))
            {

    1415: 93 53 54 31 32 0A 0A                             // .ST12..

                Return (Zero)
            }


    141C: A4 00                                            // ..

            If ((ST12 & One))
            {
                CP12 = (ST12 & 0x0BFF)

    141E: A0 16 7B 53 54 31 32 01 00 7B 53 54 31 32 0B FF  // ..{ST12..{ST12..
    142E: 0B 43 50 31 32                                   // .CP12

                Return (Zero)
            }

            PC12 = ((PC12 & 0x7FFFFFFF) | CP12) /* \_PR_.PR12.GCAP.CP12 */

    1433: A4 00 7D 7B 50 43 31 32 0C FF FF FF 7F 00 43 50  // ..}{PC12......CP
    1443: 31 32 50 43 31 32                                // 12PC12

            If (((PC12 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    1449: A0 1B 93 7B 50 43 31 32 0A 09 00 0A 09 5C 2F 03  // ...{PC12.....\/.
    1459: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    1465: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    1475: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC12 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC12 /* \PC12 */

    1484: A0 18 7B 50 43 31 32 0A 18 00 5C 2F 03 5F 50 52  // ..{PC12...\/._PR
    1494: 5F 50 52 30 31 41 50 43 54 70 50 43 31 32 50 43  // _PR01APCTpPC12PC
    14A4: 30 30                                            // 00

            Return (Zero)
        }
    }


    14A6: A4 00                                            // ..

    Scope (\_PR.PR13)
    {

    14A8: 10 41 10 5C 2E 5F 50 52 5F 50 52 31 33           // .A.\._PR_PR13

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    14B5: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    14C5: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    14D3: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    14E3: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    14F3: 60                                               // `

            Return (Local0)
        }


    14F4: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    14F6: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST13)

    14FE: 8A 68 00 53 54 31 33                             // .h.ST13

            CreateDWordField (Arg0, 0x04, CP13)

    1505: 8A 68 0A 04 43 50 31 33                          // .h..CP13

            If (((ST13 == 0x06) || 
    150D: A0 12 91 93 53 54 31 33 0A 06                    // ....ST13..

(ST13 == 0x0A)))
            {

    1517: 93 53 54 31 33 0A 0A                             // .ST13..

                Return (Zero)
            }


    151E: A4 00                                            // ..

            If ((ST13 & One))
            {
                CP13 = (ST13 & 0x0BFF)

    1520: A0 16 7B 53 54 31 33 01 00 7B 53 54 31 33 0B FF  // ..{ST13..{ST13..
    1530: 0B 43 50 31 33                                   // .CP13

                Return (Zero)
            }

            PC13 = ((PC13 & 0x7FFFFFFF) | CP13) /* \_PR_.PR13.GCAP.CP13 */

    1535: A4 00 7D 7B 50 43 31 33 0C FF FF FF 7F 00 43 50  // ..}{PC13......CP
    1545: 31 33 50 43 31 33                                // 13PC13

            If (((PC13 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    154B: A0 1B 93 7B 50 43 31 33 0A 09 00 0A 09 5C 2F 03  // ...{PC13.....\/.
    155B: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    1567: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    1577: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC13 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC13 /* \PC13 */

    1586: A0 18 7B 50 43 31 33 0A 18 00 5C 2F 03 5F 50 52  // ..{PC13...\/._PR
    1596: 5F 50 52 30 31 41 50 43 54 70 50 43 31 33 50 43  // _PR01APCTpPC13PC
    15A6: 30 30                                            // 00

            Return (Zero)
        }
    }


    15A8: A4 00                                            // ..

    Scope (\_PR.PR14)
    {

    15AA: 10 41 10 5C 2E 5F 50 52 5F 50 52 31 34           // .A.\._PR_PR14

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    15B7: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    15C7: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    15D5: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    15E5: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    15F5: 60                                               // `

            Return (Local0)
        }


    15F6: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    15F8: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST14)

    1600: 8A 68 00 53 54 31 34                             // .h.ST14

            CreateDWordField (Arg0, 0x04, CP14)

    1607: 8A 68 0A 04 43 50 31 34                          // .h..CP14

            If (((ST14 == 0x06) || 
    160F: A0 12 91 93 53 54 31 34 0A 06                    // ....ST14..

(ST14 == 0x0A)))
            {

    1619: 93 53 54 31 34 0A 0A                             // .ST14..

                Return (Zero)
            }


    1620: A4 00                                            // ..

            If ((ST14 & One))
            {
                CP14 = (ST14 & 0x0BFF)

    1622: A0 16 7B 53 54 31 34 01 00 7B 53 54 31 34 0B FF  // ..{ST14..{ST14..
    1632: 0B 43 50 31 34                                   // .CP14

                Return (Zero)
            }

            PC14 = ((PC14 & 0x7FFFFFFF) | CP14) /* \_PR_.PR14.GCAP.CP14 */

    1637: A4 00 7D 7B 50 43 31 34 0C FF FF FF 7F 00 43 50  // ..}{PC14......CP
    1647: 31 34 50 43 31 34                                // 14PC14

            If (((PC14 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    164D: A0 1B 93 7B 50 43 31 34 0A 09 00 0A 09 5C 2F 03  // ...{PC14.....\/.
    165D: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    1669: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    1679: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC14 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC14 /* \PC14 */

    1688: A0 18 7B 50 43 31 34 0A 18 00 5C 2F 03 5F 50 52  // ..{PC14...\/._PR
    1698: 5F 50 52 30 31 41 50 43 54 70 50 43 31 34 50 43  // _PR01APCTpPC14PC
    16A8: 30 30                                            // 00

            Return (Zero)
        }
    }


    16AA: A4 00                                            // ..

    Scope (\_PR.PR15)
    {

    16AC: 10 41 10 5C 2E 5F 50 52 5F 50 52 31 35           // .A.\._PR_PR15

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = \_PR.PR00.CPDC (Arg0)
            GCAP (Local0)
        }


    16B9: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 50  // .._PDC.p\/._PR_P
    16C9: 52 30 30 43 50 44 43 68 60 47 43 41 50 60        // R00CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = \_PR.PR00.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)

    16D7: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 50  // ."_OSC.p\/._PR_P
    16E7: 52 30 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // R00COSChijk`GCAP
    16F7: 60                                               // `

            Return (Local0)
        }


    16F8: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    16FA: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, ST15)

    1702: 8A 68 00 53 54 31 35                             // .h.ST15

            CreateDWordField (Arg0, 0x04, CP15)

    1709: 8A 68 0A 04 43 50 31 35                          // .h..CP15

            If (((ST15 == 0x06) || 
    1711: A0 12 91 93 53 54 31 35 0A 06                    // ....ST15..

(ST15 == 0x0A)))
            {

    171B: 93 53 54 31 35 0A 0A                             // .ST15..

                Return (Zero)
            }


    1722: A4 00                                            // ..

            If ((ST15 & One))
            {
                CP15 = (ST15 & 0x0BFF)

    1724: A0 16 7B 53 54 31 35 01 00 7B 53 54 31 35 0B FF  // ..{ST15..{ST15..
    1734: 0B 43 50 31 35                                   // .CP15

                Return (Zero)
            }

            PC15 = ((PC15 & 0x7FFFFFFF) | CP15) /* \_PR_.PR15.GCAP.CP15 */

    1739: A4 00 7D 7B 50 43 31 35 0C FF FF FF 7F 00 43 50  // ..}{PC15......CP
    1749: 31 35 50 43 31 35                                // 15PC15

            If (((PC15 & 0x09) == 0x09))
            {
                \_PR.PR01.APPT ()
            }


    174F: A0 1B 93 7B 50 43 31 35 0A 09 00 0A 09 5C 2F 03  // ...{PC15.....\/.
    175F: 5F 50 52 5F 50 52 30 31 41 50 50 54              // _PR_PR01APPT

            If ((\_SB.OSCP & 0x20))
            {
                \_PR.PR01.HWPT ()
            }


    176B: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    177B: 5C 2F 03 5F 50 52 5F 50 52 30 31 48 57 50 54     // \/._PR_PR01HWPT

            If ((PC15 & 0x18))
            {
                \_PR.PR01.APCT ()
            }

            PC00 = PC15 /* \PC15 */

    178A: A0 18 7B 50 43 31 35 0A 18 00 5C 2F 03 5F 50 52  // ..{PC15...\/._PR
    179A: 5F 50 52 30 31 41 50 43 54 70 50 43 31 35 50 43  // _PR01APCTpPC15PC
    17AA: 30 30                                            // 00

            Return (Zero)
        }
    }
}



Table Header:
Table Body (Length 0x17AE)
