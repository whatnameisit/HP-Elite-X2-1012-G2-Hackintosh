{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)


    0024: A0 21 00 15 5C 2E 5F 53 42 5F 50 43 49 30 06 00  // .!..\._SB_PCI0..
    0034: 15 5C 2F 03 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0044: 06 00                                            // ..

    Scope (\_SB.PCI0.LPCB)
    {

    0046: 10 43 0E 5C 2F 03 5F 53 42 5F 50 43 49 30 4C 50  // .C.\/._SB_PCI0LP
    0056: 43 42                                            // CB

        Device (NSHM)
        {

    0058: 5B 82 40 0D 4E 53 48 4D                          // [.@.NSHM

            Name (IOBA, 0x00000200)

    0060: 08 49 4F 42 41 0C 00 02 00 00                    // .IOBA.....

            Name (IOLN, 0x00000040)

    006A: 08 49 4F 4C 4E 0C 40 00 00 00                    // .IOLN.@...

            Name (MEBA, 0xFEDF0000)

    0074: 08 4D 45 42 41 0C 00 00 DF FE                    // .MEBA.....

            Name (MELN, 0x00010000)

    007E: 08 4D 45 4C 4E 0C 00 00 01 00                    // .MELN.....

            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID

    0088: 08 5F 48 49 44 0C 41 D0 0C 02                    // ._HID.A...

            Name (_UID, 0x1000)  // _UID: Unique ID

    0092: 08 5F 55 49 44 0B 00 10                          // ._UID...

            Name (BUF0, 
    009A: 08 42 55 46 30                                   // .BUF0

ResourceTemplate ()
            {
                IO (Decode16,
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x01,               // Alignment
                    0x00,               // Length
                    _Y3E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y3F)
            })

    009F: 11 19 0A 16 47 01 00 00 00 00 01 00 86 09 00 01  // ....G...........
    00AF: 00 00 00 00 00 00 00 00 79 00                    // ........y.

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {

    00B9: 14 40 07 5F 43 52 53 08                          // .@._CRS.

                CreateWordField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3E._MIN, IMIN)  // _MIN: Minimum Base Address

    00C1: 8B 42 55 46 30 0A 02 49 4D 49 4E                 // .BUF0..IMIN

                CreateWordField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3E._MAX, IMAX)  // _MAX: Maximum Base Address

    00CC: 8B 42 55 46 30 0A 04 49 4D 41 58                 // .BUF0..IMAX

                CreateByteField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3E._LEN, ILEN)  // _LEN: Length
                IMIN = IOBA /* \_SB_.PCI0.LPCB.NSHM.IOBA */
                IMAX = IOBA /* \_SB_.PCI0.LPCB.NSHM.IOBA */
                ILEN = IOLN /* \_SB_.PCI0.LPCB.NSHM.IOLN */

    00D7: 8C 42 55 46 30 0A 07 49 4C 45 4E 70 49 4F 42 41  // .BUF0..ILENpIOBA
    00E7: 49 4D 49 4E 70 49 4F 42 41 49 4D 41 58 70 49 4F  // IMINpIOBAIMAXpIO
    00F7: 4C 4E 49 4C 45 4E                                // LNILEN

                CreateDWordField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3F._BAS, MBAS)  // _BAS: Base Address

    00FD: 8A 42 55 46 30 0A 0C 4D 42 41 53                 // .BUF0..MBAS

                CreateDWordField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3F._LEN, MLEN)  // _LEN: Length
                MBAS = MEBA /* \_SB_.PCI0.LPCB.NSHM.MEBA */
                MLEN = MELN /* \_SB_.PCI0.LPCB.NSHM.MELN */

    0108: 8A 42 55 46 30 0A 10 4D 4C 45 4E 70 4D 45 42 41  // .BUF0..MLENpMEBA
    0118: 4D 42 41 53 70 4D 45 4C 4E 4D 4C 45 4E           // MBASpMELNMLEN

                Return (BUF0) /* \_SB_.PCI0.LPCB.NSHM.BUF0 */
            }
        }
    }
}



Table Header:
Table Body (Length 0x12A)
