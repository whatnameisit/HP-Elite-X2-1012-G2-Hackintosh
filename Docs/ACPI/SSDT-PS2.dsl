/*
 * This SSDT remaps ADB and PS2.
 * Refer to Package INFO.
 */
DefinitionBlock ("", "SSDT", 2, "what", "ps2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name (INFO, Package (0x04)
        {
            "3d=6b: F3 to F14, brightness down", 
            "3e=71: F4 to F15, brightness up", 
            "e038=6a: right cmd (Korean lang key) to F19, set this key to switch source button in Settings", 
            "e005=0: Silence keyboard spam from closing lid"
        })
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

