/*
 * This SSDT allows SMBus compatibility on macOS.
 * Note that Device MCHC is not defined because the device is physically not present.
 * Testing on different BIOS versions may be useful.
 * 01.29 has the physical device present found here: https://www.tonymacx86.com/threads/guide-hp-elite-x2-1012-g1-g2-clover-uefi-virtualsmc-hot-patch.276500/page-18#post-2020655.
 */
DefinitionBlock ("", "SSDT", 2, "what", "SBUS", 0x00000000)
{
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Device (_SB.PCI0.SBUS.BUS0)
    {
        Name (_CID, "smbus")  // _CID: Compatible ID
        Name (_ADR, Zero)  // _ADR: Address
        Device (DVL0)
        {
            Name (_ADR, 0x57)  // _ADR: Address
            Name (_CID, "diagsvault")  // _CID: Compatible ID
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x57                                             // W
                    })
                }

                Return (Package (0x02)
                {
                    "address", 
                    0x57
                })
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (OSDW ())
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

