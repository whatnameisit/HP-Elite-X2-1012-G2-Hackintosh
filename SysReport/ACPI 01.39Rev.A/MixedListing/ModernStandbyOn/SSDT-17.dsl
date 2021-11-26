{
    External (FDRS, FieldUnitObj)


    0024: A0 0A 00 15 5C 46 44 52 53 05 00                 // ....\FDRS..

    Scope (\_SB)
    {

    002F: 10 39 5C 5F 53 42 5F                             // .9\_SB_

        Device (FDAD)
        {

    0036: 5B 82 31 46 44 41 44                             // [.1FDAD

            Name (_HID, "HPIC000C")  // _HID: Hardware ID

    003D: 08 5F 48 49 44 0D 48 50 49 43 30 30 30 43 00     // ._HID.HPIC000C.

            Method (_STA, 0, Serialized)  // _STA: Status
            {

    004C: 14 1C 5F 53 54 41 08                             // .._STA.

                If ((FDRS == One))
                {

    0053: A0 11 93 46 44 52 53 01                          // ...FDRS.

                    If (Ones)
                    {

    005B: A0 05 FF                                         // ...

                        Return (0x0F)
                    }

    005E: A4 0A 0F                                         // ...

                    Else
                    {

    0061: A1 03                                            // ..

                        Return (Zero)
                    }
                }

    0063: A4 00                                            // ..

                Else
                {

    0065: A1 03                                            // ..

                    Return (Zero)
                }
            }
        }
    }
}



Table Header:
Table Body (Length 0x69)
