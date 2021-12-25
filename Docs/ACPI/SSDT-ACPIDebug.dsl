/*
 * Debug
 * In config.plist ADBG to XDBG
 * Add RehabMan's ACPIDebug
 */
DefinitionBlock ("", "SSDT", 0, "what", "_DBG", 0)
{
    Method (ADBG, 1, NotSerialized)
    {
        Debug = Arg0
    }

    Device (RMDT)
    {
        Name (_HID, "RMD0000")  // _HID: Hardware ID
        Name (RING, Package (0x0100){})
        Mutex (RTMX, 0x00)
        Name (HEAD, Zero)
        Name (TAIL, Zero)
        Method (PUSH, 1, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = (HEAD + One)
            If ((Local0 >= SizeOf (RING)))
            {
                Local0 = Zero
            }

            If ((Local0 != TAIL))
            {
                RING [HEAD] = Arg0
                HEAD = Local0
            }

            Release (RTMX)
            Notify (RMDT, 0x80) // Status Change
        }

        Method (FTCH, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = Zero
            If ((HEAD != TAIL))
            {
                Local0 = DerefOf (RING [TAIL])
                TAIL++
                If ((TAIL >= SizeOf (RING)))
                {
                    TAIL = Zero
                }
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (COUN, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = (HEAD - TAIL) /* \RMDT.TAIL */
            If ((Local0 < Zero))
            {
                Local0 += SizeOf (RING)
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (P1, 1, NotSerialized)
        {
            PUSH (Arg0)
        }

        Method (P2, 2, Serialized)
        {
            Name (TEMP, Package (0x02){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            PUSH (TEMP)
        }

        Method (P3, 3, Serialized)
        {
            Name (TEMP, Package (0x03){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            PUSH (TEMP)
        }

        Method (P4, 4, Serialized)
        {
            Name (TEMP, Package (0x04){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            PUSH (TEMP)
        }

        Method (P5, 5, Serialized)
        {
            Name (TEMP, Package (0x05){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            PUSH (TEMP)
        }

        Method (P6, 6, Serialized)
        {
            Name (TEMP, Package (0x06){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            TEMP [0x05] = Arg5
            PUSH (TEMP)
        }

        Method (P7, 7, Serialized)
        {
            Name (TEMP, Package (0x07){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            TEMP [0x05] = Arg5
            TEMP [0x06] = Arg6
            PUSH (TEMP)
        }
    }
}

