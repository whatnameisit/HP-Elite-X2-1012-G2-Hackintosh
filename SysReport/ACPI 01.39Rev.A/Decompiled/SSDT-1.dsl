/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-1.aml, Sat Nov 20 10:35:45 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000012A (298)
 *     Revision         0x02
 *     Checksum         0x76
 *     OEM ID           "HP    "
 *     OEM Table ID     "ShmTable"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "HP    ", "ShmTable", 0x00000001)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (\_SB.PCI0.LPCB)
    {
        Device (NSHM)
        {
            Name (IOBA, 0x00000200)
            Name (IOLN, 0x00000040)
            Name (MEBA, 0xFEDF0000)
            Name (MELN, 0x00010000)
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x1000)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
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
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3E._MIN, IMIN)  // _MIN: Minimum Base Address
                CreateWordField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3E._MAX, IMAX)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3E._LEN, ILEN)  // _LEN: Length
                IMIN = IOBA /* \_SB_.PCI0.LPCB.NSHM.IOBA */
                IMAX = IOBA /* \_SB_.PCI0.LPCB.NSHM.IOBA */
                ILEN = IOLN /* \_SB_.PCI0.LPCB.NSHM.IOLN */
                CreateDWordField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3F._BAS, MBAS)  // _BAS: Base Address
                CreateDWordField (BUF0, \_SB.PCI0.LPCB.NSHM._Y3F._LEN, MLEN)  // _LEN: Length
                MBAS = MEBA /* \_SB_.PCI0.LPCB.NSHM.MEBA */
                MLEN = MELN /* \_SB_.PCI0.LPCB.NSHM.MELN */
                Return (BUF0) /* \_SB_.PCI0.LPCB.NSHM.BUF0 */
            }
        }
    }
}

