/*
 * This SSDT remaps ADB and PS2.
 * Refer to the debug messages.
 * The toggle keys can be switched in SSDT-INIT.dsl.
 */
DefinitionBlock ("", "SSDT", 2, "what", "PS2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Method (IPS2, 2, NotSerialized)
        {
            Debug = "PS2:1.ADB 3d to PS2 6b:F3 to F14, brightness down"
            Debug = "PS2:2.ADB 3e to PS2 71:F4 to F15, brightness up"
            If (Arg0)
            {
                Debug = "PS2:Arg0 is One, enabling 1 & 2"
                DerefOf (RMCF [One]) [Zero] = "Custom ADB Map"
                DerefOf (RMCF [One]) [One] = Package (0x03)
                    {
                        Package (0x00){}, 
                        "3d=6b", 
                        "3e=71"
                    }
            }
            Else
            {
                Debug = "PS2:Arg0 is Zero, ignoring 1 & 2"
            }

            Debug = "PS2:3.Always on:PS2 e005 to PS2 0:Silence keyboard spam from closing lid"
            Debug = "PS2:4.PS2 e038 to PS2 6a:right cmd (Korean lang key) to F19, set this key to switch source button in Settings"
            If (Arg1)
            {
                Debug = "PS2:Arg1 is One, enabling 4"
                DerefOf (DerefOf (RMCF [One]) [0x03]) [0x02]
                     = "e038=6a"
            }
            Else
            {
                Debug = "PS2:Arg1 is Zero, ignoring 4"
            }

            Debug = "PS2:5.Always on:Swap command and option"
        }

        Name (RMCF, Package (0x02)
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
        })
    }
}

