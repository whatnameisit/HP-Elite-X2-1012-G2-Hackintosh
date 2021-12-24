/*
 * This SSDT allows SMBus compatibility on macOS.
 * Note that Device MCHC is defined only if the device is not already occupied by the name DSC1.
 * The necessity of this SSDT is questionable since AppleSMBusControllerICH is not loaded on MBP14,1.
 */
DefinitionBlock ("", "SSDT", 2, "what", "SBUS", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.DSC1, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OSDW () && ~CondRefOf (DSC1)))
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

