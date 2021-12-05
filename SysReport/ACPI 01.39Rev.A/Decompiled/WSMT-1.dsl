/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of WSMT-1.aml, Sat Nov 20 10:35:45 2021
 *
 * ACPI Data Table [WSMT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "WSMT"    [Windows SMM Security Mitigations Table]
[004h 0004   4]                 Table Length : 00000028
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 73
[00Ah 0010   6]                       Oem ID : "HPQOEM"
[010h 0016   8]                 Oem Table ID : "82CA    "
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "HP  "
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]             Protection Flags : 00000007
                          FIXED_COMM_BUFFERS : 1
           COMM_BUFFER_NESTED_PTR_PROTECTION : 1
                  SYSTEM_RESOURCE_PROTECTION : 1

Raw Table Data: Length 40 (0x28)

    0000: 57 53 4D 54 28 00 00 00 01 73 48 50 51 4F 45 4D  // WSMT(....sHPQOEM
    0010: 38 32 43 41 20 20 20 20 01 00 00 00 48 50 20 20  // 82CA    ....HP  
    0020: 01 00 00 00 07 00 00 00                          // ........
