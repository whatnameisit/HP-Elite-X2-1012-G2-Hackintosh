{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GEXP, DeviceObj)
    External (_SB_.PCI0.GEXP.GEPS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (EIAP, UnknownObj)
    External (EIDF, IntObj)


    0024: A0 43 07 00 15 5C 41 44 42 47 08 01 15 5C 45 49  // .C...\ADBG...\EI
    0034: 41 50 00 00 15 5C 45 49 44 46 01 00 15 5C 2E 5F  // AP...\EIDF...\._
    0044: 53 42 5F 47 47 4F 56 08 01 15 5C 2E 5F 53 42 5F  // SB_GGOV...\._SB_
    0054: 53 47 4F 56 08 02 15 5C 2F 03 5F 53 42 5F 50 43  // SGOV...\/._SB_PC
    0064: 49 30 47 45 58 50 06 00 15 5C 2F 04 5F 53 42 5F  // I0GEXP...\/._SB_
    0074: 50 43 49 30 47 45 58 50 53 47 45 50 08 03 15 5C  // PCI0GEXPSGEP...\
    0084: 2F 04 5F 53 42 5F 50 43 49 30 47 45 58 50 47 45  // /._SB_PCI0GEXPGE
    0094: 50 53 08 02                                      // PS..

    Scope (\)
    {

    0098: 10 4D 2A 5C 00                                   // .M*\.

        Device (EIAD)
        {

    009D: 5B 82 47 2A 45 49 41 44                          // [.G*EIAD

            Name (_HID, EisaId ("INT3399"))  // _HID: Hardware ID

    00A5: 08 5F 48 49 44 0C 25 D4 33 99                    // ._HID.%.3.

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State

    00AF: 08 5F 53 30 57 00                                // ._S0W.

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                ADBG ("EIAD STA")

    00B5: 14 2E 5F 53 54 41 08 41 44 42 47 0D 45 49 41 44  // .._STA.ADBG.EIAD
    00C5: 20 53 54 41 00                                   //  STA.

                If ((EIAP == One))
                {

    00CA: A0 0A 93 45 49 41 50 01                          // ...EIAP.

                    Return (0x0F)
                }

    00D2: A4 0A 0F                                         // ...

                ElseIf
    00D5: A1 0C                                            // ..

 ((EIDF == One))
                {

    00D7: A0 0A 93 45 49 44 46 01                          // ...EIDF.

                    Return (0x0F)
                }


    00DF: A4 0A 0F                                         // ...

                Return (Zero)
            }


    00E2: A4 00                                            // ..

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {

    00E4: 14 41 26 5F 44 53 4D 0C                          // .A&_DSM.


    00EC: 08 5F 54 5F 30 00                                // ._T_0.

                Name (PECE, Zero)

    00F2: 08 50 45 43 45 00                                // .PECE.

                Name (PECD, Zero)

    00F8: 08 50 45 43 44 00                                // .PECD.

                Name (DFUE, Zero)

    00FE: 08 44 46 55 45 00                                // .DFUE.

                Name (DFUD, Zero)

    0104: 08 44 46 55 44 00                                // .DFUD.

                Name (OLDV, Zero)

    010A: 08 4F 4C 44 56 00                                // .OLDV.

                Name (PECV, Zero)

    0110: 08 50 45 43 56 00                                // .PECV.

                Name (DFUV, Zero)

    0116: 08 44 46 55 56 00                                // .DFUV.

                If ((Arg0 == 
    011C: A0 44 22 93 68                                   // .D".h

ToUUID ("adf03c1f-ee76-4f23-9def-cdae22a36acf") /* Unknown UUID */))
                {

    0121: 11 13 0A 10 1F 3C F0 AD 76 EE 23 4F 9D EF CD AE  // .....<..v.#O....
    0131: 22 A3 6A CF                                      // ".j.

                    If (
    0135: A0 49 20 92                                      // .I .

(ToInteger (Arg1) >= One))
                    {

    0139: 95 99 69 00 01                                   // ..i..

                        Switch (ToInteger (Arg2))
                        {

    013E: A2 4E 1F 01 70 99 6A 00 5F 54 5F 30              // .N..p.j._T_0

                            Case (Zero)
                            {
                                ADBG ("EIAD F:0")

    014A: A0 1A 93 5F 54 5F 30 00 41 44 42 47 0D 45 49 41  // ..._T_0.ADBG.EIA
    015A: 44 20 46 3A 30 00                                // D F:0.

                                Return (
    0160: A4                                               // .

Buffer (One)
                                {
                                     0x0F                                             // .
                                })
                            }

    0161: 11 03 01 0F                                      // ....

                            Case
    0165: A1 46 1D                                         // .F.

 (One)
                            {
                                ADBG ("EIAD F:1")

    0168: A0 42 09 93 5F 54 5F 30 01 41 44 42 47 0D 45 49  // .B.._T_0.ADBG.EI
    0178: 41 44 20 46 3A 31 00                             // AD F:1.

                                If ((EIAP == Zero))
                                {
                                    PECE = 
    017F: A0 49 07 93 45 49 41 50 00 70                    // .I..EIAP.p

DerefOf (
    0189: 83                                               // .

Arg3 [Zero])
                                    PECD = 
    018A: 88 6B 00 00 50 45 43 45 70                       // .k..PECEp

DerefOf (
    0193: 83                                               // .

Arg3 [One])
                                    OLDV = \_SB.PCI0.GEXP.GEPS (Zero, 0x0C)
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x0C, PECE)

    0194: 88 6B 01 00 50 45 43 44 70 5C 2F 04 5F 53 42 5F  // .k..PECDp\/._SB_
    01A4: 50 43 49 30 47 45 58 50 47 45 50 53 00 0A 0C 4F  // PCI0GEXPGEPS...O
    01B4: 4C 44 56 5C 2F 04 5F 53 42 5F 50 43 49 30 47 45  // LDV\/._SB_PCI0GE
    01C4: 58 50 53 47 45 50 00 0A 0C 50 45 43 45           // XPSGEP...PECE

                                    If ((PECD > Zero))
                                    {
                                        Sleep (PECD)
                                        \_SB.PCI0.GEXP.SGEP (Zero, 0x0C, OLDV)
                                    }
                                }


    01D1: A0 27 94 50 45 43 44 00 5B 22 50 45 43 44 5C 2F  // .'.PECD.["PECD\/
    01E1: 04 5F 53 42 5F 50 43 49 30 47 45 58 50 53 47 45  // ._SB_PCI0GEXPSGE
    01F1: 50 00 0A 0C 4F 4C 44 56                          // P...OLDV

                                Return (Zero)
                            }

    01F9: A4 00                                            // ..

                            Case
    01FB: A1 40 14                                         // .@.

 (0x02)
                            {
                                ADBG ("EIAD F:2")
                                DFUE = 
    01FE: A0 43 0C 93 5F 54 5F 30 0A 02 41 44 42 47 0D 45  // .C.._T_0..ADBG.E
    020E: 49 41 44 20 46 3A 32 00 70                       // IAD F:2.p

DerefOf (
    0217: 83                                               // .

Arg3 [Zero])
                                DFUD = 
    0218: 88 6B 00 00 44 46 55 45 70                       // .k..DFUEp

DerefOf (
    0221: 83                                               // .

Arg3 [One])

    0222: 88 6B 01 00 44 46 55 44                          // .k..DFUD

                                If ((EIAP == One))
                                {
                                    OLDV = \_SB.GGOV (0x02000015)
                                    \_SB.SGOV (0x02000015, DFUE)
                                }

    022A: A0 2E 93 45 49 41 50 01 70 5C 2E 5F 53 42 5F 47  // ...EIAP.p\._SB_G
    023A: 47 4F 56 0C 15 00 00 02 4F 4C 44 56 5C 2E 5F 53  // GOV.....OLDV\._S
    024A: 42 5F 53 47 4F 56 0C 15 00 00 02 44 46 55 45     // B_SGOV.....DFUE

                                Else
                                {
                                    OLDV = \_SB.GGOV (0x02040003)
                                    \_SB.SGOV (0x02040003, DFUE)
                                }


    0259: A1 28 70 5C 2E 5F 53 42 5F 47 47 4F 56 0C 03 00  // .(p\._SB_GGOV...
    0269: 04 02 4F 4C 44 56 5C 2E 5F 53 42 5F 53 47 4F 56  // ..OLDV\._SB_SGOV
    0279: 0C 03 00 04 02 44 46 55 45                       // .....DFUE

                                If ((DFUD > Zero))
                                {
                                    Sleep (DFUD)

    0282: A0 3D 94 44 46 55 44 00 5B 22 44 46 55 44        // .=.DFUD.["DFUD

                                    If ((EIAP == One))
                                    {
                                        \_SB.SGOV (0x02000015, OLDV)
                                    }

    0290: A0 1A 93 45 49 41 50 01 5C 2E 5F 53 42 5F 53 47  // ...EIAP.\._SB_SG
    02A0: 4F 56 0C 15 00 00 02 4F 4C 44 56                 // OV.....OLDV

                                    Else
                                    {
                                        \_SB.SGOV (0x02040003, OLDV)
                                    }
                                }


    02AB: A1 14 5C 2E 5F 53 42 5F 53 47 4F 56 0C 03 00 04  // ..\._SB_SGOV....
    02BB: 02 4F 4C 44 56                                   // .OLDV

                                Return (Zero)
                            }

    02C0: A4 00                                            // ..

                            Case
    02C2: A1 49 07                                         // .I.

 (0x03)
                            {
                                ADBG ("EIAD F:3")

    02C5: A0 46 07 93 5F 54 5F 30 0A 03 41 44 42 47 0D 45  // .F.._T_0..ADBG.E
    02D5: 49 41 44 20 46 3A 33 00                          // IAD F:3.

                                If ((EIAP == One))
                                {
                                    DFUV = \_SB.GGOV (0x02000015)

    02DD: A0 21 93 45 49 41 50 01 70 5C 2E 5F 53 42 5F 47  // .!.EIAP.p\._SB_G
    02ED: 47 4F 56 0C 15 00 00 02 44 46 55 56              // GOV.....DFUV

                                    PECV = One
                                }

    02F9: 70 01 50 45 43 56                                // p.PECV

                                Else
                                {
                                    DFUV = \_SB.GGOV (0x02040003)

    02FF: A1 30 70 5C 2E 5F 53 42 5F 47 47 4F 56 0C 03 00  // .0p\._SB_GGOV...
    030F: 04 02 44 46 55 56                                // ..DFUV

                                    PECV = \_SB.PCI0.GEXP.GEPS (Zero, 0x0C)
                                }


    0315: 70 5C 2F 04 5F 53 42 5F 50 43 49 30 47 45 58 50  // p\/._SB_PCI0GEXP
    0325: 47 45 50 53 00 0A 0C 50 45 43 56                 // GEPS...PECV

                                Return (
    0330: A4                                               // .

Package (0x02)
                                {
                                    PECV, 
                                    DFUV
                                })
                            }


    0331: 12 0A 02 50 45 43 56 44 46 55 56                 // ...PECVDFUV

                        }


    033C: A5                                               // .

                        Return (Zero)
                    }


    033D: A4 00                                            // ..

                    Return (Zero)
                }


    033F: A4 00                                            // ..

                Return (
    0341: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}



Table Header:
Table Body (Length 0x346)
