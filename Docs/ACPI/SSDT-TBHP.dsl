/*
 * A hack to enable USB-C hotplug.
 *
 * On a real Mac on macOS, _RMV returns 0 and the Thunderbolt controller and the USB-C controller are always powered on and devices attach and detach.
 * On a Windows PC, the controllers are not powered on until a device attaches to it.
 *
 * This SSDT implements the latter method which is not expected in macOS; therefore, there are issues with sleep and wake.
 * Porting Thunderbolt 3 code from a Mac and initializing the devices like it is on macOS is the real fix.
 * https://github.com/whatnameisit/HP-Elite-X2-1012-G2-Hackintosh/blob/main/Docs/Thunderbolt3.md
 *
 * config.plist ACPI/Patch
 * Comment: Enable USB-C hotplug: M(_RMV) to XRMV
 * Count:   1
 * Find:    31 50 58 53 58 14 0B 5F 52 4D 56
 * Replace: 31 50 58 53 58 14 0B 58 52 4D 56
 */
DefinitionBlock ("", "SSDT", 2, "what", "hotplg", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX.XRMV, MethodObj)    // 0 Arguments
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.RP01.PXSX)
    {
        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            If (OSDW ())
            {
                Return (One)
            }
            Else
            {
                Return (XRMV ())
            }
        }
    }
}

