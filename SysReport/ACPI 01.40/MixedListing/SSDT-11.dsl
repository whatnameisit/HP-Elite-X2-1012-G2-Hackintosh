{
    External (_SB_.PCI0.HDAS, DeviceObj)
    External (ADPM, IntObj)
    External (AG1H, IntObj)
    External (AG1L, IntObj)
    External (AG2H, IntObj)
    External (AG2L, IntObj)
    External (AG3H, IntObj)
    External (AG3L, IntObj)


    0024: A0 4D 04 00 15 5C 2F 03 5F 53 42 5F 50 43 49 30  // .M...\/._SB_PCI0
    0034: 48 44 41 53 06 00 15 5C 41 44 50 4D 01 00 15 5C  // HDAS...\ADPM...\
    0044: 41 47 31 4C 01 00 15 5C 41 47 31 48 01 00 15 5C  // AG1L...\AG1H...\
    0054: 41 47 32 4C 01 00 15 5C 41 47 32 48 01 00 15 5C  // AG2L...\AG2H...\
    0064: 41 47 33 4C 01 00 15 5C 41 47 33 48 01 00        // AG3L...\AG3H..

    Scope (\_SB.PCI0.HDAS)
    {

    0072: 10 4E 0C 5C 2F 03 5F 53 42 5F 50 43 49 30 48 44  // .N.\/._SB_PCI0HD
    0082: 41 53                                            // AS

        Method (PPMS, 1, Serialized)
        {

    0084: 14 40 0A 50 50 4D 53 09                          // .@.PPMS.

            If ((Arg0 == 
    008C: A0 20 93 68                                      // . .h

ToUUID ("7c708106-3aff-40fe-88be-8c999b3f7445") /* Unknown UUID */))
            {

    0090: 11 13 0A 10 06 81 70 7C FF 3A FE 40 88 BE 8C 99  // ......p|.:.@....
    00A0: 9B 3F 74 45                                      // .?tE

                Return (
    00A4: A4                                               // .

(ADPM & 0x04))
            }


    00A5: 7B 41 44 50 4D 0A 04 00                          // {ADPM...

            If ((Arg0 == 
    00AD: A0 21 93 68                                      // .!.h

ToUUID ("ec774fa9-28d3-424a-90e4-69f984f1eeb7") /* Unknown UUID */))
            {

    00B1: 11 13 0A 10 A9 4F 77 EC D3 28 4A 42 90 E4 69 F9  // .....Ow..(JB..i.
    00C1: 84 F1 EE B7                                      // ....

                Return (
    00C5: A4                                               // .

(ADPM & 0x0100))
            }


    00C6: 7B 41 44 50 4D 0B 00 01 00                       // {ADPM....

            If ((Arg0 == ACCG (AG1L, AG1H)))
            {

    00CF: A0 1B 93 68 41 43 43 47 41 47 31 4C 41 47 31 48  // ...hACCGAG1LAG1H

                Return (
    00DF: A4                                               // .

(ADPM & 0x20000000))
            }


    00E0: 7B 41 44 50 4D 0C 00 00 00 20 00                 // {ADPM.... .

            If ((Arg0 == ACCG (AG2L, AG2H)))
            {

    00EB: A0 1B 93 68 41 43 43 47 41 47 32 4C 41 47 32 48  // ...hACCGAG2LAG2H

                Return (
    00FB: A4                                               // .

(ADPM & 0x40000000))
            }


    00FC: 7B 41 44 50 4D 0C 00 00 00 40 00                 // {ADPM....@.

            If ((Arg0 == ACCG (AG3L, AG3H)))
            {

    0107: A0 1B 93 68 41 43 43 47 41 47 33 4C 41 47 33 48  // ...hACCGAG3LAG3H

                Return (
    0117: A4                                               // .

(ADPM & 0x80000000))
            }


    0118: 7B 41 44 50 4D 0C 00 00 00 80 00                 // {ADPM......

            Return (Zero)
        }


    0123: A4 00                                            // ..

        Method (ACCG, 2, NotSerialized)
        {

    0125: 14 1B 41 43 43 47 02                             // ..ACCG.

            Name (GBUF, 
    012C: 08 47 42 55 46                                   // .GBUF

Buffer (0x10){})
            Concatenate (Arg0, Arg1, GBUF) /* \_SB_.PCI0.HDAS.ACCG.GBUF */

    0131: 11 03 0A 10 73 68 69 47 42 55 46                 // ....shiGBUF

            Return (GBUF) /* \_SB_.PCI0.HDAS.ACCG.GBUF */
        }
    }
}



Table Header:
Table Body (Length 0x141)
