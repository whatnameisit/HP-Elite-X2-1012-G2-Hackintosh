/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of DBGP-1.aml, Tue Jan 18 23:05:31 2022
 *
 * ACPI Data Table [DBGP]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "DBGP"    [Debug Port table]
[004h 0004   4]                 Table Length : 00000034
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 8C
[00Ah 0010   6]                       Oem ID : "INTEL "
[010h 0016   8]                 Oem Table ID : ""
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "MSFT"
[020h 0032   4]        Asl Compiler Revision : 0000005F

[024h 0036   1]               Interface Type : 00
[025h 0037   3]                     Reserved : 445350

[028h 0040  12]          Debug Port Register : [Generic Address Structure]
[028h 0040   1]                     Space ID : 01 [SystemIO]
[029h 0041   1]                    Bit Width : 08
[02Ah 0042   1]                   Bit Offset : 00
[02Bh 0043   1]         Encoded Access Width : 00 [Undefined/Legacy]
[02Ch 0044   8]                      Address : 00000000000003F8


Raw Table Data: Length 52 (0x34)

    0000: 44 42 47 50 34 00 00 00 01 8C 49 4E 54 45 4C 20  // DBGP4.....INTEL 
    0010: 00 00 00 00 00 00 00 00 02 00 00 00 4D 53 46 54  // ............MSFT
    0020: 5F 00 00 00 00 50 53 44 01 08 00 00 F8 03 00 00  // _....PSD........
    0030: 00 00 00 00                                      // ....
