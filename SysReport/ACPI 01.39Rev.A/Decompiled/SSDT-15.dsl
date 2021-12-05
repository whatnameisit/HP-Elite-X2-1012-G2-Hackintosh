/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-15.aml, Sat Nov 20 10:35:45 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000358 (856)
 *     Revision         0x02
 *     Checksum         0xA0
 *     OEM ID           "INTEL "
 *     OEM Table ID     "AMLY4ISH"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "AMLY4ISH", 0x00000000)
{
    External (_SB_.PCI0.ISHD, DeviceObj)

    If (CondRefOf (\_SB.PCI0.ISHD))
    {
        Scope (\_SB.PCI0.ISHD)
        {
            Device (BUSD)
            {
                Name (_ADR, One)  // _ADR: Address
                Device (HID0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (TLC1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
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

                Device (HID1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Device (TLC1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
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

                Device (HID2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Device (TLC1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
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

                Device (HID3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Device (TLC1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
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

                Device (HID4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Device (TLC1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
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

                Device (HID5)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Device (TLC1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
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

    Scope (_SB)
    {
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x0C)
            {
                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                        /* 0008 */  0x21, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // !.......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                        /* 0008 */  0x29, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ).......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x50, 0x00, 0xD0, 0x07,  // .\\\P...
                        /* 0008 */  0x11, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x50, 0x00, 0xD0, 0x07,  // .\\\P...
                        /* 0008 */  0x19, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x20, 0x03, 0x50, 0x00,  // .\\\ .P.
                        /* 0008 */  0x01, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x20, 0x03, 0x50, 0x00,  // .\\\ .P.
                        /* 0008 */  0x09, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x03)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                        /* 0008 */  0x21, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // !.......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }, 

                    ToUUID ("f01cfc40-3c75-4523-9e44-215cb154bda6") /* Unknown UUID */, 
                    Buffer (0x10)
                    {
                        /* 0000 */  0x41, 0x04, 0xC0, 0x01, 0xB4, 0x00, 0xB4, 0x00,  // A.......
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                        /* 0008 */  0x29, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ).......
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x50, 0x00, 0xD0, 0x07,  // .\\\P...
                        /* 0008 */  0x11, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x50, 0x00, 0xD0, 0x07,  // .\\\P...
                        /* 0008 */  0x19, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x20, 0x03, 0x50, 0x00,  // .\\\ .P.
                        /* 0008 */  0x01, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }, 

                Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x02, 0x5C, 0x5C, 0x5C, 0x20, 0x03, 0x50, 0x00,  // .\\\ .P.
                        /* 0008 */  0x09, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    }
                }
            })
            Return (PLDP) /* \_SB_._PLD.PLDP */
        }
    }
}

