/*
 * Modifies return object type of WMIV._WED from BuffObj to IntObj in Darwin.
 * I am not a kext developer, but it seems VoodooWMI.kext does cannot recognize
 * the result of _WED if the object type is BuffObj, but instead return 0,
 * which will not tell different WMI event data apart, such as lid open / close or power plug,
 * hence forcing me to modify _WED to return IntObj in Darwin.
 *
 * I initially grabbed VoodooWMI for wireless toggle which in older Windows versions was controlled via WMI.
 * Recent versions of Windows 10 uses a dedicated driver for WLBU with _HID of HPQ6001 for the same functionality.
 *
 * config.plist ACPI/Patch
 * Comment: _WED: M(_WED) to XWED in WMIV
 * Count:   1
 * Find:    5F 57 45 44
 * Replace: 5F 57 45 44
 * Skip:    1
 */
DefinitionBlock ("", "SSDT", 2, "what", "_WED", 0x00000000)
{
    External (_SB_.WMIV.XWED, MethodObj)    // 1 Arguments
    External (OSDW, MethodObj)    // 0 Arguments
    External (R16B, MethodObj)    // 2 Arguments

    Method (_SB.WMIV._WED, 1, Serialized)  // _Wxx: Wake Event, xx=0x00-0xFF
    {
        Debug = "WMIV._WED evaluated"
        Local0 = XWED (Arg0)
        Debug = Concatenate ("WMIV._WED original return: ", Local0)
        If (OSDW ())
        {
            Debug = "WMIV._WED original return modified for Darwin"
            // External method from SSDT-Battery.dsl
            Local0 = R16B (DerefOf (Local0 [Zero]), DerefOf (Local0 [0x04]
                ))
        }
        Else
        {
            Debug = "WMIV._WED original return unmodified for non-Darwin"
        }

        Debug = Concatenate ("WMIV._WED final return: ", Local0)
        Return (Local0)
    }
}

