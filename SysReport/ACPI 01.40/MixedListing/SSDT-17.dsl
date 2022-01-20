{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.PSSB, FieldUnitObj)
    External (_SB_.WMIV.GVWE, MethodObj)    // 2 Arguments
    External (ECRG, IntObj)


    0024: A0 48 09 00 15 5C 2E 5F 53 42 5F 50 43 49 30 06  // .H...\._SB_PCI0.
    0034: 00 15 5C 2F 03 5F 53 42 5F 50 43 49 30 4C 50 43  // ..\/._SB_PCI0LPC
    0044: 42 06 00 15 5C 2F 04 5F 53 42 5F 50 43 49 30 4C  // B...\/._SB_PCI0L
    0054: 50 43 42 45 43 30 5F 06 00 15 5C 2F 05 5F 53 42  // PCBEC0_...\/._SB
    0064: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45 43 4D  // _PCI0LPCBEC0_ECM
    0074: 58 09 00 15 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // X...\/._SB_PCI0L
    0084: 50 43 42 45 43 30 5F 45 43 52 47 01 00 15 5C 2F  // PCBEC0_ECRG...\/
    0094: 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 45 43 30  // ._SB_PCI0LPCBEC0
    00A4: 5F 50 53 53 42 05 00 15 5C 2F 03 5F 53 42 5F 57  // _PSSB...\/._SB_W
    00B4: 4D 49 56 47 56 57 45 08 02                       // MIVGVWE..

    Scope (\_SB.PCI0.LPCB.EC0)
    {

    00BD: 10 4B 23 5C 2F 04 5F 53 42 5F 50 43 49 30 4C 50  // .K#\/._SB_PCI0LP
    00CD: 43 42 45 43 30 5F                                // CBEC0_

        OperationRegion (HPSF, SystemMemory, 0x97B63000, 0x00000003)

    00D3: 5B 80 48 50 53 46 00 0C 00 30 B6 97 0C 03 00 00  // [.HPSF...0......
    00E3: 00                                               // .

        Field (HPSF, AnyAcc, Lock, Preserve)
        {
            PSCF,   8, 
            BCIF,   8, 
            BCSC,   8
        }


    00E4: 5B 81 15 48 50 53 46 10 50 53 43 46 08 42 43 49  // [..HPSF.PSCF.BCI
    00F4: 46 08 42 43 53 43 08                             // F.BCSC.

        Name (PSSS, Zero)

    00FB: 08 50 53 53 53 00                                // .PSSS.

        Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)

    0101: 14 47 1F 5F 51 32 30 00 5B 23 5C 2F 05 5F 53 42  // .G._Q20.[#\/._SB
    0111: 5F 50 43 49 30 4C 50 43 42 45 43 30 5F 45 43 4D  // _PCI0LPCBEC0_ECM
    0121: 58 FF FF                                         // X..

            If (ECRG)
            {
                Local0 = 
    0124: A0 4B 1B 45 43 52 47 70                          // .K.ECRGp

(PSSS & One)
                Local1 = 
    012C: 7B 50 53 53 53 01 00 60 70                       // {PSSS..`p

(\_SB.PCI0.LPCB.EC0.PSSB & One)
                Local2 = 
    0135: 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // {\/._SB_PCI0LPCB
    0145: 45 43 30 5F 50 53 53 42 01 00 61 70              // EC0_PSSB..ap

(PSSS & 0x02)
                Local3 = 
    0151: 7B 50 53 53 53 0A 02 00 62 70                    // {PSSS...bp

(\_SB.PCI0.LPCB.EC0.PSSB & 0x02)
                Local4 = 
    015B: 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // {\/._SB_PCI0LPCB
    016B: 45 43 30 5F 50 53 53 42 0A 02 00 63 70           // EC0_PSSB...cp

(PSSS & 0x10)
                Local5 = 
    0178: 7B 50 53 53 53 0A 10 00 64 70                    // {PSSS...dp

(\_SB.PCI0.LPCB.EC0.PSSB & 0x10)

    0182: 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // {\/._SB_PCI0LPCB
    0192: 45 43 30 5F 50 53 53 42 0A 10 00 65              // EC0_PSSB...e

                If ((
    019E: A0 37 90 92                                      // .7..

(Local0 != Local1) && 
    01A2: 93 60 61                                         // .`a

(Local0 == Zero)))
                {
                    \_SB.WMIV.GVWE (0x0F, Zero)

    01A5: 93 60 00 5C 2F 03 5F 53 42 5F 57 4D 49 56 47 56  // .`.\/._SB_WMIVGV
    01B5: 57 45 0A 0F 00                                   // WE...

                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }

    01BA: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
    01CA: 45 43 30 5F 50 53 53 42 50 53 53 53              // EC0_PSSBPSSS

                ElseIf
    01D6: A1 49 10                                         // .I.

 ((
    01D9: A0 38 90 92                                      // .8..

(Local4 != Local5) && 
    01DD: 93 64 65                                         // .de

(Local4 == Zero)))
                {
                    \_SB.WMIV.GVWE (0x0F, 0x03)

    01E0: 93 64 00 5C 2F 03 5F 53 42 5F 57 4D 49 56 47 56  // .d.\/._SB_WMIVGV
    01F0: 57 45 0A 0F 0A 03                                // WE....

                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }

    01F6: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
    0206: 45 43 30 5F 50 53 53 42 50 53 53 53              // EC0_PSSBPSSS

                ElseIf
    0212: A1 4D 0C                                         // .M.

 ((
    0215: A0 37 90 92                                      // .7..

(Local0 != Local1) && 
    0219: 93 60 61                                         // .`a

(Local0 == One)))
                {
                    \_SB.WMIV.GVWE (0x0F, One)

    021C: 93 60 01 5C 2F 03 5F 53 42 5F 57 4D 49 56 47 56  // .`.\/._SB_WMIVGV
    022C: 57 45 0A 0F 01                                   // WE...

                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }

    0231: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
    0241: 45 43 30 5F 50 53 53 42 50 53 53 53              // EC0_PSSBPSSS

                ElseIf
    024D: A1 42 09                                         // .B.

 ((
    0250: A0 46 04 90 92                                   // .F...

(Local2 != Local3) && 
    0255: 93 62 63                                         // .bc

(Local2 == 0x02)))
                {

    0258: 93 62 0A 02                                      // .b..

                    If (!BCIF)
                    {
                        \_SB.WMIV.GVWE (0x10, Zero)
                    }

                    BCIF = Zero

    025C: A0 18 92 42 43 49 46 5C 2F 03 5F 53 42 5F 57 4D  // ...BCIF\/._SB_WM
    026C: 49 56 47 56 57 45 0A 10 00 70 00 42 43 49 46     // IVGVWE...p.BCIF

                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }

    027B: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
    028B: 45 43 30 5F 50 53 53 42 50 53 53 53              // EC0_PSSBPSSS

                ElseIf
    0297: A1 48 04                                         // .H.

 ((
    029A: A0 45 04 90 92                                   // .E...

(Local2 != Local3) && 
    029F: 93 62 63                                         // .bc

(Local2 == Zero)))
                {

    02A2: 93 62 00                                         // .b.

                    If (!BCIF)
                    {
                        \_SB.WMIV.GVWE (0x10, One)
                    }

                    BCIF = Zero

    02A5: A0 18 92 42 43 49 46 5C 2F 03 5F 53 42 5F 57 4D  // ...BCIF\/._SB_WM
    02B5: 49 56 47 56 57 45 0A 10 01 70 00 42 43 49 46     // IVGVWE...p.BCIF

                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }
            }


    02C4: 70 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // p\/._SB_PCI0LPCB
    02D4: 45 43 30 5F 50 53 53 42 50 53 53 53              // EC0_PSSBPSSS

            Release (\_SB.PCI0.LPCB.EC0.ECMX)
        }
    }
}



Table Header:
Table Body (Length 0x2F9)
