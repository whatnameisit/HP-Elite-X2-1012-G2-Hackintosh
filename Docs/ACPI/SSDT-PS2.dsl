/*
 * This SSDT remaps ADB and PS2.
 * Refer to the debug messages.
 * The toggle keys can be switched in SSDT-INIT.dsl.
 */
DefinitionBlock ("", "SSDT", 2, "what", "PS2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name (RMTB, Zero)
        Name (RMTC, Zero)
        If (\OSDW ())
        {
            Debug = "PS2:1.PS2 e005 to PS2 0:Silence keyboard spam from closing lid"
            If (RMTB)
            {
                Debug = "PS2:RMTB is set, enabling 2 & 3"
                Debug = "PS2:3.ADB 3d to PS2 6b:F3 to F14, brightness down"
                Debug = "PS2:4.ADB 3e to PS2 71:F4 to F15, brightness up"
            }
            Else
            {
                Debug = "PS2:RMTB is not set, ignoring 2 & 3"
            }

            If (RMTC)
            {
                Debug = "PS2:RMTC is set, enabling 4"
                Debug = "PS2:4.PS2 e038 to PS2 6a:right cmd (Korean lang key) to F19, set this key to switch source button in Settings"
            }
            Else
            {
                Debug = "PS2:RMTC is not set, ignoring 4"
            }
        }

        Method (RMCF, 0, NotSerialized)
        {
            Local0 = Package (0x02)
                {
                    "Keyboard", 
                    Package (0x06)
                    {
                        "", 
                        "", 
                        "Custom PS2 Map", 
                        Package (0x03)
                        {
                            Package (0x00){}, 
                            "e005=0", 
                            ""
                        }, 

                        "Swap command and option", 
                        ">y"
                    }
                }
            If (RMTB)
            {
                DerefOf (Local0 [One]) [Zero] = "Custom ADB Map"
                DerefOf (Local0 [One]) [One] = Package (0x03)
                    {
                        Package (0x00){}, 
                        "3d=6b", 
                        "3e=71"
                    }
            }

            If (RMTC)
            {
                DerefOf (DerefOf (Local0 [One]) [0x03]) [0x02]
                     = "e038=6a"
            }

            Return (Local0)
        }
    }
}

