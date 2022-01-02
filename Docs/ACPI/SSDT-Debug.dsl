/*
 * This SSDT contains two things.
 * One is to reroute borked vendor ADBG method that references non-existent MDBG method. Type "log show --last boot --predicate 'process == "kernel" AND senderImagePath CONTAINS "AppleACPIPlatform"' --style compact | awk '/ACPI Debug/{getline; getline; print}'" in the terminal for output.
 * And the other is to add RehabMan's ACPIDebug methods. To actually make use of it, read here: https://github.com/RehabMan/OS-X-ACPI-Debug.
 *
 * In config.plist ACPI/Patch
 * Comment: Enable debug messages: M(ADBG) to (XDBG)
 * Count:   1
 * Find:    41 44 42 47 09
 * Replace: 58 44 42 47 09
 *
 * In config.plist NVRAM/Add/7C436110-AB2A-4BBB-A880-FE41995C9F82
 * boot-args: acpi_layer=0x8 acpi_level=0x2
 */
DefinitionBlock ("", "SSDT", 0, "what", "DEBUG", 0)
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

