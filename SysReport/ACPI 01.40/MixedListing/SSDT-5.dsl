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


    0024: A0 47 1A 00 15 4F 53 59 53 01 00 15 50 42 31 45  // .G...OSYS...PB1E
    0034: 01 00 15 5C 47 54 4F 53 08 00 15 5C 2F 04 5F 53  // ...\GTOS...\/._S
    0044: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 06 00  // B_PCI0LPCBEC0_..
    0054: 15 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0064: 45 43 30 5F 50 54 45 4E 01 00 15 5C 2F 05 5F 53  // EC0_PTEN...\/._S
    0074: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 56 42  // B_PCI0LPCBEC0_VB
    0084: 50 53 01 00 15 5C 2F 04 5F 53 42 5F 50 43 49 30  // PS...\/._SB_PCI0
    0094: 47 46 58 30 49 55 45 52 01 00 15 5C 2F 04 5F 53  // GFX0IUER...\/._S
    00A4: 42 5F 50 43 49 30 47 46 58 30 49 55 45 48 08 01  // B_PCI0GFX0IUEH..
    00B4: 15 5C 2F 03 5F 53 42 5F 57 4D 49 56 47 56 57 45  // .\/._SB_WMIVGVWE
    00C4: 08 02 15 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // ...\/._SB_PCI0LP
    00D4: 43 42 45 43 30 5F 47 42 4E 54 08 02 15 5C 2F 05  // CBEC0_GBNT...\/.
    00E4: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F  // _SB_PCI0LPCBEC0_
    00F4: 45 43 4D 58 09 00 15 5C 2F 05 5F 53 42 5F 50 43  // ECMX...\/._SB_PC
    0104: 49 30 4C 50 43 42 45 43 30 5F 45 43 52 47 01 00  // I0LPCBEC0_ECRG..
    0114: 15 5C 2E 5F 53 42 5F 44 43 4B 44 08 00 15 5C 2F  // .\._SB_DCKD...\/
    0124: 04 5F 53 42 5F 50 43 49 30 47 46 58 30 41 49 4E  // ._SB_PCI0GFX0AIN
    0134: 54 08 02 15 42 49 45 53 01 00 15 49 55 42 45 01  // T...BIES...IUBE.
    0144: 00 15 48 45 46 45 01 00 15 49 55 44 45 01 00 15  // ..HEFE...IUDE...
    0154: 49 55 43 45 01 00 15 5C 4D 44 42 47 08 01 15 5C  // IUCE...\MDBG...\
    0164: 42 49 44 47 05 00 15 5C 42 49 44 32 05 00 15 5C  // BIDG...\BID2...\
    0174: 42 49 44 33 05 00 15 5C 42 49 44 34 05 00 15 5C  // BID3...\BID4...\
    0184: 42 49 44 35 05 00 15 5C 2F 04 5F 53 42 5F 50 43  // BID5...\/._SB_PC
    0194: 49 30 52 50 30 38 50 58 53 58 00 00 15 5C 2F 03  // I0RP08PXSX...\/.
    01A4: 5F 53 42 5F 57 4D 49 56 43 53 44 31 01 00 15 5C  // _SB_WMIVCSD1...\
    01B4: 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43  // /._SB_PCI0LPCBEC
    01C4: 30 5F 55 44 54 53 08 00                          // 0_UDTS..

    Method (VHBG, 1, Serialized)
    {

    01CC: 14 17 56 48 42 47 09                             // ..VHBG.

        If (CondRefOf (MDBG))
        {

    01D3: A0 0E 5B 12 4D 44 42 47 00                       // ..[.MDBG.

            Return (MDBG (Arg0))
        }


    01DC: A4 4D 44 42 47 68                                // .MDBGh

        Return (Zero)
    }


    01E2: A4 00                                            // ..

    Scope (\_SB)
    {

    01E4: 10 81 27 02 5C 5F 53 42 5F                       // ..'.\_SB_

        Scope (\_SB.PCI0.LPCB.EC0)
        {

    01ED: 10 4C 35 5C 2F 04 5F 53 42 5F 50 43 49 30 4C 50  // .L5\/._SB_PCI0LP
    01FD: 43 42 45 43 30 5F                                // CBEC0_

            Device (BIND)
            {

    0203: 5B 82 45 0B 42 49 4E 44                          // [.E.BIND

                Name (_HID, "INT33D2" /* Intel GPIO Buttons */)  // _HID: Hardware ID

    020B: 08 5F 48 49 44 0D 49 4E 54 33 33 44 32 00        // ._HID.INT33D2.

                Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID

    0219: 08 5F 43 49 44 0D 50 4E 50 30 43 34 30 00        // ._CID.PNP0C40.

                Method (_STA, 0, Serialized)  // _STA: Status
                {

    0227: 14 2C 5F 53 54 41 08                             // .,_STA.

                    If (((IUBE & One) && 
    022E: A0 23 90 7B 49 55 42 45 01 00                    // .#.{IUBE..


    0238: 92                                               // .

(\GTOS () >= 0x09)))
                    {

    0239: 95 5C 47 54 4F 53 0A 09                          // .\GTOS..

                        If ((PB1E & One))
                        {

    0241: A0 0B 7B 50 42 31 45 01 00                       // ..{PB1E..

                            Return (0x0B)
                        }

    024A: A4 0A 0B                                         // ...

                        Else
                        {

    024D: A1 04                                            // ..

                            Return (0x0F)
                        }
                    }


    024F: A4 0A 0F                                         // ...

                    Return (Zero)
                }


    0252: A4 00                                            // ..

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {

    0254: 14 45 06 5F 44 53 4D 0C                          // .E._DSM.


    025C: 08 5F 54 5F 30 00                                // ._T_0.

                    If ((Arg0 == 
    0262: A0 42 05 93 68                                   // .B..h

ToUUID ("dfbcf3c5-e7a5-44e6-9c1f-29c76f6e059c") /* Power Button Device */))
                    {

    0267: 11 13 0A 10 C5 F3 BC DF A5 E7 E6 44 9C 1F 29 C7  // ...........D..).
    0277: 6F 6E 05 9C                                      // on..

                        If ((Zero == 
    027B: A0 39 93 00                                      // .9..

ToInteger (Arg1)))
                        {

    027F: 99 69 00                                         // .i.

                            Switch (ToInteger (Arg2))
                            {

    0282: A2 32 01 70 99 6A 00 5F 54 5F 30                 // .2.p.j._T_0

                                Case (Zero)
                                {

    028D: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                                    Return (
    0295: A4                                               // .

Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }

    0296: 11 03 01 03                                      // ....

                                Case
    029A: A1 19                                            // ..

 (One)
                                {

    029C: A0 17 93 5F 54 5F 30 01                          // ..._T_0.

                                    If (((PB1E & One) == One))
                                    {

    02A4: A0 0D 93 7B 50 42 31 45 01 00 01                 // ...{PB1E...

                                        Return (0x07)
                                    }


    02AF: A4 0A 07                                         // ...

                                    Return (Zero)
                                }


    02B2: A4 00                                            // ..

                            }
                        }
                    }


    02B4: A5                                               // .

                    Return (
    02B5: A4                                               // .

Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }


    02B6: 11 03 01 00                                      // ....

            Device (VGBI)
            {

    02BA: 5B 82 4E 28 56 47 42 49                          // [.N(VGBI

                Name (_HID, EisaId ("INT33D6") /* Intel Virtual Buttons Device */)  // _HID: Hardware ID

    02C2: 08 5F 48 49 44 0C 25 D4 33 D6                    // ._HID.%.3.

                Name (VBDS, Zero)

    02CC: 08 56 42 44 53 00                                // .VBDS.

                Name (ONTM, Zero)

    02D2: 08 4F 4E 54 4D 00                                // .ONTM.

                Method (_STA, 0, Serialized)  // _STA: Status
                {

    02D8: 14 3B 5F 53 54 41 08                             // .;_STA.

                    If ((\GTOS () == 0x09))
                    {

    02DF: A0 19 93 5C 47 54 4F 53 0A 09                    // ...\GTOS..

                        If (
    02E9: A0 0F 92                                         // ...

((BIES & 0x05) != Zero))
                        {

    02EC: 93 7B 42 49 45 53 0A 05 00 00                    // .{BIES....

                            Return (0x0F)
                        }
                    }


    02F6: A4 0A 0F                                         // ...

                    If ((\GTOS () > 0x09))
                    {

    02F9: A0 18 94 5C 47 54 4F 53 0A 09                    // ...\GTOS..

                        If (
    0303: A0 0E 92                                         // ...

((BIES & One) != Zero))
                        {

    0306: 93 7B 42 49 45 53 01 00 00                       // .{BIES...

                            Return (0x0F)
                        }
                    }


    030F: A4 0A 0F                                         // ...

                    Return (Zero)
                }


    0312: A4 00                                            // ..

                Method (VBDL, 0, Serialized)
                {
                    PB1E |= 0x20
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)

    0314: 14 45 08 56 42 44 4C 08 7D 50 42 31 45 0A 20 50  // .E.VBDL.}PB1E. P
    0324: 42 31 45 5B 23 5C 2F 05 5F 53 42 5F 50 43 49 30  // B1E[#\/._SB_PCI0
    0334: 4C 50 43 42 45 43 30 5F 45 43 4D 58 FF FF        // LPCBEC0_ECMX..

                    If (((PB1E & One) == One))
                    {

    0342: A0 23 93 7B 50 42 31 45 01 00 01                 // .#.{PB1E...

                        \_SB.PCI0.LPCB.EC0.PTEN = One
                    }

    034D: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    035D: 42 45 43 30 5F 50 54 45 4E                       // BEC0_PTEN

                    Else
                    {

    0366: A1 1A                                            // ..

                        \_SB.PCI0.LPCB.EC0.PTEN = Zero
                    }


    0368: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    0378: 42 45 43 30 5F 50 54 45 4E                       // BEC0_PTEN

                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }


    0381: 5B 27 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // ['\/._SB_PCI0LPC
    0391: 42 45 43 30 5F 45 43 4D 58                       // BEC0_ECMX

                Method (VGBS, 0, Serialized)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.GBIS = \_SB.PCI0.LPCB.EC0.VBPS /* External reference */
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)

    039A: 14 41 14 56 47 42 53 08 5B 23 5C 2F 05 5F 53 42  // .A.VGBS.[#\/._SB
    03AA: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45 43 4D  // _PCI0LPCBEC0_ECM
    03BA: 58 FF FF 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // X..p\/._SB_PCI0L
    03CA: 50 43 42 45 43 30 5F 56 42 50 53 5C 2F 05 5F 53  // PCBEC0_VBPS\/._S
    03DA: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42  // B_PCI0LPCBEC0_GB
    03EA: 49 53 5B 27 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // IS['\/._SB_PCI0L
    03FA: 50 43 42 45 43 30 5F 45 43 4D 58                 // PCBEC0_ECMX

                    If ((ONTM == Zero))
                    {

    0405: A0 41 0D 93 4F 4E 54 4D 00                       // .A..ONTM.

                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x10) == 0x10))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x04, One)
                        }


    040E: A0 3D 93 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .=.{\/._SB_PCI0L
    041E: 50 43 42 45 43 30 5F 47 42 49 53 0A 10 00 0A 10  // PCBEC0_GBIS.....
    042E: 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42 45  // \/._SB_PCI0LPCBE
    043E: 43 30 5F 56 47 42 49 55 50 42 54 0A 04 01        // C0_VGBIUPBT...

                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x40) == 0x40))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, One)
                        }


    044C: A0 3D 93 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .=.{\/._SB_PCI0L
    045C: 50 43 42 45 43 30 5F 47 42 49 53 0A 40 00 0A 40  // PCBEC0_GBIS.@..@
    046C: 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42 45  // \/._SB_PCI0LPCBE
    047C: 43 30 5F 56 47 42 49 55 50 42 54 0A 06 01        // C0_VGBIUPBT...

                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x80) == 0x80))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, One)
                        }

                        ONTM = One

    048A: A0 3D 93 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .=.{\/._SB_PCI0L
    049A: 50 43 42 45 43 30 5F 47 42 49 53 0A 80 00 0A 80  // PCBEC0_GBIS.....
    04AA: 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42 45  // \/._SB_PCI0LPCBE
    04BA: 43 30 5F 56 47 42 49 55 50 42 54 0A 07 01 70 01  // C0_VGBIUPBT...p.
    04CA: 4F 4E 54 4D                                      // ONTM

                        BID3 = VBPS /* External reference */
                    }


    04CE: 70 56 42 50 53 42 49 44 33                       // pVBPSBID3

                    Return (VBDS) /* \_SB_.PCI0.LPCB.EC0_.VGBI.VBDS */
                }


    04D7: A4 56 42 44 53                                   // .VBDS

                Method (UPBT, 2, Serialized)
                {
                    Local0 = (One << Arg0)

    04DC: 14 25 55 50 42 54 0A 79 01 68 60                 // .%UPBT.y.h`

                    If (Arg1)
                    {

    04E7: A0 0C 69                                         // ..i

                        VBDS |= Local0
                    }

    04EA: 7D 56 42 44 53 60 56 42 44 53                    // }VBDS`VBDS

                    Else
                    {

    04F4: A1 0D                                            // ..

                        VBDS &= 
    04F6: 7B 56 42 44 53                                   // {VBDS

~Local0
                    }
                }


    04FB: 80 60 00 56 42 44 53                             // .`.VBDS

                Method (GPBT, 1, Serialized)
                {
                    Local0 = (One << Arg0)

    0502: 14 32 47 50 42 54 09 79 01 68 60                 // .2GPBT.y.h`

                    If (((\_SB.PCI0.LPCB.EC0.VGBI.VBDS & Local0) == Local0))
                    {

    050D: A0 23 93 7B 5C 2F 06 5F 53 42 5F 50 43 49 30 4C  // .#.{\/._SB_PCI0L
    051D: 50 43 42 45 43 30 5F 56 47 42 49 56 42 44 53 60  // PCBEC0_VGBIVBDS`
    052D: 00 60                                            // .`

                        Return (One)
                    }

    052F: A4 01                                            // ..

                    Else
                    {

    0531: A1 03                                            // ..

                        Return (Zero)
                    }
                }


    0533: A4 00                                            // ..

                Method (PBIN, 0, Serialized)
                {

    0535: 14 14 50 42 49 4E 08                             // ..PBIN.

                    PB1E &= 0xFFFFFFDF
                }
            }
        }


    053C: 7B 50 42 31 45 0C DF FF FF FF 50 42 31 45        // {PB1E.....PB1E

        Scope (\_SB)
        {

    054A: 10 43 42 5C 5F 53 42 5F                          // .CB\_SB_

            Device (HIDD)
            {

    0552: 5B 82 41 2B 48 49 44 44                          // [.A+HIDD

                Name (_HID, "INT33D5")  // _HID: Hardware ID

    055A: 08 5F 48 49 44 0D 49 4E 54 33 33 44 35 00        // ._HID.INT33D5.

                Name (HBSY, Zero)

    0568: 08 48 42 53 59 00                                // .HBSY.

                Name (HIDX, Zero)

    056E: 08 48 49 44 58 00                                // .HIDX.

                Name (HMDE, Zero)

    0574: 08 48 4D 44 45 00                                // .HMDE.

                Name (HRDY, Zero)

    057A: 08 48 52 44 59 00                                // .HRDY.

                Name (BTLD, Zero)

    0580: 08 42 54 4C 44 00                                // .BTLD.

                Name (BTS1, Zero)

    0586: 08 42 54 53 31 00                                // .BTS1.

                Name (BTEN, Zero)

    058C: 08 42 54 45 4E 00                                // .BTEN.

                Method (_STA, 0, Serialized)  // _STA: Status
                {

    0592: 14 44 06 5F 53 54 41 08                          // .D._STA.

                    If (((\GTOS () == 0x09) && 
    059A: A0 39 90 93 5C 47 54 4F 53 0A 09                 // .9..\GTOS..

(HEFE == One)))
                    {

    05A5: 93 48 45 46 45 01                                // .HEFE.

                        If ((BIES & 0x10))
                        {

    05AB: A0 16 7B 42 49 45 53 0A 10 00                    // ..{BIES...

                            If ((BIES & 0x0C))
                            {

    05B5: A0 0C 7B 42 49 45 53 0A 0C 00                    // ..{BIES...

                                Return (0x0F)
                            }
                        }

    05BF: A4 0A 0F                                         // ...

                        ElseIf
    05C2: A1 11                                            // ..

 (
    05C4: A0 0F 92                                         // ...

((BIES & 0x08) != Zero))
                        {

    05C7: 93 7B 42 49 45 53 0A 08 00 00                    // .{BIES....

                            Return (0x0F)
                        }
                    }


    05D1: A4 0A 0F                                         // ...

                    If (((\GTOS () > 0x09) && 
    05D4: A0 20 90 94 5C 47 54 4F 53 0A 09                 // . ..\GTOS..

(HEFE == One)))
                    {

    05DF: 93 48 45 46 45 01                                // .HEFE.

                        If (
    05E5: A0 0F 92                                         // ...

((BIES & 0x0C) != Zero))
                        {

    05E8: 93 7B 42 49 45 53 0A 0C 00 00                    // .{BIES....

                            Return (0x0F)
                        }
                    }


    05F2: A4 0A 0F                                         // ...

                    Return (Zero)
                }


    05F5: A4 00                                            // ..

                Method (HDDM, 0, Serialized)
                {

    05F7: 14 27 48 44 44 4D 08                             // .'HDDM.

                    Name (DPKG, 
    05FE: 08 44 50 4B 47                                   // .DPKG

Package (0x04)
                    {
                        0x11111111, 
                        0x22222222, 
                        0x33333333, 
                        0x44444444
                    })

    0603: 12 16 04 0C 11 11 11 11 0C 22 22 22 22 0C 33 33  // ........."""".33
    0613: 33 33 0C 44 44 44 44                             // 33.DDDD

                    Return (DPKG) /* \_SB_.HIDD.HDDM.DPKG */
                }


    061A: A4 44 50 4B 47                                   // .DPKG

                Method (HDEM, 0, Serialized)
                {
                    HBSY = Zero

    061F: 14 1E 48 44 45 4D 08 70 00 48 42 53 59           // ..HDEM.p.HBSY

                    If ((HMDE == Zero))
                    {

    062C: A0 0C 93 48 4D 44 45 00                          // ...HMDE.

                        Return (HIDX) /* \_SB_.HIDD.HIDX */
                    }


    0634: A4 48 49 44 58                                   // .HIDX

                    Return (HMDE) /* \_SB_.HIDD.HMDE */
                }


    0639: A4 48 4D 44 45                                   // .HMDE

                Method (HDMM, 0, Serialized)
                {

    063E: 14 0B 48 44 4D 4D 08                             // ..HDMM.

                    Return (HMDE) /* \_SB_.HIDD.HMDE */
                }


    0645: A4 48 4D 44 45                                   // .HMDE

                Method (HDSM, 1, Serialized)
                {
                    HRDY = Arg0

    064A: 14 40 06 48 44 53 4D 09 70 68 48 52 44 59        // .@.HDSM.phHRDY

                    If ((Arg0 == Zero))
                    {
                        Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                        \_SB.PCI0.LPCB.EC0.PTEN = Zero

    0658: A0 42 05 93 68 00 5B 23 5C 2F 05 5F 53 42 5F 50  // .B..h.[#\/._SB_P
    0668: 43 49 30 4C 50 43 42 45 43 30 5F 45 43 4D 58 FF  // CI0LPCBEC0_ECMX.
    0678: FF 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .p.\/._SB_PCI0LP
    0688: 43 42 45 43 30 5F 50 54 45 4E                    // CBEC0_PTEN

                        Release (\_SB.PCI0.LPCB.EC0.ECMX)
                    }
                }


    0692: 5B 27 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // ['\/._SB_PCI0LPC
    06A2: 42 45 43 30 5F 45 43 4D 58                       // BEC0_ECMX

                Method (HPEM, 1, Serialized)
                {
                    HBSY = One

    06AB: 14 4E 05 48 50 45 4D 09 70 01 48 42 53 59        // .N.HPEM.p.HBSY

                    If ((HMDE == Zero))
                    {

    06B9: A0 0D 93 48 4D 44 45 00                          // ...HMDE.

                        HIDX = Arg0
                    }

    06C1: 70 68 48 49 44 58                                // phHIDX

                    Else
                    {

    06C7: A1 07                                            // ..

                        HIDX = Arg0
                    }

                    Notify (\_SB.HIDD, 0xC0) // Hardware-Specific
                    Local0 = Zero

    06C9: 70 68 48 49 44 58 86 5C 2E 5F 53 42 5F 48 49 44  // phHIDX.\._SB_HID
    06D9: 44 0A C0 70 00 60                                // D..p.`

                    While (((Local0 < 0xFA) && HBSY))
                    {
                        Sleep (0x04)

    06DF: A2 10 90 95 60 0A FA 48 42 53 59 5B 22 0A 04     // ....`..HBSY["..

                        Local0++
                    }


    06EE: 75 60                                            // u`

                    If ((HBSY == One))
                    {
                        HBSY = Zero
                        HIDX = Zero

    06F0: A0 15 93 48 42 53 59 01 70 00 48 42 53 59 70 00  // ...HBSY.p.HBSYp.
    0700: 48 49 44 58                                      // HIDX

                        Return (One)
                    }

    0704: A4 01                                            // ..

                    Else
                    {

    0706: A1 03                                            // ..

                        Return (Zero)
                    }
                }


    0708: A4 00                                            // ..

                Method (BTNL, 0, Serialized)
                {
                    \_SB.HIDD.BTLD = One
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)

    070A: 14 4C 0A 42 54 4E 4C 08 70 01 5C 2F 03 5F 53 42  // .L.BTNL.p.\/._SB
    071A: 5F 48 49 44 44 42 54 4C 44 5B 23 5C 2F 05 5F 53  // _HIDDBTLD[#\/._S
    072A: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45 43  // B_PCI0LPCBEC0_EC
    073A: 4D 58 FF FF                                      // MX..

                    If (((PB1E & One) == One))
                    {
                        \_SB.PCI0.LPCB.EC0.PTEN = One
                        BTS1 = 0x1F

    073E: A0 33 93 7B 50 42 31 45 01 00 01 70 01 5C 2F 05  // .3.{PB1E...p.\/.
    074E: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F  // _SB_PCI0LPCBEC0_
    075E: 50 54 45 4E 70 0A 1F 42 54 53 31                 // PTENp..BTS1

                        BTEN = BTS1 /* \_SB_.HIDD.BTS1 */
                    }

    0769: 70 42 54 53 31 42 54 45 4E                       // pBTS1BTEN

                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.PTEN = Zero

    0772: A1 2B 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .+p.\/._SB_PCI0L
    0782: 50 43 42 45 43 30 5F 50 54 45 4E                 // PCBEC0_PTEN

                        \_SB.HIDD.BTS1 = Zero
                    }


    078D: 70 00 5C 2F 03 5F 53 42 5F 48 49 44 44 42 54 53  // p.\/._SB_HIDDBTS
    079D: 31                                               // 1

                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }


    079E: 5B 27 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // ['\/._SB_PCI0LPC
    07AE: 42 45 43 30 5F 45 43 4D 58                       // BEC0_ECMX

                Method (BTNE, 1, Serialized)
                {
                    BTS1 = 
    07B7: 14 25 42 54 4E 45 09 70                          // .%BTNE.p

((Arg0 & 0x1E) | One)
                    BTEN = BTS1 /* \_SB_.HIDD.BTS1 */

    07BF: 7D 7B 68 0A 1E 00 01 00 42 54 53 31 70 42 54 53  // }{h.....BTS1pBTS
    07CF: 31 42 54 45 4E                                   // 1BTEN

                    BID5 = BTEN /* \_SB_.HIDD.BTEN */
                }


    07D4: 70 42 54 45 4E 42 49 44 35                       // pBTENBID5

                Method (BTNS, 0, Serialized)
                {
                    BTS1 = BTEN /* \_SB_.HIDD.BTEN */
                    BID4 = BTS1 /* \_SB_.HIDD.BTS1 */

    07DD: 14 1D 42 54 4E 53 08 70 42 54 45 4E 42 54 53 31  // ..BTNS.pBTENBTS1
    07ED: 70 42 54 53 31 42 49 44 34                       // pBTS1BID4

                    Return (BTS1) /* \_SB_.HIDD.BTS1 */
                }


    07F6: A4 42 54 53 31                                   // .BTS1

                Method (BTNC, 0, Serialized)
                {

    07FB: 14 09 42 54 4E 43 08                             // ..BTNC.

                    Return (0x1F)
                }
            }


    0802: A4 0A 1F                                         // ...

            Method (PWPR, 0, Serialized)
            {

    0805: 14 49 0C 50 57 50 52 08                          // .I.PWPR.

                If ((
    080D: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                {

    0811: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    0821: 49 44 44 42 54 4C 44                             // IDDBTLD

                    Notify (\_SB.HIDD, 0xCE) // Hardware-Specific
                }

    0828: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A CE           // .\._SB_HIDD..

                ElseIf
    0835: A1 49 09                                         // .I.

 ((PB1E & 0x20))
                {

    0838: A0 23 7B 50 42 31 45 0A 20 00                    // .#{PB1E. .

                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC0) // Hardware-Specific
                }

    0842: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0852: 45 43 30 5F 56 47 42 49 0A C0                    // EC0_VGBI..

                ElseIf
    085C: A1 42 07                                         // .B.

 (CondRefOf (\_SB.PCI0.GFX0.IUER))
                {
                    Local0 = \_SB.PCI0.GFX0.IUER /* External reference */
                    \_SB.PCI0.GFX0.IUER = (Local0 & 0xC0)
                    Local0 = \_SB.PCI0.GFX0.IUER /* External reference */

    085F: A0 4F 06 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30  // .O.[.\/._SB_PCI0
    086F: 47 46 58 30 49 55 45 52 00 70 5C 2F 04 5F 53 42  // GFX0IUER.p\/._SB
    087F: 5F 50 43 49 30 47 46 58 30 49 55 45 52 60 7B 60  // _PCI0GFX0IUER`{`
    088F: 0A C0 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58  // ..\/._SB_PCI0GFX
    089F: 30 49 55 45 52 70 5C 2F 04 5F 53 42 5F 50 43 49  // 0IUERp\/._SB_PCI
    08AF: 30 47 46 58 30 49 55 45 52 60                    // 0GFX0IUER`

                    \_SB.PCI0.GFX0.IUER = (Local0 | One)
                }
            }


    08B9: 7D 60 01 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46  // }`.\/._SB_PCI0GF
    08C9: 58 30 49 55 45 52                                // X0IUER

            Method (PWRR, 0, Serialized)
            {

    08CF: 14 4E 09 50 57 52 52 08                          // .N.PWRR.

                If ((
    08D7: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                {

    08DB: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    08EB: 49 44 44 42 54 4C 44                             // IDDBTLD

                    Notify (\_SB.HIDD, 0xCF) // Hardware-Specific
                }

    08F2: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A CF           // .\._SB_HIDD..

                ElseIf
    08FF: A1 4E 06                                         // .N.

 ((PB1E & 0x20))
                {

    0902: A0 23 7B 50 42 31 45 0A 20 00                    // .#{PB1E. .

                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                }

    090C: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    091C: 45 43 30 5F 56 47 42 49 0A C1                    // EC0_VGBI..

                ElseIf
    0926: A1 47 04                                         // .G.

 (CondRefOf (\_SB.PCI0.GFX0.IUER))
                {
                    Local0 = \_SB.PCI0.GFX0.IUER /* External reference */

    0929: A0 44 04 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30  // .D.[.\/._SB_PCI0
    0939: 47 46 58 30 49 55 45 52 00 70 5C 2F 04 5F 53 42  // GFX0IUER.p\/._SB
    0949: 5F 50 43 49 30 47 46 58 30 49 55 45 52 60        // _PCI0GFX0IUER`

                    \_SB.PCI0.GFX0.IUER = (Local0 & 0xC0)
                }
            }
        }


    0957: 7B 60 0A C0 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // {`..\/._SB_PCI0G
    0967: 46 58 30 49 55 45 52                             // FX0IUER

        Scope (\_SB)
        {

    096E: 10 4A 04 5C 5F 53 42 5F                          // .J.\_SB_

            Device (CIND)
            {

    0976: 5B 82 41 04 43 49 4E 44                          // [.A.CIND

                Name (_HID, "INT33D3" /* Intel GPIO Buttons */)  // _HID: Hardware ID

    097E: 08 5F 48 49 44 0D 49 4E 54 33 33 44 33 00        // ._HID.INT33D3.

                Name (_CID, "PNP0C60" /* Display Sensor Device */)  // _CID: Compatible ID

    098C: 08 5F 43 49 44 0D 50 4E 50 30 43 36 30 00        // ._CID.PNP0C60.

                Method (_STA, 0, Serialized)  // _STA: Status
                {

    099A: 14 1E 5F 53 54 41 08                             // .._STA.

                    If (((IUCE & One) && 
    09A1: A0 15 90 7B 49 55 43 45 01 00                    // ...{IUCE..


    09AB: 92                                               // .

(\GTOS () >= 0x08)))
                    {

    09AC: 95 5C 47 54 4F 53 0A 08                          // .\GTOS..

                        Return (0x0F)
                    }


    09B4: A4 0A 0F                                         // ...

                    Return (Zero)
                }
            }
        }


    09B7: A4 00                                            // ..

        Scope (\_SB)
        {

    09B9: 10 4A 04 5C 5F 53 42 5F                          // .J.\_SB_

            Device (DIND)
            {

    09C1: 5B 82 41 04 44 49 4E 44                          // [.A.DIND

                Name (_HID, "INT33D4" /* Intel GPIO Buttons */)  // _HID: Hardware ID

    09C9: 08 5F 48 49 44 0D 49 4E 54 33 33 44 34 00        // ._HID.INT33D4.

                Name (_CID, "PNP0C70" /* Dock Sensor Device */)  // _CID: Compatible ID

    09D7: 08 5F 43 49 44 0D 50 4E 50 30 43 37 30 00        // ._CID.PNP0C70.

                Method (_STA, 0, Serialized)  // _STA: Status
                {

    09E5: 14 1E 5F 53 54 41 08                             // .._STA.

                    If (((IUDE & One) && 
    09EC: A0 15 90 7B 49 55 44 45 01 00                    // ...{IUDE..


    09F6: 92                                               // .

(\GTOS () >= 0x08)))
                    {

    09F7: 95 5C 47 54 4F 53 0A 08                          // .\GTOS..

                        Return (0x0F)
                    }


    09FF: A4 0A 0F                                         // ...

                    Return (Zero)
                }
            }
        }


    0A02: A4 00                                            // ..

        Scope (\_SB.PCI0.LPCB.EC0)
        {

    0A04: 10 8E 54 01 5C 2F 04 5F 53 42 5F 50 43 49 30 4C  // ..T.\/._SB_PCI0L
    0A14: 50 43 42 45 43 30 5F                             // PCBEC0_

            Name (COVS, Zero)

    0A1B: 08 43 4F 56 53 00                                // .COVS.

            Name (DOKS, Zero)

    0A21: 08 44 4F 4B 53 00                                // .DOKS.

            Name (BUCG, Zero)

    0A27: 08 42 55 43 47 00                                // .BUCG.

            Name (GBIS, Zero)

    0A2D: 08 47 42 49 53 00                                // .GBIS.

            Name (BUCW, Zero)

    0A33: 08 42 55 43 57 00                                // .BUCW.

            Method (_Q30, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                BIDG = 0x30000000

    0A39: 14 4B CB 5F 51 33 30 08 70 0C 00 00 00 30 42 49  // .K._Q30.p....0BI
    0A49: 44 47                                            // DG

                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.GBIS = \_SB.PCI0.LPCB.EC0.VBPS /* External reference */
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)

    0A4B: A0 49 CA 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .I.\/._SB_PCI0LP
    0A5B: 43 42 45 43 30 5F 45 43 52 47 5B 23 5C 2F 05 5F  // CBEC0_ECRG[#\/._
    0A6B: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45  // SB_PCI0LPCBEC0_E
    0A7B: 43 4D 58 FF FF 70 5C 2F 05 5F 53 42 5F 50 43 49  // CMX..p\/._SB_PCI
    0A8B: 30 4C 50 43 42 45 43 30 5F 56 42 50 53 5C 2F 05  // 0LPCBEC0_VBPS\/.
    0A9B: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F  // _SB_PCI0LPCBEC0_
    0AAB: 47 42 49 53 5B 27 5C 2F 05 5F 53 42 5F 50 43 49  // GBIS['\/._SB_PCI
    0ABB: 30 4C 50 43 42 45 43 30 5F 45 43 4D 58           // 0LPCBEC0_ECMX

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, Zero))
                    {

    0AC8: A0 40 12 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .@.\/._SB_PCI0LP
    0AD8: 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53 42  // CBEC0_GBNT\/._SB
    0AE8: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42 49  // _PCI0LPCBEC0_GBI
    0AF8: 53 00                                            // S.

                        If ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero) == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (Zero, One)
                            \_SB.PWPR ()
                            BIDG |= One

    0AFA: A0 4E 0E 93 5C 2F 06 5F 53 42 5F 50 43 49 30 4C  // .N..\/._SB_PCI0L
    0B0A: 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54 00  // PCBEC0_VGBIGPBT.
    0B1A: 00 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0B2A: 45 43 30 5F 56 47 42 49 55 50 42 54 00 01 5C 2E  // EC0_VGBIUPBT..\.
    0B3A: 5F 53 42 5F 50 57 50 52 7D 42 49 44 47 01 42 49  // _SB_PWPR}BIDG.BI
    0B4A: 44 47                                            // DG

                            If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (One))
                            {

    0B4C: A0 36 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43  // .6\/._SB_PCI0LPC
    0B5C: 42 45 43 30 5F 56 47 42 49 47 50 42 54 01        // BEC0_VGBIGPBT.

                                \_SB.PCI0.LPCB.EC0.BUCG = One
                            }


    0B6A: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    0B7A: 42 45 43 30 5F 42 55 43 47                       // BEC0_BUCG

                            If ((\GTOS () == 0x09))
                            {

    0B83: A0 45 06 93 5C 47 54 4F 53 0A 09                 // .E..\GTOS..

                                If (((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x02) == Zero) && 
    0B8E: A0 4A 05 90 93 5C 2F 06 5F 53 42 5F 50 43 49 30  // .J...\/._SB_PCI0
    0B9E: 4C 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54  // LPCBEC0_VGBIGPBT
    0BAE: 0A 02 00                                         // ...

(\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x03) == Zero)))
                                {

    0BB1: 93 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0BC1: 45 43 30 5F 56 47 42 49 47 50 42 54 0A 03 00     // EC0_VGBIGPBT...

                                    \_SB.PCI0.LPCB.EC0.BUCW = One
                                }
                            }
                        }
                    }


    0BD0: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    0BE0: 42 45 43 30 5F 42 55 43 57                       // BEC0_BUCW

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, One))
                    {

    0BE9: A0 44 10 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .D.\/._SB_PCI0LP
    0BF9: 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53 42  // CBEC0_GBNT\/._SB
    0C09: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42 49  // _PCI0LPCBEC0_GBI
    0C19: 53 01                                            // S.

                        If ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (One) == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.VGBI.UPBT (One, One)

    0C1B: A0 42 0D 93 5C 2F 06 5F 53 42 5F 50 43 49 30 4C  // .B..\/._SB_PCI0L
    0C2B: 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54 01  // PCBEC0_VGBIGPBT.
    0C3B: 00 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0C4B: 45 43 30 5F 56 47 42 49 55 50 42 54 01 01        // EC0_VGBIUPBT..

                            If ((
    0C59: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                            {

    0C5D: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    0C6D: 49 44 44 42 54 4C 44                             // IDDBTLD

                                Notify (\_SB.HIDD, 0xC2) // Hardware-Specific
                            }

    0C74: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C2           // .\._SB_HIDD..

                            ElseIf
    0C81: A1 41 06                                         // .A.

 ((PB1E & 0x20))
                            {

    0C84: A0 23 7B 50 42 31 45 0A 20 00                    // .#{PB1E. .

                                Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC2) // Hardware-Specific
                            }

    0C8E: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0C9E: 45 43 30 5F 56 47 42 49 0A C2                    // EC0_VGBI..

                            ElseIf
    0CA8: A1 3A                                            // .:

 ((\_SB.HIDD.HRDY == One))
                            {
                                \_SB.HIDD.HPEM (One)
                            }

    0CAA: A0 22 93 5C 2F 03 5F 53 42 5F 48 49 44 44 48 52  // .".\/._SB_HIDDHR
    0CBA: 44 59 01 5C 2F 03 5F 53 42 5F 48 49 44 44 48 50  // DY.\/._SB_HIDDHP
    0CCA: 45 4D 01                                         // EM.

                            Else
                            {
                                \_SB.PCI0.GFX0.IUEH (One)
                            }


    0CCD: A1 15 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58  // ..\/._SB_PCI0GFX
    0CDD: 30 49 55 45 48 01                                // 0IUEH.

                            BIDG |= 0x02
                        }
                    }


    0CE3: 7D 42 49 44 47 0A 02 42 49 44 47                 // }BIDG..BIDG

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x02))
                    {

    0CEE: A0 4D 2F 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .M/\/._SB_PCI0LP
    0CFE: 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53 42  // CBEC0_GBNT\/._SB
    0D0E: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42 49  // _PCI0LPCBEC0_GBI
    0D1E: 53 0A 02                                         // S..

                        If (NAnd ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero) || \_SB.PCI0.LPCB.EC0.VGBI.GPBT (One)), \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x02)))
                        {

    0D21: A0 4A 2C 7C 91 5C 2F 06 5F 53 42 5F 50 43 49 30  // .J,|.\/._SB_PCI0
    0D31: 4C 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54  // LPCBEC0_VGBIGPBT
    0D41: 00 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0D51: 45 43 30 5F 56 47 42 49 47 50 42 54 01 5C 2F 06  // EC0_VGBIGPBT.\/.
    0D61: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F  // _SB_PCI0LPCBEC0_
    0D71: 56 47 42 49 47 50 42 54 0A 02 00                 // VGBIGPBT...

                            If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                            {
                                \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x02, One)

    0D7C: A0 4F 26 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .O&.\/._SB_PCI0L
    0D8C: 50 43 42 45 43 30 5F 42 55 43 47 00 5C 2F 06 5F  // PCBEC0_BUCG.\/._
    0D9C: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 56  // SB_PCI0LPCBEC0_V
    0DAC: 47 42 49 55 50 42 54 0A 02 01                    // GBIUPBT...

                                If ((
    0DB6: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                                {

    0DBA: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    0DCA: 49 44 44 42 54 4C 44                             // IDDBTLD

                                    Notify (\_SB.HIDD, 0xC4) // Hardware-Specific
                                }

    0DD1: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C4           // .\._SB_HIDD..

                                ElseIf
    0DDE: A1 40 11                                         // .@.

 ((PB1E & 0x20))
                                {

    0DE1: A0 4E 0D 7B 50 42 31 45 0A 20 00                 // .N.{PB1E. .

                                    If ((\GTOS () == 0x09))
                                    {

    0DEC: A0 47 0B 93 5C 47 54 4F 53 0A 09                 // .G..\GTOS..

                                        If (BUCW)
                                        {
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                                            Sleep (0x64)
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC2) // Hardware-Specific
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC6) // Hardware-Specific
                                            Sleep (0x0A)
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC3) // Hardware-Specific

    0DF7: A0 40 09 42 55 43 57 86 5C 2F 05 5F 53 42 5F 50  // .@.BUCW.\/._SB_P
    0E07: 43 49 30 4C 50 43 42 45 43 30 5F 56 47 42 49 0A  // CI0LPCBEC0_VGBI.
    0E17: C1 5B 22 0A 64 86 5C 2F 05 5F 53 42 5F 50 43 49  // .[".d.\/._SB_PCI
    0E27: 30 4C 50 43 42 45 43 30 5F 56 47 42 49 0A C2 86  // 0LPCBEC0_VGBI...
    0E37: 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45  // \/._SB_PCI0LPCBE
    0E47: 43 30 5F 56 47 42 49 0A C6 5B 22 0A 0A 86 5C 2F  // C0_VGBI..["...\/
    0E57: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    0E67: 5F 56 47 42 49 0A C3                             // _VGBI..

                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC7) // Hardware-Specific
                                        }

    0E6E: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0E7E: 45 43 30 5F 56 47 42 49 0A C7                    // EC0_VGBI..

                                        Else
                                        {

    0E88: A1 1B                                            // ..

                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC4) // Hardware-Specific
                                        }
                                    }

    0E8A: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0E9A: 45 43 30 5F 56 47 42 49 0A C4                    // EC0_VGBI..

                                    Else
                                    {

    0EA4: A1 1B                                            // ..

                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC4) // Hardware-Specific
                                    }
                                }

    0EA6: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0EB6: 45 43 30 5F 56 47 42 49 0A C4                    // EC0_VGBI..

                                ElseIf
    0EC0: A1 2E                                            // ..

 (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                                {
                                    \_SB.PCI0.GFX0.IUEH (0x02)
                                }

                                BIDG |= 0x04

    0EC2: A0 2C 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // .,[.\/._SB_PCI0G
    0ED2: 46 58 30 49 55 45 48 00 5C 2F 04 5F 53 42 5F 50  // FX0IUEH.\/._SB_P
    0EE2: 43 49 30 47 46 58 30 49 55 45 48 0A 02 7D 42 49  // CI0GFX0IUEH..}BI
    0EF2: 44 47 0A 04 42 49 44 47                          // DG..BIDG

                                If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.BUCG = One

    0EFA: A0 48 0B 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // .H.\/._SB_PCI0LP
    0F0A: 43 42 45 43 30 5F 56 47 42 49 47 50 42 54 00 70  // CBEC0_VGBIGPBT.p
    0F1A: 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0F2A: 45 43 30 5F 42 55 43 47                          // EC0_BUCG

                                    If ((
    0F32: A0 34 90 92                                      // .4..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                                    {
                                        Notify (\_SB.HIDD, 0xCF) // Hardware-Specific

    0F36: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    0F46: 49 44 44 42 54 4C 44 86 5C 2E 5F 53 42 5F 48 49  // IDDBTLD.\._SB_HI
    0F56: 44 44 0A CF                                      // DD..

                                        Notify (\_SB.HIDD, 0xC5) // Hardware-Specific
                                    }

    0F5A: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C5           // .\._SB_HIDD..

                                    ElseIf
    0F67: A1 3F                                            // .?

 ((PB1E & 0x20))
                                    {
                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific

    0F69: A0 3D 7B 50 42 31 45 0A 20 00 86 5C 2F 05 5F 53  // .={PB1E. ..\/._S
    0F79: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 56 47  // B_PCI0LPCBEC0_VG
    0F89: 42 49 0A C1                                      // BI..

                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC5) // Hardware-Specific
                                    }


    0F8D: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0F9D: 45 43 30 5F 56 47 42 49 0A C5                    // EC0_VGBI..

                                    BIDG |= 0x0100
                                }

    0FA7: 7D 42 49 44 47 0B 00 01 42 49 44 47              // }BIDG...BIDG

                                ElseIf
    0FB3: A1 38                                            // .8

 (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (One))
                                {

    0FB5: A0 36 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43  // .6\/._SB_PCI0LPC
    0FC5: 42 45 43 30 5F 56 47 42 49 47 50 42 54 01        // BEC0_VGBIGPBT.

                                    \_SB.PCI0.LPCB.EC0.BUCG = One
                                }
                            }
                        }
                    }


    0FD3: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    0FE3: 42 45 43 30 5F 42 55 43 47                       // BEC0_BUCG

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x03))
                    {

    0FEC: A0 4D 2F 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .M/\/._SB_PCI0LP
    0FFC: 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53 42  // CBEC0_GBNT\/._SB
    100C: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42 49  // _PCI0LPCBEC0_GBI
    101C: 53 0A 03                                         // S..

                        If (NAnd ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero) || \_SB.PCI0.LPCB.EC0.VGBI.GPBT (One)), \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x03)))
                        {

    101F: A0 4A 2C 7C 91 5C 2F 06 5F 53 42 5F 50 43 49 30  // .J,|.\/._SB_PCI0
    102F: 4C 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54  // LPCBEC0_VGBIGPBT
    103F: 00 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    104F: 45 43 30 5F 56 47 42 49 47 50 42 54 01 5C 2F 06  // EC0_VGBIGPBT.\/.
    105F: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F  // _SB_PCI0LPCBEC0_
    106F: 56 47 42 49 47 50 42 54 0A 03 00                 // VGBIGPBT...

                            If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                            {
                                \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x03, One)

    107A: A0 4F 26 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .O&.\/._SB_PCI0L
    108A: 50 43 42 45 43 30 5F 42 55 43 47 00 5C 2F 06 5F  // PCBEC0_BUCG.\/._
    109A: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 56  // SB_PCI0LPCBEC0_V
    10AA: 47 42 49 55 50 42 54 0A 03 01                    // GBIUPBT...

                                If ((
    10B4: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                                {

    10B8: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    10C8: 49 44 44 42 54 4C 44                             // IDDBTLD

                                    Notify (\_SB.HIDD, 0xC6) // Hardware-Specific
                                }

    10CF: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C6           // .\._SB_HIDD..

                                ElseIf
    10DC: A1 40 11                                         // .@.

 ((PB1E & 0x20))
                                {

    10DF: A0 4E 0D 7B 50 42 31 45 0A 20 00                 // .N.{PB1E. .

                                    If ((\GTOS () == 0x09))
                                    {

    10EA: A0 47 0B 93 5C 47 54 4F 53 0A 09                 // .G..\GTOS..

                                        If (BUCW)
                                        {
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                                            Sleep (0x64)
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC2) // Hardware-Specific
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC0) // Hardware-Specific
                                            Sleep (0x0A)
                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC3) // Hardware-Specific

    10F5: A0 40 09 42 55 43 57 86 5C 2F 05 5F 53 42 5F 50  // .@.BUCW.\/._SB_P
    1105: 43 49 30 4C 50 43 42 45 43 30 5F 56 47 42 49 0A  // CI0LPCBEC0_VGBI.
    1115: C1 5B 22 0A 64 86 5C 2F 05 5F 53 42 5F 50 43 49  // .[".d.\/._SB_PCI
    1125: 30 4C 50 43 42 45 43 30 5F 56 47 42 49 0A C2 86  // 0LPCBEC0_VGBI...
    1135: 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45  // \/._SB_PCI0LPCBE
    1145: 43 30 5F 56 47 42 49 0A C0 5B 22 0A 0A 86 5C 2F  // C0_VGBI..["...\/
    1155: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    1165: 5F 56 47 42 49 0A C3                             // _VGBI..

                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific
                                        }

    116C: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    117C: 45 43 30 5F 56 47 42 49 0A C1                    // EC0_VGBI..

                                        Else
                                        {

    1186: A1 1B                                            // ..

                                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC6) // Hardware-Specific
                                        }
                                    }

    1188: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    1198: 45 43 30 5F 56 47 42 49 0A C6                    // EC0_VGBI..

                                    Else
                                    {

    11A2: A1 1B                                            // ..

                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC6) // Hardware-Specific
                                    }
                                }

    11A4: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    11B4: 45 43 30 5F 56 47 42 49 0A C6                    // EC0_VGBI..

                                ElseIf
    11BE: A1 2E                                            // ..

 (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                                {
                                    \_SB.PCI0.GFX0.IUEH (0x03)
                                }

                                BIDG |= 0x08

    11C0: A0 2C 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // .,[.\/._SB_PCI0G
    11D0: 46 58 30 49 55 45 48 00 5C 2F 04 5F 53 42 5F 50  // FX0IUEH.\/._SB_P
    11E0: 43 49 30 47 46 58 30 49 55 45 48 0A 03 7D 42 49  // CI0GFX0IUEH..}BI
    11F0: 44 47 0A 08 42 49 44 47                          // DG..BIDG

                                If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.BUCG = One

    11F8: A0 48 0B 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // .H.\/._SB_PCI0LP
    1208: 43 42 45 43 30 5F 56 47 42 49 47 50 42 54 00 70  // CBEC0_VGBIGPBT.p
    1218: 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    1228: 45 43 30 5F 42 55 43 47                          // EC0_BUCG

                                    If ((
    1230: A0 34 90 92                                      // .4..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                                    {
                                        Notify (\_SB.HIDD, 0xCF) // Hardware-Specific

    1234: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    1244: 49 44 44 42 54 4C 44 86 5C 2E 5F 53 42 5F 48 49  // IDDBTLD.\._SB_HI
    1254: 44 44 0A CF                                      // DD..

                                        Notify (\_SB.HIDD, 0xC7) // Hardware-Specific
                                    }

    1258: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C7           // .\._SB_HIDD..

                                    ElseIf
    1265: A1 3F                                            // .?

 ((PB1E & 0x20))
                                    {
                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC1) // Hardware-Specific

    1267: A0 3D 7B 50 42 31 45 0A 20 00 86 5C 2F 05 5F 53  // .={PB1E. ..\/._S
    1277: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 56 47  // B_PCI0LPCBEC0_VG
    1287: 42 49 0A C1                                      // BI..

                                        Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC7) // Hardware-Specific
                                    }


    128B: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    129B: 45 43 30 5F 56 47 42 49 0A C7                    // EC0_VGBI..

                                    BIDG |= 0x0200
                                }

    12A5: 7D 42 49 44 47 0B 00 02 42 49 44 47              // }BIDG...BIDG

                                ElseIf
    12B1: A1 38                                            // .8

 (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (One))
                                {

    12B3: A0 36 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43  // .6\/._SB_PCI0LPC
    12C3: 42 45 43 30 5F 56 47 42 49 47 50 42 54 01        // BEC0_VGBIGPBT.

                                    \_SB.PCI0.LPCB.EC0.BUCG = One
                                }
                            }
                        }
                    }


    12D1: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    12E1: 42 45 43 30 5F 42 55 43 47                       // BEC0_BUCG

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x04))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x04, One)

    12EA: A0 49 0D 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .I.\/._SB_PCI0LP
    12FA: 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53 42  // CBEC0_GBNT\/._SB
    130A: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42 49  // _PCI0LPCBEC0_GBI
    131A: 53 0A 04 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // S..\/._SB_PCI0LP
    132A: 43 42 45 43 30 5F 56 47 42 49 55 50 42 54 0A 04  // CBEC0_VGBIUPBT..
    133A: 01                                               // .

                        If ((
    133B: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                        {

    133F: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    134F: 49 44 44 42 54 4C 44                             // IDDBTLD

                            Notify (\_SB.HIDD, 0xC8) // Hardware-Specific
                        }

    1356: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C8           // .\._SB_HIDD..

                        ElseIf
    1363: A1 45 05                                         // .E.

 ((PB1E & 0x20))
                        {

    1366: A0 23 7B 50 42 31 45 0A 20 00                    // .#{PB1E. .

                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC8) // Hardware-Specific
                        }

    1370: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    1380: 45 43 30 5F 56 47 42 49 0A C8                    // EC0_VGBI..

                        ElseIf
    138A: A1 2E                                            // ..

 (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                        {
                            \_SB.PCI0.GFX0.IUEH (0x04)
                        }


    138C: A0 2C 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // .,[.\/._SB_PCI0G
    139C: 46 58 30 49 55 45 48 00 5C 2F 04 5F 53 42 5F 50  // FX0IUEH.\/._SB_P
    13AC: 43 49 30 47 46 58 30 49 55 45 48 0A 04           // CI0GFX0IUEH..

                        BIDG |= 0x10
                    }


    13B9: 7D 42 49 44 47 0A 10 42 49 44 47                 // }BIDG..BIDG

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x06))
                    {

    13C4: A0 41 1B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .A.\/._SB_PCI0LP
    13D4: 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53 42  // CBEC0_GBNT\/._SB
    13E4: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42 49  // _PCI0LPCBEC0_GBI
    13F4: 53 0A 06                                         // S..

                        If (
    13F7: A0 4E 0A 92                                      // .N..

(\GTOS () >= 0x09))
                        {

    13FB: 95 5C 47 54 4F 53 0A 09                          // .\GTOS..

                            If ((PB1E & 0x20))
                            {

    1403: A0 42 0A 7B 50 42 31 45 0A 20 00                 // .B.{PB1E. .

                                If ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x06) == Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, One)
                                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xCD) // Hardware-Specific
                                    BIDG |= 0x20

    140E: A0 47 09 93 5C 2F 06 5F 53 42 5F 50 43 49 30 4C  // .G..\/._SB_PCI0L
    141E: 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54 0A  // PCBEC0_VGBIGPBT.
    142E: 06 00 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43  // ..\/._SB_PCI0LPC
    143E: 42 45 43 30 5F 56 47 42 49 55 50 42 54 0A 06 01  // BEC0_VGBIUPBT...
    144E: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    145E: 45 43 30 5F 56 47 42 49 0A CD 7D 42 49 44 47 0A  // EC0_VGBI..}BIDG.
    146E: 20 42 49 44 47                                   //  BIDG

                                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.UDTS))
                                    {
                                        \_SB.PCI0.LPCB.EC0.UDTS ()
                                    }
                                }
                            }
                        }

    1473: A0 32 5B 12 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .2[.\/._SB_PCI0L
    1483: 50 43 42 45 43 30 5F 55 44 54 53 00 5C 2F 05 5F  // PCBEC0_UDTS.\/._
    1493: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 55  // SB_PCI0LPCBEC0_U
    14A3: 44 54 53                                         // DTS

                        ElseIf
    14A6: A1 4F 0C                                         // .O.

 ((\GTOS () == 0x08))
                        {

    14A9: A0 48 07 93 5C 47 54 4F 53 0A 08                 // .H..\GTOS..

                            If (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                            {

    14B4: A0 4D 06 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30  // .M.[.\/._SB_PCI0
    14C4: 47 46 58 30 49 55 45 48 00                       // GFX0IUEH.

                                If ((\_SB.PCI0.LPCB.EC0.COVS == Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.COVS = One
                                    \_SB.PCI0.GFX0.IUEH (0x06)

    14CD: A0 44 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .D..\/._SB_PCI0L
    14DD: 50 43 42 45 43 30 5F 43 4F 56 53 00 70 01 5C 2F  // PCBEC0_COVS.p.\/
    14ED: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    14FD: 5F 43 4F 56 53 5C 2F 04 5F 53 42 5F 50 43 49 30  // _COVS\/._SB_PCI0
    150D: 47 46 58 30 49 55 45 48 0A 06                    // GFX0IUEH..

                                    BIDG |= 0x20
                                }
                            }
                        }

    1517: 7D 42 49 44 47 0A 20 42 49 44 47                 // }BIDG. BIDG

                        ElseIf
    1522: A1 43 05                                         // .C.

 ((\_SB.PCI0.LPCB.EC0.COVS == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.COVS = One
                            \_SB.WMIV.GVWE (One, Zero)

    1525: A0 40 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .@..\/._SB_PCI0L
    1535: 50 43 42 45 43 30 5F 43 4F 56 53 00 70 01 5C 2F  // PCBEC0_COVS.p.\/
    1545: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    1555: 5F 43 4F 56 53 5C 2F 03 5F 53 42 5F 57 4D 49 56  // _COVS\/._SB_WMIV
    1565: 47 56 57 45 01 00                                // GVWE..

                            BIDG |= 0x20
                        }
                    }


    156B: 7D 42 49 44 47 0A 20 42 49 44 47                 // }BIDG. BIDG

                    If (\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x07))
                    {

    1576: A0 4E 17 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .N.\/._SB_PCI0LP
    1586: 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53 42  // CBEC0_GBNT\/._SB
    1596: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42 49  // _PCI0LPCBEC0_GBI
    15A6: 53 0A 07                                         // S..

                        If (
    15A9: A0 4B 07 92                                      // .K..

(\GTOS () >= 0x09))
                        {

    15AD: 95 5C 47 54 4F 53 0A 09                          // .\GTOS..

                            If ((PB1E & 0x20))
                            {

    15B5: A0 4F 06 7B 50 42 31 45 0A 20 00                 // .O.{PB1E. .

                                If ((\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x07) == Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, One)
                                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xCA) // Hardware-Specific

    15C0: A0 44 06 93 5C 2F 06 5F 53 42 5F 50 43 49 30 4C  // .D..\/._SB_PCI0L
    15D0: 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54 0A  // PCBEC0_VGBIGPBT.
    15E0: 07 00 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43  // ..\/._SB_PCI0LPC
    15F0: 42 45 43 30 5F 56 47 42 49 55 50 42 54 0A 07 01  // BEC0_VGBIUPBT...
    1600: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    1610: 45 43 30 5F 56 47 42 49 0A CA                    // EC0_VGBI..

                                    BIDG |= 0x40
                                }
                            }
                        }

    161A: 7D 42 49 44 47 0A 40 42 49 44 47                 // }BIDG.@BIDG

                        ElseIf
    1625: A1 4F 0C                                         // .O.

 ((\GTOS () == 0x08))
                        {

    1628: A0 48 07 93 5C 47 54 4F 53 0A 08                 // .H..\GTOS..

                            If (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                            {

    1633: A0 4D 06 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30  // .M.[.\/._SB_PCI0
    1643: 47 46 58 30 49 55 45 48 00                       // GFX0IUEH.

                                If ((\_SB.PCI0.LPCB.EC0.DOKS == Zero))
                                {
                                    \_SB.PCI0.LPCB.EC0.DOKS = One
                                    \_SB.PCI0.GFX0.IUEH (0x07)

    164C: A0 44 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .D..\/._SB_PCI0L
    165C: 50 43 42 45 43 30 5F 44 4F 4B 53 00 70 01 5C 2F  // PCBEC0_DOKS.p.\/
    166C: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    167C: 5F 44 4F 4B 53 5C 2F 04 5F 53 42 5F 50 43 49 30  // _DOKS\/._SB_PCI0
    168C: 47 46 58 30 49 55 45 48 0A 07                    // GFX0IUEH..

                                    BIDG |= 0x40
                                }
                            }
                        }

    1696: 7D 42 49 44 47 0A 40 42 49 44 47                 // }BIDG.@BIDG

                        ElseIf
    16A1: A1 43 05                                         // .C.

 ((\_SB.PCI0.LPCB.EC0.DOKS == Zero))
                        {
                            \_SB.PCI0.LPCB.EC0.DOKS = One
                            \_SB.WMIV.GVWE (One, Zero)

    16A4: A0 40 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .@..\/._SB_PCI0L
    16B4: 50 43 42 45 43 30 5F 44 4F 4B 53 00 70 01 5C 2F  // PCBEC0_DOKS.p.\/
    16C4: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    16D4: 5F 44 4F 4B 53 5C 2F 03 5F 53 42 5F 57 4D 49 56  // _DOKS\/._SB_WMIV
    16E4: 47 56 57 45 01 00                                // GVWE..

                            BIDG |= 0x40
                        }
                    }
                }
            }


    16EA: 7D 42 49 44 47 0A 40 42 49 44 47                 // }BIDG.@BIDG

            Method (_Q31, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                BID2 = 0x31000000

    16F5: 14 4D 85 5F 51 33 31 08 70 0C 00 00 00 31 42 49  // .M._Q31.p....1BI
    1705: 44 32                                            // D2

                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.GBIS = \_SB.PCI0.LPCB.EC0.VBPS /* External reference */
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)

    1707: A0 4B 84 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .K.\/._SB_PCI0LP
    1717: 43 42 45 43 30 5F 45 43 52 47 5B 23 5C 2F 05 5F  // CBEC0_ECRG[#\/._
    1727: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45  // SB_PCI0LPCBEC0_E
    1737: 43 4D 58 FF FF 70 5C 2F 05 5F 53 42 5F 50 43 49  // CMX..p\/._SB_PCI
    1747: 30 4C 50 43 42 45 43 30 5F 56 42 50 53 5C 2F 05  // 0LPCBEC0_VBPS\/.
    1757: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F  // _SB_PCI0LPCBEC0_
    1767: 47 42 49 53 5B 27 5C 2F 05 5F 53 42 5F 50 43 49  // GBIS['\/._SB_PCI
    1777: 30 4C 50 43 42 45 43 30 5F 45 43 4D 58           // 0LPCBEC0_ECMX

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, Zero) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (Zero)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (Zero, Zero)

    1784: A0 4C 09 90 93 5C 2F 05 5F 53 42 5F 50 43 49 30  // .L...\/._SB_PCI0
    1794: 4C 50 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F  // LPCBEC0_GBNT\/._
    17A4: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47  // SB_PCI0LPCBEC0_G
    17B4: 42 49 53 00 00 5C 2F 06 5F 53 42 5F 50 43 49 30  // BIS..\/._SB_PCI0
    17C4: 4C 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54  // LPCBEC0_VGBIGPBT
    17D4: 00 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    17E4: 45 43 30 5F 56 47 42 49 55 50 42 54 00 00        // EC0_VGBIUPBT..

                        If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                        {
                            \_SB.PWRR ()
                        }


    17F2: A0 24 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .$.\/._SB_PCI0LP
    1802: 43 42 45 43 30 5F 42 55 43 47 00 5C 2E 5F 53 42  // CBEC0_BUCG.\._SB
    1812: 5F 50 57 52 52                                   // _PWRR

                        BID2 |= One
                    }


    1817: 7D 42 49 44 32 01 42 49 44 32                    // }BID2.BID2

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, One) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (One)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (One, Zero)

    1821: A0 46 0C 90 93 5C 2F 05 5F 53 42 5F 50 43 49 30  // .F...\/._SB_PCI0
    1831: 4C 50 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F  // LPCBEC0_GBNT\/._
    1841: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47  // SB_PCI0LPCBEC0_G
    1851: 42 49 53 01 00 5C 2F 06 5F 53 42 5F 50 43 49 30  // BIS..\/._SB_PCI0
    1861: 4C 50 43 42 45 43 30 5F 56 47 42 49 47 50 42 54  // LPCBEC0_VGBIGPBT
    1871: 01 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    1881: 45 43 30 5F 56 47 42 49 55 50 42 54 01 00        // EC0_VGBIUPBT..

                        If ((
    188F: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                        {

    1893: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    18A3: 49 44 44 42 54 4C 44                             // IDDBTLD

                            Notify (\_SB.HIDD, 0xC3) // Hardware-Specific
                        }

    18AA: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C3           // .\._SB_HIDD..

                        ElseIf
    18B7: A1 25                                            // .%

 ((PB1E & 0x20))
                        {

    18B9: A0 23 7B 50 42 31 45 0A 20 00                    // .#{PB1E. .

                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC3) // Hardware-Specific
                        }


    18C3: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    18D3: 45 43 30 5F 56 47 42 49 0A C3                    // EC0_VGBI..

                        BID2 |= 0x02
                    }


    18DD: 7D 42 49 44 32 0A 02 42 49 44 32                 // }BID2..BID2

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x02) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x02)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x02, Zero)

    18E8: A0 45 0E 90 93 5C 2F 05 5F 53 42 5F 50 43 49 30  // .E...\/._SB_PCI0
    18F8: 4C 50 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F  // LPCBEC0_GBNT\/._
    1908: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47  // SB_PCI0LPCBEC0_G
    1918: 42 49 53 0A 02 00 5C 2F 06 5F 53 42 5F 50 43 49  // BIS...\/._SB_PCI
    1928: 30 4C 50 43 42 45 43 30 5F 56 47 42 49 47 50 42  // 0LPCBEC0_VGBIGPB
    1938: 54 0A 02 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // T..\/._SB_PCI0LP
    1948: 43 42 45 43 30 5F 56 47 42 49 55 50 42 54 0A 02  // CBEC0_VGBIUPBT..
    1958: 00                                               // .

                        If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                        {

    1959: A0 44 07 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .D..\/._SB_PCI0L
    1969: 50 43 42 45 43 30 5F 42 55 43 47 00              // PCBEC0_BUCG.

                            If ((
    1975: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                            {

    1979: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    1989: 49 44 44 42 54 4C 44                             // IDDBTLD

                                Notify (\_SB.HIDD, 0xC5) // Hardware-Specific
                            }

    1990: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C5           // .\._SB_HIDD..

                            ElseIf
    199D: A1 25                                            // .%

 ((PB1E & 0x20))
                            {

    199F: A0 23 7B 50 42 31 45 0A 20 00                    // .#{PB1E. .

                                Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC5) // Hardware-Specific
                            }


    19A9: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    19B9: 45 43 30 5F 56 47 42 49 0A C5                    // EC0_VGBI..

                            BID2 |= 0x04
                        }
                    }


    19C3: 7D 42 49 44 32 0A 04 42 49 44 32                 // }BID2..BID2

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x03) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x03)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x03, Zero)

    19CE: A0 45 0E 90 93 5C 2F 05 5F 53 42 5F 50 43 49 30  // .E...\/._SB_PCI0
    19DE: 4C 50 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F  // LPCBEC0_GBNT\/._
    19EE: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47  // SB_PCI0LPCBEC0_G
    19FE: 42 49 53 0A 03 00 5C 2F 06 5F 53 42 5F 50 43 49  // BIS...\/._SB_PCI
    1A0E: 30 4C 50 43 42 45 43 30 5F 56 47 42 49 47 50 42  // 0LPCBEC0_VGBIGPB
    1A1E: 54 0A 03 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // T..\/._SB_PCI0LP
    1A2E: 43 42 45 43 30 5F 56 47 42 49 55 50 42 54 0A 03  // CBEC0_VGBIUPBT..
    1A3E: 00                                               // .

                        If ((\_SB.PCI0.LPCB.EC0.BUCG == Zero))
                        {

    1A3F: A0 44 07 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .D..\/._SB_PCI0L
    1A4F: 50 43 42 45 43 30 5F 42 55 43 47 00              // PCBEC0_BUCG.

                            If ((
    1A5B: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                            {

    1A5F: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    1A6F: 49 44 44 42 54 4C 44                             // IDDBTLD

                                Notify (\_SB.HIDD, 0xC7) // Hardware-Specific
                            }

    1A76: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C7           // .\._SB_HIDD..

                            ElseIf
    1A83: A1 25                                            // .%

 ((PB1E & 0x20))
                            {

    1A85: A0 23 7B 50 42 31 45 0A 20 00                    // .#{PB1E. .

                                Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC7) // Hardware-Specific
                            }


    1A8F: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    1A9F: 45 43 30 5F 56 47 42 49 0A C7                    // EC0_VGBI..

                            BID2 |= 0x08
                        }
                    }


    1AA9: 7D 42 49 44 32 0A 08 42 49 44 32                 // }BID2..BID2

                    If (((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x04) == Zero) && \_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x04)))
                    {
                        \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x04, Zero)

    1AB4: A0 49 0C 90 93 5C 2F 05 5F 53 42 5F 50 43 49 30  // .I...\/._SB_PCI0
    1AC4: 4C 50 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F  // LPCBEC0_GBNT\/._
    1AD4: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47  // SB_PCI0LPCBEC0_G
    1AE4: 42 49 53 0A 04 00 5C 2F 06 5F 53 42 5F 50 43 49  // BIS...\/._SB_PCI
    1AF4: 30 4C 50 43 42 45 43 30 5F 56 47 42 49 47 50 42  // 0LPCBEC0_VGBIGPB
    1B04: 54 0A 04 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // T..\/._SB_PCI0LP
    1B14: 43 42 45 43 30 5F 56 47 42 49 55 50 42 54 0A 04  // CBEC0_VGBIUPBT..
    1B24: 00                                               // .

                        If ((
    1B25: A0 27 90 92                                      // .'..

(OSYS >= 0x07DF) && \_SB.HIDD.BTLD))
                        {

    1B29: 95 4F 53 59 53 0B DF 07 5C 2F 03 5F 53 42 5F 48  // .OSYS...\/._SB_H
    1B39: 49 44 44 42 54 4C 44                             // IDDBTLD

                            Notify (\_SB.HIDD, 0xC9) // Hardware-Specific
                        }

    1B40: 86 5C 2E 5F 53 42 5F 48 49 44 44 0A C9           // .\._SB_HIDD..

                        ElseIf
    1B4D: A1 25                                            // .%

 ((PB1E & 0x20))
                        {

    1B4F: A0 23 7B 50 42 31 45 0A 20 00                    // .#{PB1E. .

                            Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xC9) // Hardware-Specific
                        }


    1B59: 86 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    1B69: 45 43 30 5F 56 47 42 49 0A C9                    // EC0_VGBI..

                        BID2 |= 0x10
                    }


    1B73: 7D 42 49 44 32 0A 10 42 49 44 32                 // }BID2..BID2

                    If ((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x06) == Zero))
                    {

    1B7E: A0 41 1B 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .A..\/._SB_PCI0L
    1B8E: 50 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53  // PCBEC0_GBNT\/._S
    1B9E: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42  // B_PCI0LPCBEC0_GB
    1BAE: 49 53 0A 06 00                                   // IS...

                        If (
    1BB3: A0 4C 0A 92                                      // .L..

(\GTOS () >= 0x09))
                        {

    1BB7: 95 5C 47 54 4F 53 0A 09                          // .\GTOS..

                            If ((PB1E & 0x20))
                            {

    1BBF: A0 40 0A 7B 50 42 31 45 0A 20 00                 // .@.{PB1E. .

                                If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x06))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, Zero)
                                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xCC) // Hardware-Specific

    1BCA: A0 45 09 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // .E.\/._SB_PCI0LP
    1BDA: 43 42 45 43 30 5F 56 47 42 49 47 50 42 54 0A 06  // CBEC0_VGBIGPBT..
    1BEA: 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42 45  // \/._SB_PCI0LPCBE
    1BFA: 43 30 5F 56 47 42 49 55 50 42 54 0A 06 00 86 5C  // C0_VGBIUPBT....\
    1C0A: 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43  // /._SB_PCI0LPCBEC
    1C1A: 30 5F 56 47 42 49 0A CC                          // 0_VGBI..

                                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.UDTS))
                                    {
                                        \_SB.PCI0.LPCB.EC0.UDTS ()
                                    }


    1C22: A0 32 5B 12 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .2[.\/._SB_PCI0L
    1C32: 50 43 42 45 43 30 5F 55 44 54 53 00 5C 2F 05 5F  // PCBEC0_UDTS.\/._
    1C42: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 55  // SB_PCI0LPCBEC0_U
    1C52: 44 54 53                                         // DTS

                                    BID2 |= 0x20
                                }
                            }
                        }

    1C55: 7D 42 49 44 32 0A 20 42 49 44 32                 // }BID2. BID2

                        ElseIf
    1C60: A1 4F 0C                                         // .O.

 ((\GTOS () == 0x08))
                        {

    1C63: A0 48 07 93 5C 47 54 4F 53 0A 08                 // .H..\GTOS..

                            If (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                            {

    1C6E: A0 4D 06 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30  // .M.[.\/._SB_PCI0
    1C7E: 47 46 58 30 49 55 45 48 00                       // GFX0IUEH.

                                If ((\_SB.PCI0.LPCB.EC0.COVS == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.COVS = Zero
                                    \_SB.PCI0.GFX0.IUEH (0x06)

    1C87: A0 44 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .D..\/._SB_PCI0L
    1C97: 50 43 42 45 43 30 5F 43 4F 56 53 01 70 00 5C 2F  // PCBEC0_COVS.p.\/
    1CA7: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    1CB7: 5F 43 4F 56 53 5C 2F 04 5F 53 42 5F 50 43 49 30  // _COVS\/._SB_PCI0
    1CC7: 47 46 58 30 49 55 45 48 0A 06                    // GFX0IUEH..

                                    BID2 |= 0x20
                                }
                            }
                        }

    1CD1: 7D 42 49 44 32 0A 20 42 49 44 32                 // }BID2. BID2

                        ElseIf
    1CDC: A1 43 05                                         // .C.

 ((\_SB.PCI0.LPCB.EC0.COVS == One))
                        {
                            \_SB.PCI0.LPCB.EC0.COVS = Zero
                            \_SB.WMIV.GVWE (One, Zero)

    1CDF: A0 40 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .@..\/._SB_PCI0L
    1CEF: 50 43 42 45 43 30 5F 43 4F 56 53 01 70 00 5C 2F  // PCBEC0_COVS.p.\/
    1CFF: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    1D0F: 5F 43 4F 56 53 5C 2F 03 5F 53 42 5F 57 4D 49 56  // _COVS\/._SB_WMIV
    1D1F: 47 56 57 45 01 00                                // GVWE..

                            BID2 |= 0x20
                        }
                    }


    1D25: 7D 42 49 44 32 0A 20 42 49 44 32                 // }BID2. BID2

                    If ((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x07) == Zero))
                    {

    1D30: A0 4E 17 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .N..\/._SB_PCI0L
    1D40: 50 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53  // PCBEC0_GBNT\/._S
    1D50: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42  // B_PCI0LPCBEC0_GB
    1D60: 49 53 0A 07 00                                   // IS...

                        If (
    1D65: A0 49 07 92                                      // .I..

(\GTOS () >= 0x09))
                        {

    1D69: 95 5C 47 54 4F 53 0A 09                          // .\GTOS..

                            If ((PB1E & 0x20))
                            {

    1D71: A0 4D 06 7B 50 42 31 45 0A 20 00                 // .M.{PB1E. .

                                If (\_SB.PCI0.LPCB.EC0.VGBI.GPBT (0x07))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, Zero)
                                    Notify (\_SB.PCI0.LPCB.EC0.VGBI, 0xCB) // Hardware-Specific

    1D7C: A0 42 06 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // .B.\/._SB_PCI0LP
    1D8C: 43 42 45 43 30 5F 56 47 42 49 47 50 42 54 0A 07  // CBEC0_VGBIGPBT..
    1D9C: 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43 42 45  // \/._SB_PCI0LPCBE
    1DAC: 43 30 5F 56 47 42 49 55 50 42 54 0A 07 00 86 5C  // C0_VGBIUPBT....\
    1DBC: 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43  // /._SB_PCI0LPCBEC
    1DCC: 30 5F 56 47 42 49 0A CB                          // 0_VGBI..

                                    BID2 |= 0x40
                                }
                            }
                        }

    1DD4: 7D 42 49 44 32 0A 40 42 49 44 32                 // }BID2.@BID2

                        ElseIf
    1DDF: A1 4F 0C                                         // .O.

 ((\GTOS () == 0x08))
                        {

    1DE2: A0 48 07 93 5C 47 54 4F 53 0A 08                 // .H..\GTOS..

                            If (CondRefOf (\_SB.PCI0.GFX0.IUEH))
                            {

    1DED: A0 4D 06 5B 12 5C 2F 04 5F 53 42 5F 50 43 49 30  // .M.[.\/._SB_PCI0
    1DFD: 47 46 58 30 49 55 45 48 00                       // GFX0IUEH.

                                If ((\_SB.PCI0.LPCB.EC0.DOKS == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.DOKS = Zero
                                    \_SB.PCI0.GFX0.IUEH (0x07)

    1E06: A0 44 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .D..\/._SB_PCI0L
    1E16: 50 43 42 45 43 30 5F 44 4F 4B 53 01 70 00 5C 2F  // PCBEC0_DOKS.p.\/
    1E26: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    1E36: 5F 44 4F 4B 53 5C 2F 04 5F 53 42 5F 50 43 49 30  // _DOKS\/._SB_PCI0
    1E46: 47 46 58 30 49 55 45 48 0A 07                    // GFX0IUEH..

                                    BID2 |= 0x40
                                }
                            }
                        }

    1E50: 7D 42 49 44 32 0A 40 42 49 44 32                 // }BID2.@BID2

                        ElseIf
    1E5B: A1 43 05                                         // .C.

 ((\_SB.PCI0.LPCB.EC0.DOKS == One))
                        {
                            \_SB.PCI0.LPCB.EC0.DOKS = Zero
                            \_SB.WMIV.GVWE (One, Zero)

    1E5E: A0 40 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .@..\/._SB_PCI0L
    1E6E: 50 43 42 45 43 30 5F 44 4F 4B 53 01 70 00 5C 2F  // PCBEC0_DOKS.p.\/
    1E7E: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    1E8E: 5F 44 4F 4B 53 5C 2F 03 5F 53 42 5F 57 4D 49 56  // _DOKS\/._SB_WMIV
    1E9E: 47 56 57 45 01 00                                // GVWE..

                            BID2 |= 0x40
                        }
                    }


    1EA4: 7D 42 49 44 32 0A 40 42 49 44 32                 // }BID2.@BID2

                    If (\_SB.PCI0.LPCB.EC0.BUCG)
                    {

    1EAF: A0 41 05 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .A.\/._SB_PCI0LP
    1EBF: 43 42 45 43 30 5F 42 55 43 47                    // CBEC0_BUCG

                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x0F) == Zero))
                        {

    1EC9: A0 37 93 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .7.{\/._SB_PCI0L
    1ED9: 50 43 42 45 43 30 5F 47 42 49 53 0A 0F 00 00     // PCBEC0_GBIS....

                            \_SB.PCI0.LPCB.EC0.BUCG = Zero
                        }
                    }


    1EE8: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    1EF8: 42 45 43 30 5F 42 55 43 47                       // BEC0_BUCG

                    If (\_SB.PCI0.LPCB.EC0.BUCW)
                    {

    1F01: A0 41 05 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .A.\/._SB_PCI0LP
    1F11: 43 42 45 43 30 5F 42 55 43 57                    // CBEC0_BUCW

                        If (((\_SB.PCI0.LPCB.EC0.GBIS & 0x0F) == Zero))
                        {

    1F1B: A0 37 93 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .7.{\/._SB_PCI0L
    1F2B: 50 43 42 45 43 30 5F 47 42 49 53 0A 0F 00 00     // PCBEC0_GBIS....

                            \_SB.PCI0.LPCB.EC0.BUCW = Zero
                        }
                    }
                }
            }
        }


    1F3A: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    1F4A: 42 45 43 30 5F 42 55 43 57                       // BEC0_BUCW

        Scope (\_SB)
        {

    1F53: 10 42 50 5C 5F 53 42 5F                          // .BP\_SB_

            Method (TEPC, 1, Serialized)
            {

    1F5B: 14 44 07 54 45 50 43 09                          // .D.TEPC.

                If ((Arg0 > Zero))
                {

    1F63: A0 4C 06 94 68 00                                // .L..h.

                    If (\_SB.PCI0.LPCB.EC0.ECRG)
                    {
                        Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                        \_SB.PCI0.LPCB.EC0.PTEN = Zero

    1F69: A0 46 06 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .F.\/._SB_PCI0LP
    1F79: 43 42 45 43 30 5F 45 43 52 47 5B 23 5C 2F 05 5F  // CBEC0_ECRG[#\/._
    1F89: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45  // SB_PCI0LPCBEC0_E
    1F99: 43 4D 58 FF FF 70 00 5C 2F 05 5F 53 42 5F 50 43  // CMX..p.\/._SB_PC
    1FA9: 49 30 4C 50 43 42 45 43 30 5F 50 54 45 4E        // I0LPCBEC0_PTEN

                        Release (\_SB.PCI0.LPCB.EC0.ECMX)
                    }
                }
            }


    1FB7: 5B 27 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // ['\/._SB_PCI0LPC
    1FC7: 42 45 43 30 5F 45 43 4D 58                       // BEC0_ECMX

            Method (TEWC, 1, Serialized)
            {

    1FD0: 14 45 48 54 45 57 43 09                          // .EHTEWC.

                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)

    1FD8: A0 4C 08 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .L.\/._SB_PCI0LP
    1FE8: 43 42 45 43 30 5F 45 43 52 47 5B 23 5C 2F 05 5F  // CBEC0_ECRG[#\/._
    1FF8: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45  // SB_PCI0LPCBEC0_E
    2008: 43 4D 58 FF FF                                   // CMX..

                    If (((PB1E & One) == One))
                    {

    200D: A0 23 93 7B 50 42 31 45 01 00 01                 // .#.{PB1E...

                        \_SB.PCI0.LPCB.EC0.PTEN = One
                    }

    2018: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    2028: 42 45 43 30 5F 50 54 45 4E                       // BEC0_PTEN

                    Else
                    {

    2031: A1 1A                                            // ..

                        \_SB.PCI0.LPCB.EC0.PTEN = Zero
                    }


    2033: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    2043: 42 45 43 30 5F 50 54 45 4E                       // BEC0_PTEN

                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }


    204C: 5B 27 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // ['\/._SB_PCI0LPC
    205C: 42 45 43 30 5F 45 43 4D 58                       // BEC0_ECMX

                If (((Arg0 == 0x03) || 
    2065: A0 40 3F 91 93 68 0A 03                          // .@?..h..

(Arg0 == 0x04)))
                {

    206D: 93 68 0A 04                                      // .h..

                    If (\_SB.PCI0.LPCB.EC0.ECRG)
                    {
                        Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                        \_SB.PCI0.LPCB.EC0.GBIS = \_SB.PCI0.LPCB.EC0.VBPS /* External reference */
                        Release (\_SB.PCI0.LPCB.EC0.ECMX)

    2071: A0 47 3A 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .G:\/._SB_PCI0LP
    2081: 43 42 45 43 30 5F 45 43 52 47 5B 23 5C 2F 05 5F  // CBEC0_ECRG[#\/._
    2091: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45  // SB_PCI0LPCBEC0_E
    20A1: 43 4D 58 FF FF 70 5C 2F 05 5F 53 42 5F 50 43 49  // CMX..p\/._SB_PCI
    20B1: 30 4C 50 43 42 45 43 30 5F 56 42 50 53 5C 2F 05  // 0LPCBEC0_VBPS\/.
    20C1: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F  // _SB_PCI0LPCBEC0_
    20D1: 47 42 49 53 5B 27 5C 2F 05 5F 53 42 5F 50 43 49  // GBIS['\/._SB_PCI
    20E1: 30 4C 50 43 42 45 43 30 5F 45 43 4D 58           // 0LPCBEC0_ECMX

                        If (
    20EE: A0 4D 18 92                                      // .M..

(\GTOS () >= 0x08))
                        {

    20F2: 95 5C 47 54 4F 53 0A 08                          // .\GTOS..

                            If (CondRefOf (\_SB.PCI0.LPCB.EC0.VGBI))
                            {

    20FA: A0 4F 0D 5B 12 5C 2F 05 5F 53 42 5F 50 43 49 30  // .O.[.\/._SB_PCI0
    210A: 4C 50 43 42 45 43 30 5F 56 47 42 49 00           // LPCBEC0_VGBI.

                                If ((\_SB.PCI0.LPCB.EC0.GBIS & 0x40))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, One)

    2117: A0 4E 06 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .N.{\/._SB_PCI0L
    2127: 50 43 42 45 43 30 5F 47 42 49 53 0A 40 00 5C 2F  // PCBEC0_GBIS.@.\/
    2137: 06 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    2147: 5F 56 47 42 49 55 50 42 54 0A 06 01              // _VGBIUPBT...

                                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.UDTS))
                                    {
                                        \_SB.PCI0.LPCB.EC0.UDTS ()
                                    }
                                }

    2153: A0 32 5B 12 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .2[.\/._SB_PCI0L
    2163: 50 43 42 45 43 30 5F 55 44 54 53 00 5C 2F 05 5F  // PCBEC0_UDTS.\/._
    2173: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 55  // SB_PCI0LPCBEC0_U
    2183: 44 54 53                                         // DTS

                                Else
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x06, Zero)

    2186: A1 43 05 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50  // .C.\/._SB_PCI0LP
    2196: 43 42 45 43 30 5F 56 47 42 49 55 50 42 54 0A 06  // CBEC0_VGBIUPBT..
    21A6: 00                                               // .

                                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.UDTS))
                                    {
                                        \_SB.PCI0.LPCB.EC0.UDTS ()
                                    }
                                }
                            }


    21A7: A0 32 5B 12 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .2[.\/._SB_PCI0L
    21B7: 50 43 42 45 43 30 5F 55 44 54 53 00 5C 2F 05 5F  // PCBEC0_UDTS.\/._
    21C7: 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 55  // SB_PCI0LPCBEC0_U
    21D7: 44 54 53                                         // DTS

                            If ((\_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x06) == One))
                            {

    21DA: A0 4D 05 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .M..\/._SB_PCI0L
    21EA: 50 43 42 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53  // PCBEC0_GBNT\/._S
    21FA: 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 47 42  // B_PCI0LPCBEC0_GB
    220A: 49 53 0A 06 01                                   // IS...

                                \_SB.PCI0.GFX0.IUER |= 0x40
                            }

    220F: 7D 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30  // }\/._SB_PCI0GFX0
    221F: 49 55 45 52 0A 40 5C 2F 04 5F 53 42 5F 50 43 49  // IUER.@\/._SB_PCI
    222F: 30 47 46 58 30 49 55 45 52                       // 0GFX0IUER

                            Else
                            {

    2238: A1 2D                                            // .-

                                \_SB.PCI0.GFX0.IUER &= 0xFFFFFFBF
                            }

                            \_SB.PCI0.GFX0.AINT (0x06, Zero)
                        }


    223A: 7B 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30  // {\/._SB_PCI0GFX0
    224A: 49 55 45 52 0C BF FF FF FF 5C 2F 04 5F 53 42 5F  // IUER.....\/._SB_
    225A: 50 43 49 30 47 46 58 30 49 55 45 52 5C 2F 04 5F  // PCI0GFX0IUER\/._
    226A: 53 42 5F 50 43 49 30 47 46 58 30 41 49 4E 54 0A  // SB_PCI0GFX0AINT.
    227A: 06 00                                            // ..

                        If (
    227C: A0 43 05 92                                      // .C..

(\GTOS () <= 0x08))
                        {

    2280: 94 5C 47 54 4F 53 0A 08                          // .\GTOS..

                            \_SB.PCI0.LPCB.EC0.COVS = \_SB.PCI0.LPCB.EC0.GBNT (\_SB.PCI0.LPCB.EC0.GBIS, 0x06)
                        }


    2288: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
    2298: 45 43 30 5F 47 42 4E 54 5C 2F 05 5F 53 42 5F 50  // EC0_GBNT\/._SB_P
    22A8: 43 49 30 4C 50 43 42 45 43 30 5F 47 42 49 53 0A  // CI0LPCBEC0_GBIS.
    22B8: 06 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    22C8: 45 43 30 5F 43 4F 56 53                          // EC0_COVS

                        If (
    22D0: A0 4C 0F 92                                      // .L..

(\GTOS () >= 0x08))
                        {

    22D4: 95 5C 47 54 4F 53 0A 08                          // .\GTOS..

                            If (CondRefOf (\_SB.PCI0.LPCB.EC0.VGBI))
                            {

    22DC: A0 47 07 5B 12 5C 2F 05 5F 53 42 5F 50 43 49 30  // .G.[.\/._SB_PCI0
    22EC: 4C 50 43 42 45 43 30 5F 56 47 42 49 00           // LPCBEC0_VGBI.

                                If ((\_SB.PCI0.LPCB.EC0.GBIS & 0x80))
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, One)
                                }

    22F9: A0 3A 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // .:{\/._SB_PCI0LP
    2309: 43 42 45 43 30 5F 47 42 49 53 0A 80 00 5C 2F 06  // CBEC0_GBIS...\/.
    2319: 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30 5F  // _SB_PCI0LPCBEC0_
    2329: 56 47 42 49 55 50 42 54 0A 07 01                 // VGBIUPBT...

                                Else
                                {
                                    \_SB.PCI0.LPCB.EC0.VGBI.UPBT (0x07, Zero)
                                }
                            }


    2334: A1 1F 5C 2F 06 5F 53 42 5F 50 43 49 30 4C 50 43  // ..\/._SB_PCI0LPC
    2344: 42 45 43 30 5F 56 47 42 49 55 50 42 54 0A 07 00  // BEC0_VGBIUPBT...

                            If (\_SB.DCKD ())
                            {

    2354: A0 34 5C 2E 5F 53 42 5F 44 43 4B 44              // .4\._SB_DCKD

                                \_SB.PCI0.GFX0.IUER |= 0x80
                            }

    2360: 7D 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30  // }\/._SB_PCI0GFX0
    2370: 49 55 45 52 0A 80 5C 2F 04 5F 53 42 5F 50 43 49  // IUER..\/._SB_PCI
    2380: 30 47 46 58 30 49 55 45 52                       // 0GFX0IUER

                            Else
                            {

    2389: A1 2D                                            // .-

                                \_SB.PCI0.GFX0.IUER &= 0xFFFFFF7F
                            }

                            \_SB.PCI0.GFX0.AINT (0x07, Zero)
                        }


    238B: 7B 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30  // {\/._SB_PCI0GFX0
    239B: 49 55 45 52 0C 7F FF FF FF 5C 2F 04 5F 53 42 5F  // IUER.....\/._SB_
    23AB: 50 43 49 30 47 46 58 30 49 55 45 52 5C 2F 04 5F  // PCI0GFX0IUER\/._
    23BB: 53 42 5F 50 43 49 30 47 46 58 30 41 49 4E 54 0A  // SB_PCI0GFX0AINT.
    23CB: 07 00                                            // ..

                        If (
    23CD: A0 4B 04 92                                      // .K..

(\GTOS () <= 0x08))
                        {

    23D1: 94 5C 47 54 4F 53 0A 08                          // .\GTOS..

                            If (\_SB.DCKD ())
                            {

    23D9: A0 24 5C 2E 5F 53 42 5F 44 43 4B 44              // .$\._SB_DCKD

                                \_SB.PCI0.LPCB.EC0.DOKS = One
                            }

    23E5: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    23F5: 42 45 43 30 5F 44 4F 4B 53                       // BEC0_DOKS

                            Else
                            {

    23FE: A1 1A                                            // ..

                                \_SB.PCI0.LPCB.EC0.DOKS = Zero
                            }
                        }
                    }


    2400: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
    2410: 42 45 43 30 5F 44 4F 4B 53                       // BEC0_DOKS

                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.VGBI.ONTM))
                    {

    2419: A0 3C 5B 12 5C 2F 06 5F 53 42 5F 50 43 49 30 4C  // .<[.\/._SB_PCI0L
    2429: 50 43 42 45 43 30 5F 56 47 42 49 4F 4E 54 4D 00  // PCBEC0_VGBIONTM.

                        \_SB.PCI0.LPCB.EC0.VGBI.ONTM = One
                    }
                }
            }
        }
    }
}



Table Header:
Table Body (Length 0x2456)
