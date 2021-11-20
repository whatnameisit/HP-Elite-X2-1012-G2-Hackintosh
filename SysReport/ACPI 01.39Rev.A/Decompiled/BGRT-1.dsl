/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of BGRT-1.aml, Sat Nov 20 10:35:45 2021
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004   4]                 Table Length : 00000038
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 27
[00Ah 0010   6]                       Oem ID : "HPQOEM"
[010h 0016   8]                 Oem Table ID : "EDK2    "
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "    "
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   2]                      Version : 0001
[026h 0038   1]       Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039   1]                   Image Type : 00
[028h 0040   8]                Image Address : 00000000936BA000
[030h 0048   4]                Image OffsetX : 00000449
[034h 0052   4]                Image OffsetY : 0000019D

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 27 48 50 51 4F 45 4D  // BGRT8....'HPQOEM
    0010: 45 44 4B 32 20 20 20 20 02 00 00 00 20 20 20 20  // EDK2    ....    
    0020: 13 00 00 01 01 00 01 00 00 A0 6B 93 00 00 00 00  // ..........k.....
    0030: 49 04 00 00 9D 01 00 00                          // I.......
