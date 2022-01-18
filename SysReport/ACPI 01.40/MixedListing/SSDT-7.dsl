{
    External (PAMT, UnknownObj)


    0024: A0 0A 00 15 5C 50 41 4D 54 00 00                 // ....\PAMT..

    Scope (\_SB)
    {

    002F: 10 44 70 5C 5F 53 42 5F                          // .Dp\_SB_

        Device (PTID)
        {

    0037: 5B 82 4B 6F 50 54 49 44                          // [.KoPTID

            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID

    003F: 08 5F 48 49 44 0C 25 D4 34 0E                    // ._HID.%.4.

            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID

    0049: 08 5F 43 49 44 0C 41 D0 0C 02                    // ._CID.A...

            Name (IVER, 0x00030000)

    0053: 08 49 56 45 52 0C 00 00 03 00                    // .IVER.....

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

    005D: 14 09 5F 53 54 41 00                             // .._STA.

                Return (0x0F)
            }


    0064: A4 0A 0F                                         // ...

            Name (TSDL, 
    0067: 08 54 53 44 4C                                   // .TSDL

Package (0x24)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "CPU Core VR (IMVP) Temperature", 
                0x03, 
                "Heat Exchanger Fan Temperature", 
                0x03, 
                "Skin Temperature", 
                0x03, 
                "Ambient Temperature", 
                0x02, 
                "Sensor 5 Not used.", 
                0x02, 
                "Channel 0 DIMM Temperature", 
                0x02, 
                "Channel 1 DIMM Temperature", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x02, 
                "TZ01 _TMP"
            })

    006C: 12 45 1A 24 00 0D 43 50 55 20 43 6F 72 65 20 30  // .E.$..CPU Core 0
    007C: 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65 20  //  DTS...CPU Core 
    008C: 31 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65  // 1 DTS...CPU Core
    009C: 20 32 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72  //  2 DTS...CPU Cor
    00AC: 65 20 33 20 44 54 53 00 00 0D 43 50 55 20 43 6F  // e 3 DTS...CPU Co
    00BC: 72 65 20 50 61 63 6B 61 67 65 20 44 54 53 00 0A  // re Package DTS..
    00CC: 03 0D 43 50 55 20 43 6F 72 65 20 56 52 20 28 49  // ..CPU Core VR (I
    00DC: 4D 56 50 29 20 54 65 6D 70 65 72 61 74 75 72 65  // MVP) Temperature
    00EC: 00 0A 03 0D 48 65 61 74 20 45 78 63 68 61 6E 67  // ....Heat Exchang
    00FC: 65 72 20 46 61 6E 20 54 65 6D 70 65 72 61 74 75  // er Fan Temperatu
    010C: 72 65 00 0A 03 0D 53 6B 69 6E 20 54 65 6D 70 65  // re....Skin Tempe
    011C: 72 61 74 75 72 65 00 0A 03 0D 41 6D 62 69 65 6E  // rature....Ambien
    012C: 74 20 54 65 6D 70 65 72 61 74 75 72 65 00 0A 02  // t Temperature...
    013C: 0D 53 65 6E 73 6F 72 20 35 20 4E 6F 74 20 75 73  // .Sensor 5 Not us
    014C: 65 64 2E 00 0A 02 0D 43 68 61 6E 6E 65 6C 20 30  // ed.....Channel 0
    015C: 20 44 49 4D 4D 20 54 65 6D 70 65 72 61 74 75 72  //  DIMM Temperatur
    016C: 65 00 0A 02 0D 43 68 61 6E 6E 65 6C 20 31 20 44  // e....Channel 1 D
    017C: 49 4D 4D 20 54 65 6D 70 65 72 61 74 75 72 65 00  // IMM Temperature.
    018C: 00 0D 43 50 55 20 50 61 63 6B 61 67 65 20 54 65  // ..CPU Package Te
    019C: 6D 70 65 72 61 74 75 72 65 00 0A 05 0D 50 43 48  // mperature....PCH
    01AC: 20 44 54 53 20 54 65 6D 70 65 72 61 74 75 72 65  //  DTS Temperature
    01BC: 20 66 72 6F 6D 20 50 43 48 00 00 0D 43 50 55 20  //  from PCH...CPU 
    01CC: 50 45 43 49 20 72 65 61 64 69 6E 67 00 0A 05 0D  // PECI reading....
    01DC: 53 41 20 44 54 53 20 54 65 6D 70 65 72 61 74 75  // SA DTS Temperatu
    01EC: 72 65 20 66 72 6F 6D 20 50 43 48 00 0A 02 0D 54  // re from PCH....T
    01FC: 5A 30 30 20 5F 54 4D 50 00 0A 02 0D 54 5A 30 31  // Z00 _TMP....TZ01
    020C: 20 5F 54 4D 50 00                                //  _TMP.

            Name (PSDL, 
    0212: 08 50 53 44 4C                                   // .PSDL

Package (0x26)
            {
                0x0B, 
                "Platform Power (mW)", 
                0x0B, 
                "Brick Power cW(100ths)", 
                0x0B, 
                "Battery Discharge Power cW(100ths)", 
                0x0B, 
                "Platform Average Power (mW)", 
                0x0B, 
                "Brick Average Power cW(0.01)", 
                0x0B, 
                "Battery Discharge Average Power cW(0.01)", 
                0x0C, 
                "Battery 1 Design Capacity (mWh)", 
                0x0C, 
                "Battery 1 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 1 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 1 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery 2 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 2 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 2 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery Pack 1 maximum power (mW)", 
                0x0C, 
                "Battery Pack 2 maximum power (mW)"
            })

    0217: 12 4C 2E 26 0A 0B 0D 50 6C 61 74 66 6F 72 6D 20  // .L.&...Platform 
    0227: 50 6F 77 65 72 20 28 6D 57 29 00 0A 0B 0D 42 72  // Power (mW)....Br
    0237: 69 63 6B 20 50 6F 77 65 72 20 63 57 28 31 30 30  // ick Power cW(100
    0247: 74 68 73 29 00 0A 0B 0D 42 61 74 74 65 72 79 20  // ths)....Battery 
    0257: 44 69 73 63 68 61 72 67 65 20 50 6F 77 65 72 20  // Discharge Power 
    0267: 63 57 28 31 30 30 74 68 73 29 00 0A 0B 0D 50 6C  // cW(100ths)....Pl
    0277: 61 74 66 6F 72 6D 20 41 76 65 72 61 67 65 20 50  // atform Average P
    0287: 6F 77 65 72 20 28 6D 57 29 00 0A 0B 0D 42 72 69  // ower (mW)....Bri
    0297: 63 6B 20 41 76 65 72 61 67 65 20 50 6F 77 65 72  // ck Average Power
    02A7: 20 63 57 28 30 2E 30 31 29 00 0A 0B 0D 42 61 74  //  cW(0.01)....Bat
    02B7: 74 65 72 79 20 44 69 73 63 68 61 72 67 65 20 41  // tery Discharge A
    02C7: 76 65 72 61 67 65 20 50 6F 77 65 72 20 63 57 28  // verage Power cW(
    02D7: 30 2E 30 31 29 00 0A 0C 0D 42 61 74 74 65 72 79  // 0.01)....Battery
    02E7: 20 31 20 44 65 73 69 67 6E 20 43 61 70 61 63 69  //  1 Design Capaci
    02F7: 74 79 20 28 6D 57 68 29 00 0A 0C 0D 42 61 74 74  // ty (mWh)....Batt
    0307: 65 72 79 20 31 20 52 65 6D 61 69 6E 69 6E 67 20  // ery 1 Remaining 
    0317: 43 61 70 61 63 69 74 79 20 28 6D 57 68 29 00 0A  // Capacity (mWh)..
    0327: 0C 0D 42 61 74 74 65 72 79 20 31 20 46 75 6C 6C  // ..Battery 1 Full
    0337: 20 43 68 61 72 67 65 20 43 61 70 61 63 69 74 79  //  Charge Capacity
    0347: 20 28 6D 57 68 29 00 0A 0C 0D 42 61 74 74 65 72  //  (mWh)....Batter
    0357: 79 20 31 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74  // y 1 Full Resolut
    0367: 69 6F 6E 20 56 6F 6C 74 61 67 65 20 28 6D 56 29  // ion Voltage (mV)
    0377: 00 0A 0C 0D 42 61 74 74 65 72 79 20 31 20 46 75  // ....Battery 1 Fu
    0387: 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E 20 44 69  // ll Resolution Di
    0397: 73 63 68 61 72 67 65 20 43 75 72 72 65 6E 74 20  // scharge Current 
    03A7: 28 6D 41 29 00 0A 0C 0D 42 61 74 74 65 72 79 20  // (mA)....Battery 
    03B7: 31 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F  // 1 Full Resolutio
    03C7: 6E 20 43 68 61 72 67 65 20 43 75 72 72 65 6E 74  // n Charge Current
    03D7: 20 28 6D 41 29 00 0A 0C 0D 42 61 74 74 65 72 79  //  (mA)....Battery
    03E7: 20 32 20 52 65 6D 61 69 6E 69 6E 67 20 43 61 70  //  2 Remaining Cap
    03F7: 61 63 69 74 79 20 28 6D 57 68 29 00 0A 0C 0D 42  // acity (mWh)....B
    0407: 61 74 74 65 72 79 20 32 20 46 75 6C 6C 20 43 68  // attery 2 Full Ch
    0417: 61 72 67 65 20 43 61 70 61 63 69 74 79 20 28 6D  // arge Capacity (m
    0427: 57 68 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 32  // Wh)....Battery 2
    0437: 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E  //  Full Resolution
    0447: 20 56 6F 6C 74 61 67 65 20 28 6D 56 29 00 0A 0C  //  Voltage (mV)...
    0457: 0D 42 61 74 74 65 72 79 20 32 20 46 75 6C 6C 20  // .Battery 2 Full 
    0467: 52 65 73 6F 6C 75 74 69 6F 6E 20 44 69 73 63 68  // Resolution Disch
    0477: 61 72 67 65 20 43 75 72 72 65 6E 74 20 28 6D 41  // arge Current (mA
    0487: 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 32 20 46  // )....Battery 2 F
    0497: 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E 20 43  // ull Resolution C
    04A7: 68 61 72 67 65 20 43 75 72 72 65 6E 74 20 28 6D  // harge Current (m
    04B7: 41 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 50 61  // A)....Battery Pa
    04C7: 63 6B 20 31 20 6D 61 78 69 6D 75 6D 20 70 6F 77  // ck 1 maximum pow
    04D7: 65 72 20 28 6D 57 29 00 0A 0C 0D 42 61 74 74 65  // er (mW)....Batte
    04E7: 72 79 20 50 61 63 6B 20 32 20 6D 61 78 69 6D 75  // ry Pack 2 maximu
    04F7: 6D 20 70 6F 77 65 72 20 28 6D 57 29 00           // m power (mW).

            Name (OSDL, 
    0504: 08 4F 53 44 4C                                   // .OSDL

Package (0x09)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW"
            })

    0509: 12 4B 04 09 0A 04 0D 43 50 55 20 46 61 6E 20 44  // .K.....CPU Fan D
    0519: 75 74 79 20 43 79 63 6C 65 00 0D 52 41 57 00 0A  // uty Cycle..RAW..
    0529: 04 0D 43 50 55 20 46 61 6E 20 23 31 20 53 70 65  // ..CPU Fan #1 Spe
    0539: 65 64 00 0D 52 50 4D 00 0A 03 0D 53 6B 69 6E 20  // ed..RPM....Skin 
    0549: 54 65 6D 70 20 30 00 0D 52 41 57 00              // Temp 0..RAW.

            Method (TSDD, 0, Serialized)
            {

    0555: 14 43 08 54 53 44 44 08                          // .C.TSDD.

                Name (TMPV, 
    055D: 08 54 4D 50 56                                   // .TMPV

Package (0x16)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })

    0562: 12 41 07 16 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .A..............
    0572: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0582: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0592: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    05A2: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    05B2: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    05C2: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    05D2: 00 80                                            // ..

                Return (TMPV) /* \_SB_.PTID.TSDD.TMPV */
            }


    05D4: A4 54 4D 50 56                                   // .TMPV

            Method (PSDD, 0, Serialized)
            {

    05D9: 14 44 07 50 53 44 44 08                          // .D.PSDD.

                Name (PWRV, 
    05E1: 08 50 57 52 56                                   // .PWRV

Package (0x13)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })

    05E6: 12 42 06 13 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .B..............
    05F6: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0606: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0616: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0626: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0636: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    0646: 00 00 80                                         // ...

                Return (PWRV) /* \_SB_.PTID.PSDD.PWRV */
            }


    0649: A4 50 57 52 56                                   // .PWRV

            Method (OSDD, 0, Serialized)
            {

    064E: 14 41 04 4F 53 44 44 08                          // .A.OSDD.

                Name (OSDV, 
    0656: 08 4F 53 44 56                                   // .OSDV

Package (0x09)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })

    065B: 12 2F 09 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ./..............
    066B: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    067B: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................

                Return (OSDV) /* \_SB_.PTID.OSDD.OSDV */
            }


    068B: A4 4F 53 44 56                                   // .OSDV

            Method (SDSP, 0, NotSerialized)
            {

    0690: 14 09 53 44 53 50 00                             // ..SDSP.

                Return (0x0A)
            }


    0697: A4 0A 0A                                         // ...

            Name (PADA, 
    069A: 08 50 41 44 41                                   // .PADA

Package (0x0A)
            {
                One, 
                Ones, 
                Ones, 
                0x1A, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones
            })

    069F: 12 0D 0A 01 FF FF 0A 1A FF FF FF FF FF FF        // ..............

            Name (PADD, 
    06AD: 08 50 41 44 44                                   // .PADD

Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })

    06B2: 12 18 0A 0A 02 0B A4 06 0B A0 06 0A 1A 0A 62 0A  // ..............b.
    06C2: 63 0A 60 0A 61 0A 65 0A 64                       // c.`.a.e.d

            Method (PADT, 0, NotSerialized)
            {

    06CB: 14 16 50 41 44 54 00                             // ..PADT.

                If (PAMT)
                {

    06D2: A0 0A 50 41 4D 54                                // ..PAMT

                    Return (PADA) /* \_SB_.PTID.PADA */
                }


    06D8: A4 50 41 44 41                                   // .PADA

                Return (PADD) /* \_SB_.PTID.PADD */
            }


    06DD: A4 50 41 44 44                                   // .PADD

            Method (RPMD, 0, Serialized)
            {

    06E2: 14 14 52 50 4D 44 08                             // ..RPMD.

                Name (MTMP, 
    06E9: 08 4D 54 4D 50                                   // .MTMP

Buffer (0x1A){})

    06EE: 11 03 0A 1A                                      // ....

                Return (MTMP) /* \_SB_.PTID.RPMD.MTMP */
            }


    06F2: A4 4D 54 4D 50                                   // .MTMP

            Method (WPMD, 1, NotSerialized)
            {

    06F7: 14 12 57 50 4D 44 01                             // ..WPMD.

                If (
    06FE: A0 09 92                                         // ...

(SizeOf (Arg0) != 0x1A))
                {

    0701: 93 87 68 0A 1A                                   // ..h..

                    Return (Ones)
                }


    0706: A4 FF                                            // ..

                Return (Zero)
            }


    0708: A4 00                                            // ..

            Method (ISPC, 0, NotSerialized)
            {

    070A: 14 08 49 53 50 43 00                             // ..ISPC.

                Return (Zero)
            }


    0711: A4 00                                            // ..

            Method (ENPC, 0, NotSerialized)
            {

    0713: 14 08 45 4E 50 43 00                             // ..ENPC.

                Return (Zero)
            }


    071A: A4 00                                            // ..

            Method (RPCS, 0, NotSerialized)
            {
                Local0 = Zero

    071C: 14 0B 52 50 43 53 00 70 00 60                    // ..RPCS.p.`

                Return (Local0)
            }


    0726: A4 60                                            // .`

            Method (RPEC, 0, NotSerialized)
            {
                Local0 = Zero

    0728: 14 0B 52 50 45 43 00 70 00 60                    // ..RPEC.p.`

                Return (Local0)
            }
        }
    }
}



Table Header:
Table Body (Length 0x734)
