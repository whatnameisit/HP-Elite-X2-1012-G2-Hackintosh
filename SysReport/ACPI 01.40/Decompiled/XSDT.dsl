/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of XSDT.aml, Tue Jan 18 23:05:32 2022
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "XSDT"    [Extended System Description Table]
[004h 0004   4]                 Table Length : 0000013C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 1A
[00Ah 0010   6]                       Oem ID : "HPQOEM"
[010h 0016   8]                 Oem Table ID : "SLIC-BPC"
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : "    "
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   8]       ACPI Table Address   0 : 0000000097BE0000
[02Ch 0044   8]       ACPI Table Address   1 : 0000000097BFC000
[034h 0052   8]       ACPI Table Address   2 : 0000000097BEE000
[03Ch 0060   8]       ACPI Table Address   3 : 0000000097BED000
[044h 0068   8]       ACPI Table Address   4 : 0000000097B71000
[04Ch 0076   8]       ACPI Table Address   5 : 0000000097BEC000
[054h 0084   8]       ACPI Table Address   6 : 0000000097BEB000
[05Ch 0092   8]       ACPI Table Address   7 : 0000000097BE7000
[064h 0100   8]       ACPI Table Address   8 : 0000000097BE4000
[06Ch 0108   8]       ACPI Table Address   9 : 0000000097BE3000
[074h 0116   8]       ACPI Table Address  10 : 0000000097BE2000
[07Ch 0124   8]       ACPI Table Address  11 : 0000000097BE1000
[084h 0132   8]       ACPI Table Address  12 : 0000000097BDF000
[08Ch 0140   8]       ACPI Table Address  13 : 0000000097BDE000
[094h 0148   8]       ACPI Table Address  14 : 0000000097BDD000
[09Ch 0156   8]       ACPI Table Address  15 : 0000000097BB2000
[0A4h 0164   8]       ACPI Table Address  16 : 0000000097BB1000
[0ACh 0172   8]       ACPI Table Address  17 : 0000000097BAB000
[0B4h 0180   8]       ACPI Table Address  18 : 0000000097BA9000
[0BCh 0188   8]       ACPI Table Address  19 : 0000000097BA8000
[0C4h 0196   8]       ACPI Table Address  20 : 0000000097BFD000
[0CCh 0204   8]       ACPI Table Address  21 : 0000000097BA6000
[0D4h 0212   8]       ACPI Table Address  22 : 0000000097BA5000
[0DCh 0220   8]       ACPI Table Address  23 : 0000000097BA4000
[0E4h 0228   8]       ACPI Table Address  24 : 0000000097BA3000
[0ECh 0236   8]       ACPI Table Address  25 : 0000000097BA2000
[0F4h 0244   8]       ACPI Table Address  26 : 0000000097B9C000
[0FCh 0252   8]       ACPI Table Address  27 : 0000000097B9B000
[104h 0260   8]       ACPI Table Address  28 : 0000000097B9A000
[10Ch 0268   8]       ACPI Table Address  29 : 0000000097B99000
[114h 0276   8]       ACPI Table Address  30 : 0000000097B98000
[11Ch 0284   8]       ACPI Table Address  31 : 0000000097B97000
[124h 0292   8]       ACPI Table Address  32 : 0000000097B96000
[12Ch 0300   8]       ACPI Table Address  33 : 0000000097B95000
[134h 0308   8]       ACPI Table Address  34 : 0000000097BFB000

Raw Table Data: Length 316 (0x13C)

    0000: 58 53 44 54 3C 01 00 00 01 1A 48 50 51 4F 45 4D  // XSDT<.....HPQOEM
    0010: 53 4C 49 43 2D 42 50 43 00 00 00 00 20 20 20 20  // SLIC-BPC....    
    0020: 13 00 00 01 00 00 BE 97 00 00 00 00 00 C0 BF 97  // ................
    0030: 00 00 00 00 00 E0 BE 97 00 00 00 00 00 D0 BE 97  // ................
    0040: 00 00 00 00 00 10 B7 97 00 00 00 00 00 C0 BE 97  // ................
    0050: 00 00 00 00 00 B0 BE 97 00 00 00 00 00 70 BE 97  // .............p..
    0060: 00 00 00 00 00 40 BE 97 00 00 00 00 00 30 BE 97  // .....@.......0..
    0070: 00 00 00 00 00 20 BE 97 00 00 00 00 00 10 BE 97  // ..... ..........
    0080: 00 00 00 00 00 F0 BD 97 00 00 00 00 00 E0 BD 97  // ................
    0090: 00 00 00 00 00 D0 BD 97 00 00 00 00 00 20 BB 97  // ............. ..
    00A0: 00 00 00 00 00 10 BB 97 00 00 00 00 00 B0 BA 97  // ................
    00B0: 00 00 00 00 00 90 BA 97 00 00 00 00 00 80 BA 97  // ................
    00C0: 00 00 00 00 00 D0 BF 97 00 00 00 00 00 60 BA 97  // .............`..
    00D0: 00 00 00 00 00 50 BA 97 00 00 00 00 00 40 BA 97  // .....P.......@..
    00E0: 00 00 00 00 00 30 BA 97 00 00 00 00 00 20 BA 97  // .....0....... ..
    00F0: 00 00 00 00 00 C0 B9 97 00 00 00 00 00 B0 B9 97  // ................
    0100: 00 00 00 00 00 A0 B9 97 00 00 00 00 00 90 B9 97  // ................
    0110: 00 00 00 00 00 80 B9 97 00 00 00 00 00 70 B9 97  // .............p..
    0120: 00 00 00 00 00 60 B9 97 00 00 00 00 00 50 B9 97  // .....`.......P..
    0130: 00 00 00 00 00 B0 BF 97 00 00 00 00              // ............
