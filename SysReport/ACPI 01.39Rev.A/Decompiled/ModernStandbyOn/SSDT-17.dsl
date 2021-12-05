/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/jinmo/Documents/GitHub/HP-Elite-X2-1012-G2-Hackintosh/SysReport/ACPI 01.39Rev.A/Source/ModernStandbyOn/SSDT-17.aml, Fri Nov 26 22:44:14 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000069 (105)
 *     Revision         0x01
 *     Checksum         0x4D
 *     OEM ID           "HP"
 *     OEM Table ID     "HPCAHWID"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 1, "HP", "HPCAHWID", 0x00001000)
{
    External (FDRS, FieldUnitObj)

    Scope (\_SB)
    {
        Device (FDAD)
        {
            Name (_HID, "HPIC000C")  // _HID: Hardware ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((FDRS == One))
                {
                    If (Ones)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

