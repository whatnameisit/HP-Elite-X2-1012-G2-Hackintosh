{
    External (_SB_.PCI0.ISHD, DeviceObj)


    0024: A0 14 00 15 5C 2F 03 5F 53 42 5F 50 43 49 30 49  // ....\/._SB_PCI0I
    0034: 53 48 44 06 00                                   // SHD..

    If (CondRefOf (\_SB.PCI0.ISHD))
    {

    0039: A0 44 19 5B 12 5C 2F 03 5F 53 42 5F 50 43 49 30  // .D.[.\/._SB_PCI0
    0049: 49 53 48 44 00                                   // ISHD.

        Scope (\_SB.PCI0.ISHD)
        {

    004E: 10 4F 17 5C 2F 03 5F 53 42 5F 50 43 49 30 49 53  // .O.\/._SB_PCI0IS
    005E: 48 44                                            // HD

            Device (BUSD)
            {

    0060: 5B 82 4C 16 42 55 53 44                          // [.L.BUSD

                Name (_ADR, One)  // _ADR: Address

    0068: 08 5F 41 44 52 01                                // ._ADR.

                Device (HID0)
                {

    006E: 5B 82 38 48 49 44 30                             // [.8HID0

                    Name (_ADR, Zero)  // _ADR: Address

    0075: 08 5F 41 44 52 00                                // ._ADR.

                    Device (TLC1)
                    {

    007B: 5B 82 2B 54 4C 43 31                             // [.+TLC1

                        Name (_ADR, One)  // _ADR: Address

    0082: 08 5F 41 44 52 01                                // ._ADR.

                        Name (_PLD, 
    0088: 08 5F 50 4C 44                                   // ._PLD

Package (0x01)  // _PLD: Physical Location of Device
                        {

    008D: 12 1A 01                                         // ...

                            ToPLD (
                                PLD_Revision           = 0x2,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x320,
                                PLD_Height             = 0x7D0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x8D,
                                PLD_HorizontalOffset   = 0x16)

                        })
                    }
                }


    0090: 11 17 0A 14 82 00 00 00 20 03 D0 07 61 0D 00 00  // ........ ...a...
    00A0: 00 00 00 00 8D 00 16 00                          // ........

                Device (HID1)
                {

    00A8: 5B 82 38 48 49 44 31                             // [.8HID1

                    Name (_ADR, One)  // _ADR: Address

    00AF: 08 5F 41 44 52 01                                // ._ADR.

                    Device (TLC1)
                    {

    00B5: 5B 82 2B 54 4C 43 31                             // [.+TLC1

                        Name (_ADR, One)  // _ADR: Address

    00BC: 08 5F 41 44 52 01                                // ._ADR.

                        Name (_PLD, 
    00C2: 08 5F 50 4C 44                                   // ._PLD

Package (0x01)  // _PLD: Physical Location of Device
                        {

    00C7: 12 1A 01                                         // ...

                            ToPLD (
                                PLD_Revision           = 0x2,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x320,
                                PLD_Height             = 0x7D0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x8D,
                                PLD_HorizontalOffset   = 0x16)

                        })
                    }
                }


    00CA: 11 17 0A 14 82 00 00 00 20 03 D0 07 61 0D 00 00  // ........ ...a...
    00DA: 00 00 00 00 8D 00 16 00                          // ........

                Device (HID2)
                {

    00E2: 5B 82 39 48 49 44 32                             // [.9HID2

                    Name (_ADR, 0x02)  // _ADR: Address

    00E9: 08 5F 41 44 52 0A 02                             // ._ADR..

                    Device (TLC1)
                    {

    00F0: 5B 82 2B 54 4C 43 31                             // [.+TLC1

                        Name (_ADR, One)  // _ADR: Address

    00F7: 08 5F 41 44 52 01                                // ._ADR.

                        Name (_PLD, 
    00FD: 08 5F 50 4C 44                                   // ._PLD

Package (0x01)  // _PLD: Physical Location of Device
                        {

    0102: 12 1A 01                                         // ...

                            ToPLD (
                                PLD_Revision           = 0x2,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x320,
                                PLD_Height             = 0x7D0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x1,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x8D,
                                PLD_HorizontalOffset   = 0x16)

                        })
                    }
                }


    0105: 11 17 0A 14 82 00 00 00 20 03 D0 07 61 0D 00 00  // ........ ...a...
    0115: 04 00 00 00 8D 00 16 00                          // ........

                Device (HID3)
                {

    011D: 5B 82 39 48 49 44 33                             // [.9HID3

                    Name (_ADR, 0x03)  // _ADR: Address

    0124: 08 5F 41 44 52 0A 03                             // ._ADR..

                    Device (TLC1)
                    {

    012B: 5B 82 2B 54 4C 43 31                             // [.+TLC1

                        Name (_ADR, One)  // _ADR: Address

    0132: 08 5F 41 44 52 01                                // ._ADR.

                        Name (_PLD, 
    0138: 08 5F 50 4C 44                                   // ._PLD

Package (0x01)  // _PLD: Physical Location of Device
                        {

    013D: 12 1A 01                                         // ...

                            ToPLD (
                                PLD_Revision           = 0x2,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x320,
                                PLD_Height             = 0x7D0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x1,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x8D,
                                PLD_HorizontalOffset   = 0x16)

                        })
                    }
                }


    0140: 11 17 0A 14 82 00 00 00 20 03 D0 07 61 0D 00 00  // ........ ...a...
    0150: 04 00 00 00 8D 00 16 00                          // ........

                Device (HID4)
                {

    0158: 5B 82 39 48 49 44 34                             // [.9HID4

                    Name (_ADR, 0x04)  // _ADR: Address

    015F: 08 5F 41 44 52 0A 04                             // ._ADR..

                    Device (TLC1)
                    {

    0166: 5B 82 2B 54 4C 43 31                             // [.+TLC1

                        Name (_ADR, One)  // _ADR: Address

    016D: 08 5F 41 44 52 01                                // ._ADR.

                        Name (_PLD, 
    0173: 08 5F 50 4C 44                                   // ._PLD

Package (0x01)  // _PLD: Physical Location of Device
                        {

    0178: 12 1A 01                                         // ...

                            ToPLD (
                                PLD_Revision           = 0x2,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x320,
                                PLD_Height             = 0x7D0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x1,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x8D,
                                PLD_HorizontalOffset   = 0x16)

                        })
                    }
                }


    017B: 11 17 0A 14 82 00 00 00 20 03 D0 07 61 0D 00 00  // ........ ...a...
    018B: 04 00 00 00 8D 00 16 00                          // ........

                Device (HID5)
                {

    0193: 5B 82 39 48 49 44 35                             // [.9HID5

                    Name (_ADR, 0x05)  // _ADR: Address

    019A: 08 5F 41 44 52 0A 05                             // ._ADR..

                    Device (TLC1)
                    {

    01A1: 5B 82 2B 54 4C 43 31                             // [.+TLC1

                        Name (_ADR, One)  // _ADR: Address

    01A8: 08 5F 41 44 52 01                                // ._ADR.

                        Name (_PLD, 
    01AE: 08 5F 50 4C 44                                   // ._PLD

Package (0x01)  // _PLD: Physical Location of Device
                        {

    01B3: 12 1A 01                                         // ...

                            ToPLD (
                                PLD_Revision           = 0x2,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x320,
                                PLD_Height             = 0x7D0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "CENTER",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "VERTICALRECTANGLE",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x1,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x8D,
                                PLD_HorizontalOffset   = 0x16)

                        })
                    }
                }
            }
        }
    }


    01B6: 11 17 0A 14 82 00 00 00 20 03 D0 07 61 0D 00 00  // ........ ...a...
    01C6: 04 00 00 00 8D 00 16 00                          // ........

    Scope (_SB)
    {

    01CE: 10 49 18 5F 53 42 5F                             // .I._SB_

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {

    01D5: 14 42 18 5F 50 4C 44 08                          // .B._PLD.

            Name (PLDP, 
    01DD: 08 50 4C 44 50                                   // .PLDP

Package (0x0C)
            {

    01E2: 12 40 17 0C                                      // .@..

                Package (0x01)
                {

    01E6: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                        /* 0008 */  0x21, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // !.......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    01E9: 11 17 0A 14 02 00 00 00 20 03 D0 07 21 0C 00 00  // ........ ...!...
    01F9: 00 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    0201: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                        /* 0008 */  0x29, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ).......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    0204: 11 17 0A 14 02 00 00 00 20 03 D0 07 29 0C 00 00  // ........ ...)...
    0214: 00 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    021C: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x50, 0x00, 0xD0, 0x07,  // .\\\P...
                        /* 0008 */  0x11, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    021F: 11 17 0A 14 02 5C 5C 5C 50 00 D0 07 11 0C 00 00  // .....\\\P.......
    022F: 00 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    0237: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x50, 0x00, 0xD0, 0x07,  // .\\\P...
                        /* 0008 */  0x19, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    023A: 11 17 0A 14 02 5C 5C 5C 50 00 D0 07 19 0C 00 00  // .....\\\P.......
    024A: 00 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    0252: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x20, 0x03, 0x50, 0x00,  // .\\\ .P.
                        /* 0008 */  0x01, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    0255: 11 17 0A 14 02 5C 5C 5C 20 03 50 00 01 0C 00 00  // .....\\\ .P.....
    0265: 00 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    026D: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x20, 0x03, 0x50, 0x00,  // .\\\ .P.
                        /* 0008 */  0x09, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    0270: 11 17 0A 14 02 5C 5C 5C 20 03 50 00 09 0C 00 00  // .....\\\ .P.....
    0280: 00 00 04 00 00 00 00 00                          // ........

                Package (0x03)
                {

    0288: 12 43 04 03                                      // .C..

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                        /* 0008 */  0x21, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // !.......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }, 


    028C: 11 17 0A 14 02 00 00 00 20 03 D0 07 21 0C 00 00  // ........ ...!...
    029C: 04 00 04 00 00 00 00 00                          // ........

                    ToUUID ("f01cfc40-3c75-4523-9e44-215cb154bda6") /* Unknown UUID */, 

    02A4: 11 13 0A 10 40 FC 1C F0 75 3C 23 45 9E 44 21 5C  // ....@...u<#E.D!\
    02B4: B1 54 BD A6                                      // .T..

                    Buffer (0x10)
                    {
                        /* 0000 */  0x41, 0x04, 0xC0, 0x01, 0xB4, 0x00, 0xB4, 0x00,  // A.......
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                    }
                }, 


    02B8: 11 13 0A 10 41 04 C0 01 B4 00 B4 00 00 00 00 00  // ....A...........
    02C8: 00 00 00 00                                      // ....

                Package (0x01)
                {

    02CC: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                        /* 0008 */  0x29, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ).......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    02CF: 11 17 0A 14 02 00 00 00 20 03 D0 07 29 0C 00 00  // ........ ...)...
    02DF: 04 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    02E7: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x50, 0x00, 0xD0, 0x07,  // .\\\P...
                        /* 0008 */  0x11, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    02EA: 11 17 0A 14 02 5C 5C 5C 50 00 D0 07 11 0C 00 00  // .....\\\P.......
    02FA: 04 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    0302: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x50, 0x00, 0xD0, 0x07,  // .\\\P...
                        /* 0008 */  0x19, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    0305: 11 17 0A 14 02 5C 5C 5C 50 00 D0 07 19 0C 00 00  // .....\\\P.......
    0315: 04 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    031D: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x20, 0x03, 0x50, 0x00,  // .\\\ .P.
                        /* 0008 */  0x01, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 


    0320: 11 17 0A 14 02 5C 5C 5C 20 03 50 00 01 0C 00 00  // .....\\\ .P.....
    0330: 04 00 04 00 00 00 00 00                          // ........

                Package (0x01)
                {

    0338: 12 1A 01                                         // ...

                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x20, 0x03, 0x50, 0x00,  // .\\\ .P.
                        /* 0008 */  0x09, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }
            })

    033B: 11 17 0A 14 02 5C 5C 5C 20 03 50 00 09 0C 00 00  // .....\\\ .P.....
    034B: 04 00 04 00 00 00 00 00                          // ........

            Return (PLDP) /* \_SB_._PLD.PLDP */
        }
    }
}



Table Header:
Table Body (Length 0x358)
