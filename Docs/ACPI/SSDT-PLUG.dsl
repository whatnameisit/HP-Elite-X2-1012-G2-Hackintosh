/*
 * This SSDT will make X86PlatformPlugin to load, allowing XNU CPU power management.
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "CpuPlug", 0x00003000)
{
    External (_PR_.PR00, ProcessorObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_PR.PR00)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Local0 = Package (0x02)
                {
                    "plugin-type", 
                    One
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

