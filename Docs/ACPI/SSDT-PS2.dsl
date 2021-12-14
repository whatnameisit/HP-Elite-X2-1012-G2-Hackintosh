/*
 * This SSDT remaps ADB and PS2.
 * Refer to the debug messages.
 */
DefinitionBlock ("", "SSDT", 2, "what", "PS2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        If (OSDW ())
        {
            Debug = "PS2:ADB 3d to PS2 6b:F3 to F14, brightness down"
            Debug = "PS2:ADB 3e to PS2 71:F4 to F15, brightness up"
            Debug = "PS2:PS2 e038 to PS2 6a:right cmd (Korean lang key) to F19, set this key to switch source button in Settings"
            Debug = "PS2:PS2 e005 to PS2 0:Silence keyboard spam from closing lid"
        }

        Name (RMCF, Package (0x02)
        {
            "Keyboard", 
            Package (0x06)
            {
                "Custom ADB Map", 
                Package (0x03)
                {
                    Package (0x00){}, 
                    "3d=6b", 
                    "3e=71"
                }, 

                "Custom PS2 Map", 
                Package (0x03)
                {
                    Package (0x00){}, 
                    "e038=6a", 
                    "e005=0"
                }, 

                "Swap command and option", 
                ">y"
            }
        })
    }
}

