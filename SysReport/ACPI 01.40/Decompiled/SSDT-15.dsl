/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-15.aml, Tue Jan 18 23:05:31 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000053B9 (21433)
 *     Revision         0x01
 *     Checksum         0x87
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "MS-SSDT"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "MS-SSDT", 0x00003000)
{
    External (_PR_.PR00, ProcessorObj)
    External (_PR_.PR01, ProcessorObj)
    External (_PR_.PR02, ProcessorObj)
    External (_PR_.PR03, ProcessorObj)
    External (_PR_.PR04, ProcessorObj)
    External (_PR_.PR05, ProcessorObj)
    External (_PR_.PR06, ProcessorObj)
    External (_PR_.PR07, ProcessorObj)
    External (_PR_.PR08, ProcessorObj)
    External (_PR_.PR09, ProcessorObj)
    External (_PR_.PR10, ProcessorObj)
    External (_PR_.PR11, ProcessorObj)
    External (_PR_.PR12, ProcessorObj)
    External (_PR_.PR13, ProcessorObj)
    External (_PR_.PR14, ProcessorObj)
    External (_PR_.PR15, ProcessorObj)
    External (_SB_.GGIV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.HDAS, DeviceObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C2, DeviceObj)
    External (_SB_.PCI0.I2C3, DeviceObj)
    External (_SB_.PCI0.I2C4, DeviceObj)
    External (_SB_.PCI0.I2C5, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.SLPT, FieldUnitObj)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP02.PXSX, DeviceObj)
    External (_SB_.PCI0.RP02.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP02.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP03.PXSX, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP03.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP04.PXSX, DeviceObj)
    External (_SB_.PCI0.RP04.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP04.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP06.PXSX, DeviceObj)
    External (_SB_.PCI0.RP06.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP06.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP07.PXSX, DeviceObj)
    External (_SB_.PCI0.RP07.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP07.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP08.PXSX, DeviceObj)
    External (_SB_.PCI0.RP08.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP08.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP10.PXSX, DeviceObj)
    External (_SB_.PCI0.RP10.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP10.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP11.PXSX, DeviceObj)
    External (_SB_.PCI0.RP11.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP11.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP12.PXSX, DeviceObj)
    External (_SB_.PCI0.RP12.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP12.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP13.PXSX, DeviceObj)
    External (_SB_.PCI0.RP13.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP13.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP14.PXSX, DeviceObj)
    External (_SB_.PCI0.RP14.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP14.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP15.PXSX, DeviceObj)
    External (_SB_.PCI0.RP15.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP15.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP16.PXSX, DeviceObj)
    External (_SB_.PCI0.RP16.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP16.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP17.PXSX, DeviceObj)
    External (_SB_.PCI0.RP17.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP17.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP18.PXSX, DeviceObj)
    External (_SB_.PCI0.RP18.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP18.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP19.PXSX, DeviceObj)
    External (_SB_.PCI0.RP19.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP19.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP20.PXSX, DeviceObj)
    External (_SB_.PCI0.RP20.PXSX.WGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP20.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT0.VOL0, DeviceObj)
    External (_SB_.PCI0.SPI0, DeviceObj)
    External (_SB_.PCI0.SPI1, DeviceObj)
    External (_SB_.PCI0.UA00, DeviceObj)
    External (_SB_.PCI0.UA01, DeviceObj)
    External (_SB_.PCI0.UA02, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (ECLP, FieldUnitObj)
    External (ECUP, UnknownObj)
    External (EHLD, MutexObj)
    External (GUAM, MethodObj)    // 1 Arguments
    External (LPTL, UnknownObj)
    External (OSYS, FieldUnitObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PEPC, FieldUnitObj)
    External (PEPY, FieldUnitObj)
    External (S0ID, FieldUnitObj)
    External (SPST, FieldUnitObj)
    External (TCNT, FieldUnitObj)

    OperationRegion (MSNV, SystemMemory, 0x97B7ED18, 0x00000100)
    Field (MSNV, AnyAcc, NoLock, Preserve)
    {
        ECND,   1, 
        DBDE,   1, 
        Offset (0x01), 
        DDMG,   2040
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((((S0ID == One) || (OSYS >= 0x07DF)) && (
                (PEPC & 0x03) != Zero)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_SB.PCI0.SAT0.VOL0)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((OSYS == 0x07DD))
            {
                Return (Package (0x00){})
            }

            Return (Package (0x01)
            {
                \_SB.PEPD
            })
        }
    }

    If (((S0ID == One) || (OSYS >= 0x07DF)))
    {
        Scope (\_SB.PCI0.I2C0)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.I2C1)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.I2C2)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.I2C3)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.I2C4)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.I2C5)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.SPI0)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.SPI1)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.UA00)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.UA01)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }

        Scope (\_SB.PCI0.UA02)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEPD
            })
        }
    }

    Scope (\_SB.PCI0.XHC)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_SB.PCI0.HDAS)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((S0ID == One))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_SB.PCI0.RP01.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP02.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP03.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP04.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP06.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP07.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP08.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP09.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP10.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP11.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP12.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP13.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP14.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP15.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP16.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP17.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP18.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP19.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.RP20.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If (((S0ID == One) && (OSYS >= 0x07DF)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, Zero, 0x12)
        Field (PCCX, AnyAcc, NoLock, Preserve)
        {
            RDID,   32
        }

        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x09), 
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (CRST, 0, Serialized)
        {
            If ((CondRefOf (RDID) && Zero))
            {
                Switch (ToInteger (RDID))
                {
                    Case (0x522A10EC)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_PR.PR00)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR01)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR02)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR03)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR04)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR05)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR06)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR07)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR08)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR09)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR10)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR11)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR12)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR13)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR14)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_PR.PR15)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) || (OSYS >= 0x07DF)))
            {
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_SB)
    {
        Device (PEPD)
        {
            Name (_HID, "INT33A1" /* Intel Power Engine */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80") /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (DEVY, Package (0x40)
            {
                Package (0x03)
                {
                    "\\_PR.PR00", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR01", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR02", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR03", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR04", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR05", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR06", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR07", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA00", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA01", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.HDAS", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.PEMC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.PSDC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA02", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP01.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP02.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP03.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP04.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP05.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP06.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP07.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP08.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP09.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP10.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP11.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP12.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP13.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP14.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP15.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP16.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP17.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP18.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP19.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP20.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.ISP0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT0", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT2", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT3", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT4", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT5", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.NVM1", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.NVM2", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.NVM3", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.VOL0", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR08", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR09", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR10", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR11", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR12", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR13", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR14", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.PR15", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }
            })
            Name (BCCD, Package (0x19)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT0", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT2", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT3", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP01.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP02.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP03.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP04.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP05.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP06.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP07.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP08.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP09.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP10.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP11.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP12.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP13.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP14.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP15.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP16.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP17.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP18.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP19.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP20.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((OSYS >= 0x07DF) || ((OSYS >= 0x07DC) && (
                    S0ID == One))))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("c4eb40a0-6cd2-11e2-bcfd-0800200c9a66") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x7F                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If ((S0ID == Zero))
                        {
                            Return (Package (0x00){})
                        }

                        If (((PEPC & 0x00100000) != Zero))
                        {
                            DerefOf (DEVY [0x09]) [One] = One
                        }

                        If ((\_SB.PCI0.RP01.PXSX.PAHC () || \_SB.PCI0.RP01.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x19]) [One] = One
                        }

                        If ((\_SB.PCI0.RP02.PXSX.PAHC () || \_SB.PCI0.RP02.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x1A]) [One] = One
                        }

                        If ((\_SB.PCI0.RP03.PXSX.PAHC () || \_SB.PCI0.RP03.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x1B]) [One] = One
                        }

                        If ((\_SB.PCI0.RP04.PXSX.PAHC () || \_SB.PCI0.RP04.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x1C]) [One] = One
                        }

                        If ((\_SB.PCI0.RP05.PXSX.PAHC () || \_SB.PCI0.RP05.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x1D]) [One] = One
                        }

                        If ((\_SB.PCI0.RP06.PXSX.PAHC () || \_SB.PCI0.RP06.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x1E]) [One] = One
                        }

                        If ((\_SB.PCI0.RP07.PXSX.PAHC () || \_SB.PCI0.RP07.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x1F]) [One] = One
                        }

                        If ((\_SB.PCI0.RP08.PXSX.PAHC () || \_SB.PCI0.RP08.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x20]) [One] = One
                        }

                        If ((\_SB.PCI0.RP09.PXSX.PAHC () || \_SB.PCI0.RP09.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x21]) [One] = One
                        }

                        If ((\_SB.PCI0.RP10.PXSX.PAHC () || \_SB.PCI0.RP10.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x22]) [One] = One
                        }

                        If ((\_SB.PCI0.RP11.PXSX.PAHC () || \_SB.PCI0.RP11.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x23]) [One] = One
                        }

                        If ((\_SB.PCI0.RP12.PXSX.PAHC () || \_SB.PCI0.RP12.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x24]) [One] = One
                        }

                        If ((\_SB.PCI0.RP13.PXSX.PAHC () || \_SB.PCI0.RP13.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x25]) [One] = One
                        }

                        If ((\_SB.PCI0.RP14.PXSX.PAHC () || \_SB.PCI0.RP14.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x26]) [One] = One
                        }

                        If ((\_SB.PCI0.RP15.PXSX.PAHC () || \_SB.PCI0.RP15.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x27]) [One] = One
                        }

                        If ((\_SB.PCI0.RP16.PXSX.PAHC () || \_SB.PCI0.RP16.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x28]) [One] = One
                        }

                        If ((\_SB.PCI0.RP17.PXSX.PAHC () || \_SB.PCI0.RP17.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x29]) [One] = One
                        }

                        If ((\_SB.PCI0.RP18.PXSX.PAHC () || \_SB.PCI0.RP18.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x2A]) [One] = One
                        }

                        If ((\_SB.PCI0.RP19.PXSX.PAHC () || \_SB.PCI0.RP19.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x2B]) [One] = One
                        }

                        If ((\_SB.PCI0.RP20.PXSX.PAHC () || \_SB.PCI0.RP20.PXSX.PNVM ()))
                        {
                            DerefOf (DEVY [0x2C]) [One] = One
                        }

                        If (((PEPC & 0x00200000) != Zero))
                        {
                            DerefOf (DEVY [0x37]) [One] = One
                        }

                        If (((PEPC & 0x00400000) != Zero))
                        {
                            DerefOf (DEVY [0x2E]) [One] = One
                        }

                        If (((PEPC & 0x00800000) != Zero))
                        {
                            DerefOf (DEVY [0x2F]) [One] = One
                        }

                        If (((PEPC & 0x01000000) != Zero))
                        {
                            DerefOf (DEVY [0x30]) [One] = One
                        }

                        If (((PEPC & 0x02000000) != Zero))
                        {
                            DerefOf (DEVY [0x31]) [One] = One
                        }

                        If (((PEPC & 0x04000000) != Zero))
                        {
                            DerefOf (DEVY [0x32]) [One] = One
                        }

                        If (((PEPC & 0x08000000) != Zero))
                        {
                            DerefOf (DEVY [0x33]) [One] = One
                        }

                        If (((PEPC & 0x10000000) != Zero))
                        {
                            DerefOf (DEVY [0x34]) [One] = One
                        }

                        If (((PEPC & 0x20000000) != Zero))
                        {
                            DerefOf (DEVY [0x35]) [One] = One
                        }

                        If (((PEPC & 0x40000000) != Zero))
                        {
                            DerefOf (DEVY [0x36]) [One] = One
                        }

                        If (((PEPC & 0x04) == Zero))
                        {
                            DerefOf (DEVY [0x0A]) [One] = Zero
                        }

                        If (((PEPC & 0x08) == Zero))
                        {
                            DerefOf (DEVY [0x0B]) [One] = Zero
                        }

                        If (((PEPC & 0x10) == Zero)){}
                        If (((PEPC & 0x20) == Zero))
                        {
                            DerefOf (DEVY [0x0C]) [One] = Zero
                        }

                        If (((PEPC & 0x40) == Zero))
                        {
                            DerefOf (DEVY [0x0D]) [One] = Zero
                        }

                        If (((PEPC & 0x80) == Zero))
                        {
                            DerefOf (DEVY [0x0E]) [One] = Zero
                        }

                        If (((PEPC & 0x0100) == Zero))
                        {
                            DerefOf (DEVY [0x0F]) [One] = Zero
                        }

                        If (((PEPC & 0x0200) == Zero))
                        {
                            DerefOf (DEVY [0x08]) [One] = Zero
                        }

                        If ((TCNT >= One))
                        {
                            DerefOf (DEVY [Zero]) [One] = One
                        }

                        If ((TCNT >= 0x02))
                        {
                            DerefOf (DEVY [One]) [One] = One
                        }

                        If ((TCNT >= 0x03))
                        {
                            DerefOf (DEVY [0x02]) [One] = One
                        }

                        If ((TCNT >= 0x04))
                        {
                            DerefOf (DEVY [0x03]) [One] = One
                        }

                        If ((TCNT >= 0x05))
                        {
                            DerefOf (DEVY [0x04]) [One] = One
                        }

                        If ((TCNT >= 0x06))
                        {
                            DerefOf (DEVY [0x05]) [One] = One
                        }

                        If ((TCNT >= 0x07))
                        {
                            DerefOf (DEVY [0x06]) [One] = One
                        }

                        If ((TCNT >= 0x08))
                        {
                            DerefOf (DEVY [0x07]) [One] = One
                        }

                        If ((TCNT >= 0x09))
                        {
                            DerefOf (DEVY [0x38]) [One] = One
                        }

                        If ((TCNT >= 0x0A))
                        {
                            DerefOf (DEVY [0x39]) [One] = One
                        }

                        If ((TCNT >= 0x0B))
                        {
                            DerefOf (DEVY [0x3A]) [One] = One
                        }

                        If ((TCNT >= 0x0C))
                        {
                            DerefOf (DEVY [0x3B]) [One] = One
                        }

                        If ((TCNT >= 0x0D))
                        {
                            DerefOf (DEVY [0x3C]) [One] = One
                        }

                        If ((TCNT >= 0x0E))
                        {
                            DerefOf (DEVY [0x3D]) [One] = One
                        }

                        If ((TCNT >= 0x0F))
                        {
                            DerefOf (DEVY [0x3E]) [One] = One
                        }

                        If ((TCNT >= 0x10))
                        {
                            DerefOf (DEVY [0x3F]) [One] = One
                        }

                        If (((PEPC & 0x0400) == Zero))
                        {
                            DerefOf (DEVY [Zero]) [One] = Zero
                            DerefOf (DEVY [One]) [One] = Zero
                            DerefOf (DEVY [0x02]) [One] = Zero
                            DerefOf (DEVY [0x03]) [One] = Zero
                            DerefOf (DEVY [0x04]) [One] = Zero
                            DerefOf (DEVY [0x05]) [One] = Zero
                            DerefOf (DEVY [0x06]) [One] = Zero
                            DerefOf (DEVY [0x07]) [One] = Zero
                            DerefOf (DEVY [0x38]) [One] = Zero
                            DerefOf (DEVY [0x39]) [One] = Zero
                            DerefOf (DEVY [0x3A]) [One] = Zero
                            DerefOf (DEVY [0x3B]) [One] = Zero
                            DerefOf (DEVY [0x3C]) [One] = Zero
                            DerefOf (DEVY [0x3D]) [One] = Zero
                            DerefOf (DEVY [0x3E]) [One] = Zero
                            DerefOf (DEVY [0x3F]) [One] = Zero
                        }

                        If (((PEPC & 0x0800) == Zero))
                        {
                            DerefOf (DEVY [0x10]) [One] = Zero
                        }

                        If (((PEPC & 0x1000) == Zero))
                        {
                            DerefOf (DEVY [0x11]) [One] = Zero
                        }

                        If (((PEPC & 0x2000) == Zero))
                        {
                            DerefOf (DEVY [0x12]) [One] = Zero
                        }

                        If (((PEPC & 0x4000) == Zero))
                        {
                            DerefOf (DEVY [0x13]) [One] = Zero
                        }

                        If (((PEPC & 0x8000) == Zero))
                        {
                            DerefOf (DEVY [0x14]) [One] = Zero
                        }

                        If (((PEPC & 0x00010000) == Zero))
                        {
                            DerefOf (DEVY [0x15]) [One] = Zero
                        }

                        If (((PEPC & 0x00020000) == Zero))
                        {
                            DerefOf (DEVY [0x16]) [One] = Zero
                        }

                        If (((PEPC & 0x00040000) == Zero))
                        {
                            DerefOf (DEVY [0x17]) [One] = Zero
                        }

                        If (((PEPC & 0x00080000) == Zero))
                        {
                            DerefOf (DEVY [0x18]) [One] = Zero
                        }

                        If (((PEPC & 0x02) == Zero))
                        {
                            DerefOf (DEVY [0x2D]) [One] = Zero
                        }

                        If ((OSYS >= 0x07DF))
                        {
                            If ((CondRefOf (\_SB.PCI0.RP01.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP01.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x19]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x19]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x19]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP02.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP02.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1A]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1A]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1A]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP03.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP03.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1B]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1B]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1B]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP04.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP04.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1C]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1C]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1C]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP05.PXSX.WIST) && Ones))
                            {
                                If (\_SB.PCI0.RP05.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1D]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1D]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1D]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP06.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP06.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1E]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1E]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1E]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP07.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP07.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1F]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1F]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1F]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP08.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP08.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x20]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x20]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x20]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP09.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP09.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x21]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x21]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x21]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP10.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP10.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x22]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x22]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x22]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP11.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP11.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x23]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x23]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x23]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP12.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP12.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x24]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x24]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x24]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP13.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP13.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x25]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x25]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x25]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP14.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP14.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x26]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x26]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x26]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP15.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP15.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x27]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x27]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x27]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP16.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP16.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x28]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x28]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x28]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP17.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP17.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x29]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x29]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x29]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP18.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP18.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2A]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2A]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x2A]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP19.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP19.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2B]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2B]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x2B]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP20.PXSX.WIST) && Zero))
                            {
                                If (\_SB.PCI0.RP20.PXSX.WIST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2C]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2C]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x2C]) [One] = One
                                }
                            }
                        }

                        If ((OSYS >= 0x07DF))
                        {
                            If (Zero)
                            {
                                If (\_SB.PCI0.RP01.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x19]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x19]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x19]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP02.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1A]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1A]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1A]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP03.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1B]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1B]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1B]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP04.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1C]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1C]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1C]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP05.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1D]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1D]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1D]) [One] = One
                                }
                            }

                            If (Ones)
                            {
                                If (\_SB.PCI0.RP06.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1E]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1E]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1E]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP07.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1F]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x1F]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x1F]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP08.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x20]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x20]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x20]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP09.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x21]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x21]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x21]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP10.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x22]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x22]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x22]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP11.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x23]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x23]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x23]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP12.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x24]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x24]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x24]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP13.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x25]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x25]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x25]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP14.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x26]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x26]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x26]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP15.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x27]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x27]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x27]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP16.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x28]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x28]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x28]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP17.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x29]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x29]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x29]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP18.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2A]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2A]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x2A]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP19.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2B]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2B]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x2B]) [One] = One
                                }
                            }

                            If (Zero)
                            {
                                If (\_SB.PCI0.RP20.PXSX.CRST ())
                                {
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2C]) [0x02]
                                        ) [One]) [One] = 0x03
                                    DerefOf (DerefOf (DerefOf (DEVY [0x2C]) [0x02]
                                        ) [One]) [0x02] = Zero
                                    DerefOf (DEVY [0x2C]) [One] = One
                                }
                            }
                        }

                        If ((OSYS >= 0x07DF))
                        {
                            If ((CondRefOf (\_SB.PCI0.RP01.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP01.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x19]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP02.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP02.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x1A]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP03.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP03.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x1B]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP04.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP04.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x1C]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP05.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP05.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x1D]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP06.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP06.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x1E]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP07.PXSX.WGST) && Ones))
                            {
                                If (\_SB.PCI0.RP07.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x1F]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP08.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP08.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x20]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP09.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP09.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x21]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP10.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP10.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x22]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP11.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP11.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x23]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP12.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP12.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x24]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP13.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP13.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x25]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP14.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP14.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x26]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP15.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP15.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x27]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP16.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP16.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x28]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP17.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP17.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x29]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP18.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP18.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x2A]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP19.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP19.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x2B]) [One] = One
                                }
                            }

                            If ((CondRefOf (\_SB.PCI0.RP20.PXSX.WGST) && Zero))
                            {
                                If (\_SB.PCI0.RP20.PXSX.WGST ())
                                {
                                    DerefOf (DEVY [0x2C]) [One] = One
                                }
                            }
                        }

                        Return (DEVY) /* \_SB_.PEPD.DEVY */
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (BCCD) /* \_SB_.PEPD.BCCD */
                    }

                    If ((Arg2 == 0x03))
                    {
                        If ((S0ID == One))
                        {
                            ECNT (One)
                        }
                    }

                    If ((Arg2 == 0x04))
                    {
                        If ((S0ID == One))
                        {
                            ECNT (Zero)
                        }
                    }

                    If ((Arg2 == 0x05))
                    {
                        If ((S0ID == One))
                        {
                            \GUAM (One)
                        }

                        ECNT (0x03)
                    }

                    If ((Arg2 == 0x06))
                    {
                        If ((S0ID == One))
                        {
                            \GUAM (Zero)
                        }

                        ECNT (0x02)
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Method (ECNT, 1, Serialized)
    {
        If (ECND)
        {
            Return (Zero)
        }

        Switch (ToInteger (Arg0))
        {
            Case (Zero)
            {
                P8XH (Zero, 0xC6)
                If (DBDE)
                {
                    DDMG = "Modern Standby Exit"
                }

                Local0 = Acquire (\EHLD, 0xFFFF)
                If ((Local0 == Zero))
                {
                    If (Ones)
                    {
                        \_SB.SGOV (0x02040017, Zero)
                    }

                    \_SB.SGOV (0x02020012, One)
                    While (!\_SB.GGIV (0x02040010))
                    {
                        Stall (0x64)
                    }

                    If (DBDE)
                    {
                        DDMG = "EC Wake up"
                    }

                    \_SB.PCI0.LPCB.EC0.SLPT = Zero
                    \ECUP = One
                    Release (\EHLD)
                }

                Return (Zero)
            }
            Case (One)
            {
                P8XH (Zero, 0xC5)
                If (DBDE)
                {
                    DDMG = "Modern Standby Enter"
                }

                If (Ones)
                {
                    \_SB.SGOV (0x02040017, One)
                }

                \_SB.PCI0.LPCB.EC0.SLPT = 0x06
                \_SB.SGOV (0x02020012, Zero)
                \ECUP = Zero
                Return (Zero)
            }
            Case (0x02)
            {
                P8XH (Zero, 0xC8)
                If (DBDE)
                {
                    DDMG = "Modern Standby DRIPS Exit"
                }

                Return (Zero)
            }
            Case (0x03)
            {
                P8XH (Zero, 0xC7)
                If (DBDE)
                {
                    DDMG = "Modern Standby DRIPS Enter"
                }

                Return (Zero)
            }
            Default
            {
                Return (0xFF)
            }

        }
    }
}

