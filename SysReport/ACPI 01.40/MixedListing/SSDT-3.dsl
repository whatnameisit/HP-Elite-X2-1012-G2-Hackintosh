{
    External (GSWS, MethodObj)    // 1 Arguments


    0024: A0 0A 00 15 5C 47 53 57 53 08 01                 // ....\GSWS..

    Scope (\_SB)
    {

    002F: 10 43 38 5C 5F 53 42 5F                          // .C8\_SB_

        Device (TPM)
        {

    0037: 5B 82 4A 37 54 50 4D 5F                          // [.J7TPM_

            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID

    003F: 08 5F 48 49 44 0D 4D 53 46 54 30 31 30 31 00     // ._HID.MSFT0101.

            Name (_STR, 
    004E: 08 5F 53 54 52                                   // ._STR

Unicode ("TPM 2.0 Device"))  // _STR: Description String

    0053: 11 21 0A 1E 54 00 50 00 4D 00 20 00 32 00 2E 00  // .!..T.P.M. .2...
    0063: 30 00 20 00 44 00 65 00 76 00 69 00 63 00 65 00  // 0. .D.e.v.i.c.e.
    0073: 00 00                                            // ..

            Name (_CRS, 
    0075: 08 5F 43 52 53                                   // ._CRS

ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
            })

    007A: 11 11 0A 0E 86 09 00 01 00 00 D4 FE 00 50 00 00  // .............P..
    008A: 79 00                                            // y.

            OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)

    008C: 5B 80 54 50 4D 52 00 0C 00 00 D4 FE 0B 00 50     // [.TPMR........P

            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                ACC0,   8
            }


    009B: 5B 81 0B 54 50 4D 52 00 41 43 43 30 08           // [..TPMR.ACC0.

            OperationRegion (TNVS, SystemMemory, 0x97B6B000, 0x26)

    00A8: 5B 80 54 4E 56 53 00 0C 00 B0 B6 97 0A 26        // [.TNVS.......&

            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }


    00B6: 5B 81 3D 54 4E 56 53 00 50 50 49 4E 08 50 50 49  // [.=TNVS.PPIN.PPI
    00C6: 50 20 50 50 52 50 20 50 50 52 51 20 50 50 52 4D  // P PPRP PPRQ PPRM
    00D6: 20 4C 50 50 52 20 46 52 45 54 20 4D 43 49 4E 08  //  LPPR FRET MCIN.
    00E6: 4D 43 49 50 20 4D 4F 52 44 20 4D 52 45 54 20     // MCIP MORD MRET 

            Method (PTS, 1, Serialized)
            {

    00F5: 14 2D 50 54 53 5F 09                             // .-PTS_.

                If (((Arg0 < 0x06) && 
    00FC: A0 24 90 95 68 0A 06                             // .$..h..

(Arg0 > 0x03)))
                {

    0103: 94 68 0A 03                                      // .h..

                    If (!
    0107: A0 19 92                                         // ...

(MORD & 0x10))
                    {
                        MCIP = 0x02
                        GSWS (MCIN)
                    }
                }


    010A: 7B 4D 4F 52 44 0A 10 00 70 0A 02 4D 43 49 50 47  // {MORD...p..MCIPG
    011A: 53 57 53 4D 43 49 4E                             // SWSMCIN

                Return (Zero)
            }


    0121: A4 00                                            // ..

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

    0123: 14 14 5F 53 54 41 00                             // .._STA.

                If ((ACC0 == 0xFF))
                {

    012A: A0 0A 93 41 43 43 30 0A FF                       // ...ACC0..

                    Return (Zero)
                }


    0133: A4 00                                            // ..

                Return (0x0F)
            }


    0135: A4 0A 0F                                         // ...

            Method (HINF, 3, Serialized)
            {

    0138: 14 4A 05 48 49 4E 46 0B                          // .J.HINF.


    0140: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    0146: A2 47 04 01 70 99 69 00 5F 54 5F 30              // .G..p.i._T_0

                    Case (Zero)
                    {

    0152: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    015A: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    015B: 11 03 01 03                                      // ....

                    Case
    015F: A1 2D                                            // .-

 (One)
                    {

    0161: A0 28 93 5F 54 5F 30 01                          // .(._T_0.

                        Name (TPMV, 
    0169: 08 54 50 4D 56                                   // .TPMV

Package (0x02)
                        {
                            One, 

    016E: 12 09 02 01                                      // ....

                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })

    0172: 12 05 02 0A 02 00                                // ......

                        If ((_STA () == Zero))
                        {

    0178: A0 0C 93 5F 53 54 41 00                          // ..._STA.

                            Return (
    0180: A4                                               // .

Package (0x01)
                            {
                                Zero
                            })
                        }


    0181: 12 03 01 00                                      // ....

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }

    0185: A4 54 50 4D 56                                   // .TPMV

                    Default
                    {

    018A: A1 02                                            // ..

                        BreakPoint
                    }


    018C: CC                                               // .

                }


    018D: A5                                               // .

                Return (
    018E: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }


    018F: 11 03 01 00                                      // ....

            Name (TPM2, 
    0193: 08 54 50 4D 32                                   // .TPM2

Package (0x02)
            {
                Zero, 
                Zero
            })

    0198: 12 04 02 00 00                                   // .....

            Name (TPM3, 
    019D: 08 54 50 4D 33                                   // .TPM3

Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })

    01A2: 12 05 03 00 00 00                                // ......

            Method (TPPI, 3, Serialized)
            {

    01A8: 14 49 14 54 50 50 49 0B                          // .I.TPPI.


    01B0: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    01B6: A2 49 13 01 70 99 69 00 5F 54 5F 30              // .I..p.i._T_0

                    Case (Zero)
                    {

    01C2: A0 0E 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    01CA: A4                                               // .

Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }

    01CB: 11 05 0A 02 FF 01                                // ......

                    Case
    01D1: A1 4D 11                                         // .M.

 (One)
                    {

    01D4: A0 0D 93 5F 54 5F 30 01                          // ..._T_0.

                        Return ("1.3")
                    }

    01DC: A4 0D 31 2E 33 00                                // ..1.3.

                    Case
    01E2: A1 4C 10                                         // .L.

 (0x02)
                    {
                        PPRQ = 
    01E5: A0 26 93 5F 54 5F 30 0A 02 70                    // .&._T_0..p

DerefOf (
    01EF: 83                                               // .

Arg2 [Zero])
                        PPIP = 0x02
                        GSWS (PPIN)

    01F0: 88 6A 00 00 50 50 52 51 70 0A 02 50 50 49 50 47  // .j..PPRQp..PPIPG
    0200: 53 57 53 50 50 49 4E                             // SWSPPIN

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    0207: A4 46 52 45 54                                   // .FRET

                    Case
    020C: A1 42 0E                                         // .B.

 (0x03)
                    {
                        TPM2 [One] = PPRQ /* \_SB_.TPM_.PPRQ */

    020F: A0 19 93 5F 54 5F 30 0A 03 70 50 50 52 51 88 54  // ..._T_0..pPPRQ.T
    021F: 50 4D 32 01 00                                   // PM2..

                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }

    0224: A4 54 50 4D 32                                   // .TPM2

                    Case
    0229: A1 45 0C                                         // .E.

 (0x04)
                    {

    022C: A0 0B 93 5F 54 5F 30 0A 04                       // ..._T_0..

                        Return (0x02)
                    }

    0235: A4 0A 02                                         // ...

                    Case
    0238: A1 46 0B                                         // .F.

 (0x05)
                    {
                        PPIP = 0x05
                        GSWS (PPIN)
                        TPM3 [One] = LPPR /* \_SB_.TPM_.LPPR */
                        TPM3 [0x02] = PPRP /* \_SB_.TPM_.PPRP */

    023B: A0 35 93 5F 54 5F 30 0A 05 70 0A 05 50 50 49 50  // .5._T_0..p..PPIP
    024B: 47 53 57 53 50 50 49 4E 70 4C 50 50 52 88 54 50  // GSWSPPINpLPPR.TP
    025B: 4D 33 01 00 70 50 50 52 50 88 54 50 4D 33 0A 02  // M3..pPPRP.TPM3..
    026B: 00                                               // .

                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }

    026C: A4 54 50 4D 33                                   // .TPM3

                    Case
    0271: A1 4D 07                                         // .M.

 (0x06)
                    {

    0274: A0 0B 93 5F 54 5F 30 0A 06                       // ..._T_0..

                        Return (0x03)
                    }

    027D: A4 0A 03                                         // ...

                    Case
    0280: A1 4E 06                                         // .N.

 (0x07)
                    {
                        PPIP = 0x07
                        PPRQ = 
    0283: A0 3F 93 5F 54 5F 30 0A 07 70 0A 07 50 50 49 50  // .?._T_0..p..PPIP
    0293: 70                                               // p

DerefOf (
    0294: 83                                               // .

Arg2 [Zero])
                        PPRM = Zero

    0295: 88 6A 00 00 50 50 52 51 70 00 50 50 52 4D        // .j..PPRQp.PPRM

                        If ((PPRQ == 0x17))
                        {

    02A3: A0 12 93 50 50 52 51 0A 17                       // ...PPRQ..

                            PPRM = 
    02AC: 70                                               // p

DerefOf (
    02AD: 83                                               // .

Arg2 [One])
                        }

                        GSWS (PPIN)

    02AE: 88 6A 01 00 50 50 52 4D 47 53 57 53 50 50 49 4E  // .j..PPRMGSWSPPIN

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    02BE: A4 46 52 45 54                                   // .FRET

                    Case
    02C3: A1 2B                                            // .+

 (0x08)
                    {
                        PPIP = 0x08
                        PPRQ = 
    02C5: A0 26 93 5F 54 5F 30 0A 08 70 0A 08 50 50 49 50  // .&._T_0..p..PPIP
    02D5: 70                                               // p

DerefOf (
    02D6: 83                                               // .

Arg2 [Zero])
                        GSWS (PPIN)

    02D7: 88 6A 00 00 50 50 52 51 47 53 57 53 50 50 49 4E  // .j..PPRQGSWSPPIN

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    02E7: A4 46 52 45 54                                   // .FRET

                    Default
                    {

    02EC: A1 02                                            // ..

                        BreakPoint
                    }


    02EE: CC                                               // .

                }


    02EF: A5                                               // .

                Return (One)
            }


    02F0: A4 01                                            // ..

            Method (TMCI, 3, Serialized)
            {

    02F2: 14 43 05 54 4D 43 49 0B                          // .C.TMCI.


    02FA: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    0300: A2 43 04 01 70 99 69 00 5F 54 5F 30              // .C..p.i._T_0

                    Case (Zero)
                    {

    030C: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    0314: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    0315: 11 03 01 03                                      // ....

                    Case
    0319: A1 29                                            // .)

 (One)
                    {
                        MORD = 
    031B: A0 24 93 5F 54 5F 30 01 70                       // .$._T_0.p

DerefOf (
    0324: 83                                               // .

Arg2 [Zero])
                        MCIP = One
                        GSWS (MCIN)

    0325: 88 6A 00 00 4D 4F 52 44 70 01 4D 43 49 50 47 53  // .j..MORDp.MCIPGS
    0335: 57 53 4D 43 49 4E                                // WSMCIN

                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }

    033B: A4 4D 52 45 54                                   // .MRET

                    Default
                    {

    0340: A1 02                                            // ..

                        BreakPoint
                    }


    0342: CC                                               // .

                }


    0343: A5                                               // .

                Return (One)
            }


    0344: A4 01                                            // ..

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {

    0346: 14 4C 06 5F 44 53 4D 0C                          // .L._DSM.

                If ((Arg0 == 
    034E: A0 1F 93 68                                      // ...h

ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* Unknown UUID */))
                {

    0352: 11 13 0A 10 A5 16 8E CF E8 C1 25 4E B7 12 4F 54  // ..........%N..OT
    0362: A9 67 02 C8                                      // .g..

                    Return (HINF (Arg1, Arg2, Arg3))
                }


    0366: A4 48 49 4E 46 69 6A 6B                          // .HINFijk

                If ((Arg0 == 
    036E: A0 1F 93 68                                      // ...h

ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {

    0372: 11 13 0A 10 A6 FA DD 3D 1B 36 B4 4E A4 24 8D 10  // .......=.6.N.$..
    0382: 08 9D 16 53                                      // ...S

                    Return (TPPI (Arg1, Arg2, Arg3))
                }


    0386: A4 54 50 50 49 69 6A 6B                          // .TPPIijk

                If ((Arg0 == 
    038E: A0 1F 93 68                                      // ...h

ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* Unknown UUID */))
                {

    0392: 11 13 0A 10 ED 54 60 37 13 CC 75 46 90 1C 47 56  // .....T`7..uF..GV
    03A2: D7 F2 D4 5D                                      // ...]

                    Return (TMCI (Arg1, Arg2, Arg3))
                }


    03A6: A4 54 4D 43 49 69 6A 6B                          // .TMCIijk

                Return (
    03AE: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}



Table Header:
Table Body (Length 0x3B3)
