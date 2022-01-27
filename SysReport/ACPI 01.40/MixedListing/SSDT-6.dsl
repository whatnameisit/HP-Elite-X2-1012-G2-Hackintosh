{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.SAT0, DeviceObj)


    0024: A0 21 00 15 5C 2E 5F 53 42 5F 50 43 49 30 06 00  // .!..\._SB_PCI0..
    0034: 15 5C 2F 03 5F 53 42 5F 50 43 49 30 53 41 54 30  // .\/._SB_PCI0SAT0
    0044: 06 00                                            // ..

    Scope (\_SB.PCI0.SAT0)
    {

    0046: 10 45 17 5C 2F 03 5F 53 42 5F 50 43 49 30 53 41  // .E.\/._SB_PCI0SA
    0056: 54 30                                            // T0

        Device (PRID)
        {

    0058: 5B 82 40 0B 50 52 49 44                          // [.@.PRID

            Name (_ADR, Zero)  // _ADR: Address

    0060: 08 5F 41 44 52 00                                // ._ADR.

            Method (_GTM, 0, Serialized)  // _GTM: Get Timing Mode
            {

    0066: 14 42 08 5F 47 54 4D 08                          // .B._GTM.

                Name (PBUF, 
    006E: 08 50 42 55 46                                   // .PBUF

Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                })

    0073: 11 17 0A 14 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0083: 00 00 00 00 00 00 00 00                          // ........

                CreateDWordField (PBUF, Zero, PIO0)

    008B: 8A 50 42 55 46 00 50 49 4F 30                    // .PBUF.PIO0

                CreateDWordField (PBUF, 0x04, DMA0)

    0095: 8A 50 42 55 46 0A 04 44 4D 41 30                 // .PBUF..DMA0

                CreateDWordField (PBUF, 0x08, PIO1)

    00A0: 8A 50 42 55 46 0A 08 50 49 4F 31                 // .PBUF..PIO1

                CreateDWordField (PBUF, 0x0C, DMA1)

    00AB: 8A 50 42 55 46 0A 0C 44 4D 41 31                 // .PBUF..DMA1

                CreateDWordField (PBUF, 0x10, FLAG)
                PIO0 = 0xF0
                PIO1 = 0xF0
                DMA0 = 0x14
                DMA1 = 0x14
                FLAG = 0x1F

    00B6: 8A 50 42 55 46 0A 10 46 4C 41 47 70 0A F0 50 49  // .PBUF..FLAGp..PI
    00C6: 4F 30 70 0A F0 50 49 4F 31 70 0A 14 44 4D 41 30  // O0p..PIO1p..DMA0
    00D6: 70 0A 14 44 4D 41 31 70 0A 1F 46 4C 41 47        // p..DMA1p..FLAG

                Return (PBUF) /* \_SB_.PCI0.SAT0.PRID._GTM.PBUF */
            }


    00E4: A4 50 42 55 46                                   // .PBUF

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }


    00E9: 14 06 5F 53 54 4D 03                             // .._STM.

            Device (MAST)
            {

    00F0: 5B 82 0B 4D 41 53 54                             // [..MAST

                Name (_ADR, Zero)  // _ADR: Address
            }


    00F7: 08 5F 41 44 52 00                                // ._ADR.

            Device (SLAV)
            {

    00FD: 5B 82 0B 53 4C 41 56                             // [..SLAV

                Name (_ADR, One)  // _ADR: Address
            }
        }


    0104: 08 5F 41 44 52 01                                // ._ADR.

        Device (SECD)
        {

    010A: 5B 82 40 0B 53 45 43 44                          // [.@.SECD

            Name (_ADR, One)  // _ADR: Address

    0112: 08 5F 41 44 52 01                                // ._ADR.

            Method (_GTM, 0, Serialized)  // _GTM: Get Timing Mode
            {

    0118: 14 42 08 5F 47 54 4D 08                          // .B._GTM.

                Name (PBUF, 
    0120: 08 50 42 55 46                                   // .PBUF

Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                })

    0125: 11 17 0A 14 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0135: 00 00 00 00 00 00 00 00                          // ........

                CreateDWordField (PBUF, Zero, PIO0)

    013D: 8A 50 42 55 46 00 50 49 4F 30                    // .PBUF.PIO0

                CreateDWordField (PBUF, 0x04, DMA0)

    0147: 8A 50 42 55 46 0A 04 44 4D 41 30                 // .PBUF..DMA0

                CreateDWordField (PBUF, 0x08, PIO1)

    0152: 8A 50 42 55 46 0A 08 50 49 4F 31                 // .PBUF..PIO1

                CreateDWordField (PBUF, 0x0C, DMA1)

    015D: 8A 50 42 55 46 0A 0C 44 4D 41 31                 // .PBUF..DMA1

                CreateDWordField (PBUF, 0x10, FLAG)
                PIO0 = 0xF0
                PIO1 = 0xF0
                DMA0 = 0x14
                DMA1 = 0x14
                FLAG = 0x1F

    0168: 8A 50 42 55 46 0A 10 46 4C 41 47 70 0A F0 50 49  // .PBUF..FLAGp..PI
    0178: 4F 30 70 0A F0 50 49 4F 31 70 0A 14 44 4D 41 30  // O0p..PIO1p..DMA0
    0188: 70 0A 14 44 4D 41 31 70 0A 1F 46 4C 41 47        // p..DMA1p..FLAG

                Return (PBUF) /* \_SB_.PCI0.SAT0.SECD._GTM.PBUF */
            }


    0196: A4 50 42 55 46                                   // .PBUF

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }


    019B: 14 06 5F 53 54 4D 03                             // .._STM.

            Device (MAST)
            {

    01A2: 5B 82 0B 4D 41 53 54                             // [..MAST

                Name (_ADR, Zero)  // _ADR: Address
            }


    01A9: 08 5F 41 44 52 00                                // ._ADR.

            Device (SLAV)
            {

    01AF: 5B 82 0B 53 4C 41 56                             // [..SLAV

                Name (_ADR, One)  // _ADR: Address
            }
        }
    }
}



Table Header:
Table Body (Length 0x1BC)
