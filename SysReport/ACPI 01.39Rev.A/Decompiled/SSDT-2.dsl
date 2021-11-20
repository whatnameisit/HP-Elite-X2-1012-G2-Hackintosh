/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-2.aml, Sat Nov 20 10:35:45 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000CACB (51915)
 *     Revision         0x02
 *     Checksum         0x4C
 *     OEM ID           "AcpiRe"
 *     OEM Table ID     "PLT_RTD3"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "AcpiRe", "PLT_RTD3", 0x00001000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GEXP, DeviceObj)
    External (_SB_.PCI0.GEXP.GEPS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.SPT2, UnknownObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.DPGE, UnknownObj)
    External (_SB_.PCI0.RP01.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.L23E, UnknownObj)
    External (_SB_.PCI0.RP01.L23R, UnknownObj)
    External (_SB_.PCI0.RP01.LASX, UnknownObj)
    External (_SB_.PCI0.RP01.LDIS, UnknownObj)
    External (_SB_.PCI0.RP01.LEDM, UnknownObj)
    External (_SB_.PCI0.RP01.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP01.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP01.VDID, UnknownObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP02.DPGE, UnknownObj)
    External (_SB_.PCI0.RP02.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP02.L23E, UnknownObj)
    External (_SB_.PCI0.RP02.L23R, UnknownObj)
    External (_SB_.PCI0.RP02.LASX, UnknownObj)
    External (_SB_.PCI0.RP02.LDIS, UnknownObj)
    External (_SB_.PCI0.RP02.LEDM, UnknownObj)
    External (_SB_.PCI0.RP02.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP02.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP02.VDID, UnknownObj)
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP03.DPGE, UnknownObj)
    External (_SB_.PCI0.RP03.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP03.L23E, UnknownObj)
    External (_SB_.PCI0.RP03.L23R, UnknownObj)
    External (_SB_.PCI0.RP03.LASX, UnknownObj)
    External (_SB_.PCI0.RP03.LDIS, UnknownObj)
    External (_SB_.PCI0.RP03.LEDM, UnknownObj)
    External (_SB_.PCI0.RP03.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP03.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP03.VDID, UnknownObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP04.DPGE, UnknownObj)
    External (_SB_.PCI0.RP04.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP04.L23E, UnknownObj)
    External (_SB_.PCI0.RP04.L23R, UnknownObj)
    External (_SB_.PCI0.RP04.LASX, UnknownObj)
    External (_SB_.PCI0.RP04.LDIS, UnknownObj)
    External (_SB_.PCI0.RP04.LEDM, UnknownObj)
    External (_SB_.PCI0.RP04.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP04.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP04.VDID, UnknownObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.DPGE, UnknownObj)
    External (_SB_.PCI0.RP05.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.L23E, UnknownObj)
    External (_SB_.PCI0.RP05.L23R, UnknownObj)
    External (_SB_.PCI0.RP05.LASX, UnknownObj)
    External (_SB_.PCI0.RP05.LDIS, UnknownObj)
    External (_SB_.PCI0.RP05.LEDM, UnknownObj)
    External (_SB_.PCI0.RP05.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP05.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP05.VDID, UnknownObj)
    External (_SB_.PCI0.RP06, DeviceObj)
    External (_SB_.PCI0.RP06._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP06.DPGE, UnknownObj)
    External (_SB_.PCI0.RP06.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP06.L23E, UnknownObj)
    External (_SB_.PCI0.RP06.L23R, UnknownObj)
    External (_SB_.PCI0.RP06.LASX, UnknownObj)
    External (_SB_.PCI0.RP06.LDIS, UnknownObj)
    External (_SB_.PCI0.RP06.LEDM, UnknownObj)
    External (_SB_.PCI0.RP06.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP06.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP06.VDID, UnknownObj)
    External (_SB_.PCI0.RP07, DeviceObj)
    External (_SB_.PCI0.RP07._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP07.DPGE, UnknownObj)
    External (_SB_.PCI0.RP07.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP07.L23E, UnknownObj)
    External (_SB_.PCI0.RP07.L23R, UnknownObj)
    External (_SB_.PCI0.RP07.LASX, UnknownObj)
    External (_SB_.PCI0.RP07.LDIS, UnknownObj)
    External (_SB_.PCI0.RP07.LEDM, UnknownObj)
    External (_SB_.PCI0.RP07.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP07.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP07.VDID, UnknownObj)
    External (_SB_.PCI0.RP08, DeviceObj)
    External (_SB_.PCI0.RP08._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP08.DPGE, UnknownObj)
    External (_SB_.PCI0.RP08.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP08.L23E, UnknownObj)
    External (_SB_.PCI0.RP08.L23R, UnknownObj)
    External (_SB_.PCI0.RP08.LASX, UnknownObj)
    External (_SB_.PCI0.RP08.LDIS, UnknownObj)
    External (_SB_.PCI0.RP08.LEDM, UnknownObj)
    External (_SB_.PCI0.RP08.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP08.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP08.VDID, UnknownObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.DPGE, UnknownObj)
    External (_SB_.PCI0.RP09.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.L23E, UnknownObj)
    External (_SB_.PCI0.RP09.L23R, UnknownObj)
    External (_SB_.PCI0.RP09.LASX, UnknownObj)
    External (_SB_.PCI0.RP09.LDIS, UnknownObj)
    External (_SB_.PCI0.RP09.LEDM, UnknownObj)
    External (_SB_.PCI0.RP09.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP09.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP09.VDID, UnknownObj)
    External (_SB_.PCI0.RP10, DeviceObj)
    External (_SB_.PCI0.RP10._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP10.DPGE, UnknownObj)
    External (_SB_.PCI0.RP10.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP10.L23E, UnknownObj)
    External (_SB_.PCI0.RP10.L23R, UnknownObj)
    External (_SB_.PCI0.RP10.LASX, UnknownObj)
    External (_SB_.PCI0.RP10.LDIS, UnknownObj)
    External (_SB_.PCI0.RP10.LEDM, UnknownObj)
    External (_SB_.PCI0.RP10.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP10.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP10.VDID, UnknownObj)
    External (_SB_.PCI0.RP11, DeviceObj)
    External (_SB_.PCI0.RP11._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP11.DPGE, UnknownObj)
    External (_SB_.PCI0.RP11.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP11.L23E, UnknownObj)
    External (_SB_.PCI0.RP11.L23R, UnknownObj)
    External (_SB_.PCI0.RP11.LASX, UnknownObj)
    External (_SB_.PCI0.RP11.LDIS, UnknownObj)
    External (_SB_.PCI0.RP11.LEDM, UnknownObj)
    External (_SB_.PCI0.RP11.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP11.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP11.VDID, UnknownObj)
    External (_SB_.PCI0.RP12, DeviceObj)
    External (_SB_.PCI0.RP12._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP12.DPGE, UnknownObj)
    External (_SB_.PCI0.RP12.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP12.L23E, UnknownObj)
    External (_SB_.PCI0.RP12.L23R, UnknownObj)
    External (_SB_.PCI0.RP12.LASX, UnknownObj)
    External (_SB_.PCI0.RP12.LDIS, UnknownObj)
    External (_SB_.PCI0.RP12.LEDM, UnknownObj)
    External (_SB_.PCI0.RP12.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP12.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP12.VDID, UnknownObj)
    External (_SB_.PCI0.RP13, DeviceObj)
    External (_SB_.PCI0.RP13._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP13.DPGE, UnknownObj)
    External (_SB_.PCI0.RP13.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP13.L23E, UnknownObj)
    External (_SB_.PCI0.RP13.L23R, UnknownObj)
    External (_SB_.PCI0.RP13.LASX, UnknownObj)
    External (_SB_.PCI0.RP13.LDIS, UnknownObj)
    External (_SB_.PCI0.RP13.LEDM, UnknownObj)
    External (_SB_.PCI0.RP13.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP13.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP13.VDID, UnknownObj)
    External (_SB_.PCI0.RP14, DeviceObj)
    External (_SB_.PCI0.RP14._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP14.DPGE, UnknownObj)
    External (_SB_.PCI0.RP14.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP14.L23E, UnknownObj)
    External (_SB_.PCI0.RP14.L23R, UnknownObj)
    External (_SB_.PCI0.RP14.LASX, UnknownObj)
    External (_SB_.PCI0.RP14.LDIS, UnknownObj)
    External (_SB_.PCI0.RP14.LEDM, UnknownObj)
    External (_SB_.PCI0.RP14.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP14.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP14.VDID, UnknownObj)
    External (_SB_.PCI0.RP15, DeviceObj)
    External (_SB_.PCI0.RP15._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP15.DPGE, UnknownObj)
    External (_SB_.PCI0.RP15.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP15.L23E, UnknownObj)
    External (_SB_.PCI0.RP15.L23R, UnknownObj)
    External (_SB_.PCI0.RP15.LASX, UnknownObj)
    External (_SB_.PCI0.RP15.LDIS, UnknownObj)
    External (_SB_.PCI0.RP15.LEDM, UnknownObj)
    External (_SB_.PCI0.RP15.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP15.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP15.VDID, UnknownObj)
    External (_SB_.PCI0.RP16, DeviceObj)
    External (_SB_.PCI0.RP16._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP16.DPGE, UnknownObj)
    External (_SB_.PCI0.RP16.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP16.L23E, UnknownObj)
    External (_SB_.PCI0.RP16.L23R, UnknownObj)
    External (_SB_.PCI0.RP16.LASX, UnknownObj)
    External (_SB_.PCI0.RP16.LDIS, UnknownObj)
    External (_SB_.PCI0.RP16.LEDM, UnknownObj)
    External (_SB_.PCI0.RP16.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP16.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP16.VDID, UnknownObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP17.DPGE, UnknownObj)
    External (_SB_.PCI0.RP17.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP17.L23E, UnknownObj)
    External (_SB_.PCI0.RP17.L23R, UnknownObj)
    External (_SB_.PCI0.RP17.LASX, UnknownObj)
    External (_SB_.PCI0.RP17.LDIS, UnknownObj)
    External (_SB_.PCI0.RP17.LEDM, UnknownObj)
    External (_SB_.PCI0.RP17.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP17.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP17.VDID, UnknownObj)
    External (_SB_.PCI0.RP18, DeviceObj)
    External (_SB_.PCI0.RP18._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP18.DPGE, UnknownObj)
    External (_SB_.PCI0.RP18.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP18.L23E, UnknownObj)
    External (_SB_.PCI0.RP18.L23R, UnknownObj)
    External (_SB_.PCI0.RP18.LASX, UnknownObj)
    External (_SB_.PCI0.RP18.LDIS, UnknownObj)
    External (_SB_.PCI0.RP18.LEDM, UnknownObj)
    External (_SB_.PCI0.RP18.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP18.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP18.VDID, UnknownObj)
    External (_SB_.PCI0.RP19, DeviceObj)
    External (_SB_.PCI0.RP19._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP19.DPGE, UnknownObj)
    External (_SB_.PCI0.RP19.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP19.L23E, UnknownObj)
    External (_SB_.PCI0.RP19.L23R, UnknownObj)
    External (_SB_.PCI0.RP19.LASX, UnknownObj)
    External (_SB_.PCI0.RP19.LDIS, UnknownObj)
    External (_SB_.PCI0.RP19.LEDM, UnknownObj)
    External (_SB_.PCI0.RP19.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP19.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP19.VDID, UnknownObj)
    External (_SB_.PCI0.RP20, DeviceObj)
    External (_SB_.PCI0.RP20._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP20.DPGE, UnknownObj)
    External (_SB_.PCI0.RP20.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP20.L23E, UnknownObj)
    External (_SB_.PCI0.RP20.L23R, UnknownObj)
    External (_SB_.PCI0.RP20.LASX, UnknownObj)
    External (_SB_.PCI0.RP20.LDIS, UnknownObj)
    External (_SB_.PCI0.RP20.LEDM, UnknownObj)
    External (_SB_.PCI0.RP20.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP20.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP20.VDID, UnknownObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT2, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT4, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT5, DeviceObj)
    External (_SB_.PCI0.XDCI, DeviceObj)
    External (_SB_.PCI0.XDCI.D0I3, UnknownObj)
    External (_SB_.PCI0.XDCI.XDCB, UnknownObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.MEMB, UnknownObj)
    External (_SB_.PCI0.XHC_.PMEE, UnknownObj)
    External (_SB_.PCI0.XHC_.PMES, UnknownObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AUDD, FieldUnitObj)
    External (DVID, UnknownObj)
    External (EMOD, IntObj)
    External (GBEP, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (I20D, FieldUnitObj)
    External (I21D, FieldUnitObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (PCHG, UnknownObj)
    External (PCHS, UnknownObj)
    External (PEP0, UnknownObj)
    External (PEP3, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RIC0, FieldUnitObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SHSB, FieldUnitObj)
    External (SPST, IntObj)
    External (UAMS, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (VRSD, FieldUnitObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    OperationRegion (R3NV, SystemMemory, 0x97B7EE98, 0x00000153)
    Field (R3NV, AnyAcc, NoLock, Preserve)
    {
        R301,   1, 
        Offset (0x0E), 
        R302,   1, 
        Offset (0x1C), 
        R303,   1, 
        Offset (0x2A), 
        R304,   1, 
        Offset (0x38), 
        R305,   1, 
        Offset (0x46), 
        R306,   1, 
        Offset (0x54), 
        R307,   1, 
        Offset (0x62), 
        R308,   1, 
        Offset (0x70), 
        R309,   1, 
        Offset (0x7E), 
        R310,   1, 
        Offset (0x8C), 
        R311,   1, 
        Offset (0x9A), 
        R312,   1, 
        Offset (0xA8), 
        R313,   1, 
        Offset (0xB6), 
        R314,   1, 
        Offset (0xC4), 
        R315,   1, 
        Offset (0xD2), 
        R316,   1, 
        Offset (0xE0), 
        R317,   1, 
        Offset (0xEE), 
        R318,   1, 
        Offset (0xFC), 
        R319,   1, 
        Offset (0x10A), 
        R320,   1, 
        Offset (0x118), 
        U301,   1, 
        Offset (0x11D), 
        U302,   1, 
        Offset (0x122), 
        U303,   1, 
        Offset (0x127), 
        U304,   1, 
        Offset (0x12C), 
        U305,   1, 
        Offset (0x131), 
        U306,   1, 
        Offset (0x136), 
        U307,   1, 
        Offset (0x13B), 
        U308,   1, 
        Offset (0x140), 
        U309,   1, 
        Offset (0x145), 
        U310,   1, 
        Offset (0x14A), 
        ZPDE,   1
    }

    If ((R301 == One))
    {
        Scope (\_SB.PCI0.RP01)
        {
            Name (SLOT, One)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x02), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP01.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP01.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP01.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP01.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP01.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP01.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP01.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP01.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP01.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP01.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP01, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP01, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX01, 0, NotSerialized)
        {
            \_SB.PCI0.RP01.XPEH ()
        }
    }

    If ((R302 == One))
    {
        Scope (\_SB.PCI0.RP02)
        {
            Name (SLOT, 0x02)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x0E), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x10), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP02.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP02.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP02.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP02.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP02.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP02.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP02.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP02.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP02.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP02.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP02, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP02, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX02, 0, NotSerialized)
        {
            \_SB.PCI0.RP02.XPEH ()
        }
    }

    If ((R303 == One))
    {
        Scope (\_SB.PCI0.RP03)
        {
            Name (SLOT, 0x03)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x1C), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x1E), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP03.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP03.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP03.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP03.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP03.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP03.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP03.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP03.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP03.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP03.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP03, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP03, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX03, 0, NotSerialized)
        {
            \_SB.PCI0.RP03.XPEH ()
        }
    }

    If ((R304 == One))
    {
        Scope (\_SB.PCI0.RP04)
        {
            Name (SLOT, 0x04)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x2A), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x2C), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP04.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP04.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP04.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP04.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP04.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP04.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP04.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP04.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP04.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP04.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP04, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP04, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX04, 0, NotSerialized)
        {
            \_SB.PCI0.RP04.XPEH ()
        }
    }

    If ((R305 == One))
    {
        Scope (\_SB.PCI0.RP05)
        {
            Name (SLOT, 0x05)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x38), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x3A), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP05.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP05.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP05.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP05.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP05.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP05.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP05.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP05.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP05.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP05.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP05, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP05, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX05, 0, NotSerialized)
        {
            \_SB.PCI0.RP05.XPEH ()
        }
    }

    If ((R306 == One))
    {
        Scope (\_SB.PCI0.RP06)
        {
            Name (SLOT, 0x06)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x46), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x48), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP06.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP06.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP06.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP06.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP06.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP06.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP06.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP06.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP06.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP06.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP06, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP06, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX06, 0, NotSerialized)
        {
            \_SB.PCI0.RP06.XPEH ()
        }
    }

    If ((R307 == One))
    {
        Scope (\_SB.PCI0.RP07)
        {
            Name (SLOT, 0x07)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x54), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x56), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP07.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP07.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP07.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP07.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP07.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP07.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP07.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP07.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP07.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP07.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP07, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP07, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX07, 0, NotSerialized)
        {
            \_SB.PCI0.RP07.XPEH ()
        }
    }

    If ((R308 == One))
    {
        Scope (\_SB.PCI0.RP08)
        {
            Name (SLOT, 0x08)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x62), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x64), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP08.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP08.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP08.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP08.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP08.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP08.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP08.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP08.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP08.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP08.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP08, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP08, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX08, 0, NotSerialized)
        {
            \_SB.PCI0.RP08.XPEH ()
        }
    }

    If ((R309 == One))
    {
        Scope (\_SB.PCI0.RP09)
        {
            Name (SLOT, 0x09)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x70), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x72), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP09.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP09.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP09.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP09.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP09.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP09.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP09.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP09.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP09.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP09.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP09, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP09, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX09, 0, NotSerialized)
        {
            \_SB.PCI0.RP09.XPEH ()
        }
    }

    If ((R310 == One))
    {
        Scope (\_SB.PCI0.RP10)
        {
            Name (SLOT, 0x0A)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x7E), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x80), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP10.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP10.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP10.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP10.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP10.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP10.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP10.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP10.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP10.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP10.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP10, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP10, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX10, 0, NotSerialized)
        {
            \_SB.PCI0.RP10.XPEH ()
        }
    }

    If ((R311 == One))
    {
        Scope (\_SB.PCI0.RP11)
        {
            Name (SLOT, 0x0B)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x8C), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x8E), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP11.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP11.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP11.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP11.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP11.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP11.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP11.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP11.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP11.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP11.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP11, 0x02) // Device Wake
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX11, 0, NotSerialized)
        {
            \_SB.PCI0.RP11.XPEH ()
        }
    }

    If ((R312 == One))
    {
        Scope (\_SB.PCI0.RP12)
        {
            Name (SLOT, 0x0C)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x9A), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x9C), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP12.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP12.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP12.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP12.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP12.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP12.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP12.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP12.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP12.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP12.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP12, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP12, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX12, 0, NotSerialized)
        {
            \_SB.PCI0.RP12.XPEH ()
        }
    }

    If ((R313 == One))
    {
        Scope (\_SB.PCI0.RP13)
        {
            Name (SLOT, 0x0D)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0xA8), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0xAA), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP13.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP13.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP13.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP13.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP13.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP13.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP13.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP13.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP13.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP13.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP13, 0x02) // Device Wake
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX13, 0, NotSerialized)
        {
            \_SB.PCI0.RP13.XPEH ()
        }
    }

    If ((R314 == One))
    {
        Scope (\_SB.PCI0.RP14)
        {
            Name (SLOT, 0x0E)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0xB6), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0xB8), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP14.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP14.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP14.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP14.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP14.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP14.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP14.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP14.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP14.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP14.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP14, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP14, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX14, 0, NotSerialized)
        {
            \_SB.PCI0.RP14.XPEH ()
        }
    }

    If ((R315 == One))
    {
        Scope (\_SB.PCI0.RP15)
        {
            Name (SLOT, 0x0F)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0xC4), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0xC6), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP15.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP15.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP15.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP15.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP15.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP15.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP15.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP15.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP15.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP15.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP15, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP15, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX15, 0, NotSerialized)
        {
            \_SB.PCI0.RP15.XPEH ()
        }
    }

    If ((R316 == One))
    {
        Scope (\_SB.PCI0.RP16)
        {
            Name (SLOT, 0x10)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0xD2), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0xD4), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP16.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP16.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP16.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP16.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP16.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP16.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP16.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP16.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP16.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP16.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP16, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP16, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX16, 0, NotSerialized)
        {
            \_SB.PCI0.RP16.XPEH ()
        }
    }

    If ((R317 == One))
    {
        Scope (\_SB.PCI0.RP17)
        {
            Name (SLOT, 0x11)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x54), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x56), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP17.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP17.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP17.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP17.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP17.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP17.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP17.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP17.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP17.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP17.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP17, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP17, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX17, 0, NotSerialized)
        {
            \_SB.PCI0.RP17.XPEH ()
        }
    }

    If ((R318 == One))
    {
        Scope (\_SB.PCI0.RP18)
        {
            Name (SLOT, 0x12)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0xEE), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0xF0), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP18.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP18.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP18.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP18.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP18.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP18.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP18.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP18.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP18.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP18.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP18, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP18, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX18, 0, NotSerialized)
        {
            \_SB.PCI0.RP18.XPEH ()
        }
    }

    If ((R319 == One))
    {
        Scope (\_SB.PCI0.RP19)
        {
            Name (SLOT, 0x13)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0xFC), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0xFE), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP19.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP19.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP19.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP19.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP19.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP19.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP19.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP19.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP19.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP19.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP19, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP19, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX19, 0, NotSerialized)
        {
            \_SB.PCI0.RP19.XPEH ()
        }
    }

    If ((R320 == One))
    {
        Scope (\_SB.PCI0.RP20)
        {
            Name (SLOT, 0x14)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10A), 
                    ,   1, 
                S0WS,   3, 
                RSTS,   1, 
                RSTA,   1, 
                PWRS,   1, 
                PWRA,   1, 
                WAKS,   1, 
                WAKA,   1, 
                CLQS,   1, 
                CLQN,   4, 
                Offset (0x10C), 
                RSTP,   32, 
                PWRP,   32, 
                WAKP,   32
            }

            Name (RSTG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WAKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (SCLK, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Name (WKEN, Zero)
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.RP20.S0WS */
                RSTG [Zero] = RSTS /* \_SB_.PCI0.RP20.RSTS */
                RSTG [0x02] = RSTP /* \_SB_.PCI0.RP20.RSTP */
                RSTG [0x03] = !RSTA
                PWRG [Zero] = PWRS /* \_SB_.PCI0.RP20.PWRS */
                PWRG [0x02] = PWRP /* \_SB_.PCI0.RP20.PWRP */
                PWRG [0x03] = PWRA /* \_SB_.PCI0.RP20.PWRA */
                WAKG [Zero] = WAKS /* \_SB_.PCI0.RP20.WAKS */
                WAKG [0x02] = WAKP /* \_SB_.PCI0.RP20.WAKP */
                WAKG [0x03] = WAKA /* \_SB_.PCI0.RP20.WAKA */
                SCLK [Zero] = CLQS /* \_SB_.PCI0.RP20.CLQS */
                SCLK [One] = (One << CLQN)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (GMBR, 0, NotSerialized)
            {
                Local0 = (_ADR () & 0xFFFF)
                Local1 = ((_ADR () & 0xFFFF0000) >> 0x10)
                Local0 = ((Local0 << 0x0C) | (Local1 << 0x0F))
                Local0 |= GPCB ()
                Return (Local0)
            }

            OperationRegion (PMCS, SystemMemory, GMBR (), 0x0480)
            Field (PMCS, AnyAcc, NoLock, Preserve)
            {
                ADID,   32, 
                Offset (0x50), 
                    ,   1, 
                    ,   3, 
                ADIS,   1, 
                Offset (0x52), 
                    ,   13, 
                AASX,   1, 
                Offset (0xE2), 
                    ,   2, 
                A23E,   1, 
                A23R,   1, 
                Offset (0x324), 
                    ,   3, 
                AEDM,   1, 
                Offset (0x420), 
                    ,   30, 
                APGE,   1
            }

            Field (PMCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                APSX,   1, 
                AMSX,   1
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((\EMOD == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (PSTA ())
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        PON ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((\EMOD == One)){}
                    Else
                    {
                        POFF ()
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }

            Method (PON, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        Sleep (0x64)
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        Sleep (0x64)
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRA (0xDC, 0x100C, ~DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), DerefOf (RSTG [0x03]))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                APGE = Zero
                A23R = One
                Sleep (0x10)
                Local0 = Zero
                While (A23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                APGE = One
                Local0 = Zero
                While ((AASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                AEDM = Zero
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((ADID != 0xFFFFFFFF))
                {
                    A23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (A23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    AEDM = One
                }

                If ((DerefOf (RSTG [Zero]) != Zero))
                {
                    If ((DerefOf (RSTG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (RSTG [0x02]), (DerefOf (RSTG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (RSTG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [One]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ One))
                    }
                }

                If ((DerefOf (SCLK [Zero]) != Zero))
                {
                    PCRO (0xDC, 0x100C, DerefOf (SCLK [One]))
                    Sleep (0x10)
                }

                If ((DerefOf (PWRG [Zero]) != Zero))
                {
                    If ((DerefOf (PWRG [Zero]) == One))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            One))
                    }

                    If ((DerefOf (PWRG [Zero]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [One]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ One))
                    }
                }

                If ((ADID != 0xFFFFFFFF))
                {
                    ADIS = One
                    ADIS = Zero
                }

                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), Zero)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                APSX = One
                AMSX = One
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
            Method (XPEH, 0, NotSerialized)
            {
                If (WKEN)
                {
                    If ((DerefOf (WAKG [Zero]) != Zero))
                    {
                        If ((DerefOf (WAKG [Zero]) == One))
                        {
                            \_SB.SHPO (DerefOf (WAKG [0x02]), One)
                        }

                        If ((DerefOf (WAKG [Zero]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [One]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }

                    Notify (RP20, 0x02) // Device Wake
                }

                Return (Zero)
            }

            Method (GP20, 0, NotSerialized)
            {
                If (\_SB.ISME (WAKP))
                {
                    XPEH ()
                }

                Return (Zero)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (XX20, 0, NotSerialized)
        {
            \_SB.PCI0.RP20.XPEH ()
        }
    }

    Scope (\_SB.PCI0.XHC)
    {
        OperationRegion (XHCM, SystemMemory, (MEMB & 0xFFFFFFFFFFFF0000), 0x0600)
    }

    If ((U301 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS01)
        {
            Name (SLOT, One)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x118), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x119), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x480), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS01.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS01.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS01.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U302 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS02)
        {
            Name (SLOT, 0x02)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x11D), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x11E), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x490), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS02.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS02.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS02.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U303 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS03)
        {
            Name (SLOT, 0x03)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x122), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x123), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x4A0), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS03.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS03.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS03.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U304 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS04)
        {
            Name (SLOT, 0x04)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x127), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x128), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x4B0), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS04.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS04.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS04.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U305 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS05)
        {
            Name (SLOT, 0x05)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12C), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x12D), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x4C0), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS05.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS05.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS05.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U306 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS06)
        {
            Name (SLOT, 0x06)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x131), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x132), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x4D0), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS06.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS06.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS06.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U307 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS07)
        {
            Name (SLOT, 0x07)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x136), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x137), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x4E0), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS07.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS07.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS07.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U308 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS08)
        {
            Name (SLOT, 0x08)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x13B), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x13C), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x4F0), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS08.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS08.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS08.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U309 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS09)
        {
            Name (SLOT, 0x09)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x140), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x141), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x500), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS09.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS09.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS09.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    If ((U310 == One))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS10)
        {
            Name (SLOT, 0x0A)
            Field (R3NV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x145), 
                    ,   1, 
                S0WS,   3, 
                PWRA,   1, 
                Offset (0x146), 
                PWRP,   32
            }

            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x510), 
                POEN,   1
            }

            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (DINI, 0, NotSerialized)
            {
                _S0W = S0WS /* \_SB_.PCI0.XHC_.RHUB.HS10.S0WS */
                PWRG [Zero] = PWRP /* \_SB_.PCI0.XHC_.RHUB.HS10.PWRP */
                PWRG [One] = PWRA /* \_SB_.PCI0.XHC_.RHUB.HS10.PWRA */
            }

            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PowerResource (PRUB, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    DINI ()
                    If ((POEN == One))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [Zero])) == DerefOf (PWRG [One]
                            )))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), DerefOf (PWRG [One]))
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    \_SB.SGOV (DerefOf (PWRG [Zero]), ~DerefOf (PWRG [One])
                        )
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PRUB
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                PRUB
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PRUB
            })
        }
    }

    Field (R3NV, AnyAcc, Lock, Preserve)
    {
        Offset (0x14A), 
            ,   1, 
        ZSPN,   3, 
        OPEA,   1, 
        Offset (0x14B), 
        OPEP,   32, 
        ODAP,   32
    }

    If ((ZPDE == One))
    {
        If ((ZSPN == Zero))
        {
            Scope (\_SB.PCI0.SAT0.PRT0)
            {
                Name (UDSM, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PXPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PXPR
                })
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If ((\_SB.OSCO & 0x04))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = Zero
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x45, 0x04))
                }

                PowerResource (PXPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        \_SB.SGOV (OPEP, OPEA)
                        Sleep (0x64)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.SGOV (OPEP, ~OPEA)
                        Sleep (0x64)
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                If ((UDSM == Zero))
                                {
                                    UDSM = One
                                }

                                Return (One)
                            }
                            Case (0x02)
                            {
                                ^PXPR._OFF ()
                                Return (One)
                            }
                            Case (0x03)
                            {
                                ^PXPR._ON ()
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (XPEH, 0, NotSerialized)
                {
                    If ((UDSM == One))
                    {
                        Notify (\_SB.PCI0.SAT0, 0x80) // Status Change
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT0.PRT0, 0x02) // Device Wake
                    }

                    Return (Zero)
                }

                Method (GPZ0, 0, NotSerialized)
                {
                    If (\_SB.ISME (ODAP))
                    {
                        XPEH ()
                    }

                    Return (Zero)
                }
            }
        }

        If ((ZSPN == One))
        {
            Scope (\_SB.PCI0.SAT0.PRT1)
            {
                Name (UDSM, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PXPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PXPR
                })
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If ((\_SB.OSCO & 0x04))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = Zero
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x45, 0x04))
                }

                PowerResource (PXPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        \_SB.SGOV (OPEP, OPEA)
                        Sleep (0x64)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.SGOV (OPEP, ~OPEA)
                        Sleep (0x64)
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                If ((UDSM == Zero))
                                {
                                    UDSM = One
                                }

                                Return (One)
                            }
                            Case (0x02)
                            {
                                ^PXPR._OFF ()
                                Return (One)
                            }
                            Case (0x03)
                            {
                                ^PXPR._ON ()
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (XPEH, 0, NotSerialized)
                {
                    If ((UDSM == One))
                    {
                        Notify (\_SB.PCI0.SAT0, 0x81) // Information Change
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT0.PRT1, 0x02) // Device Wake
                    }

                    Return (Zero)
                }

                Method (GPZ1, 0, NotSerialized)
                {
                    If (\_SB.ISME (ODAP))
                    {
                        XPEH ()
                    }

                    Return (Zero)
                }
            }
        }

        If ((ZSPN == 0x02))
        {
            Scope (\_SB.PCI0.SAT0.PRT2)
            {
                Name (UDSM, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PXPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PXPR
                })
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If ((\_SB.OSCO & 0x04))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = Zero
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x45, 0x04))
                }

                PowerResource (PXPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        \_SB.SGOV (OPEP, OPEA)
                        Sleep (0x64)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.SGOV (OPEP, ~OPEA)
                        Sleep (0x64)
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                If ((UDSM == Zero))
                                {
                                    UDSM = One
                                }

                                Return (One)
                            }
                            Case (0x02)
                            {
                                ^PXPR._OFF ()
                                Return (One)
                            }
                            Case (0x03)
                            {
                                ^PXPR._ON ()
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (XPEH, 0, NotSerialized)
                {
                    If ((UDSM == One))
                    {
                        Notify (\_SB.PCI0.SAT0, 0x82) // Device-Specific Change
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT0.PRT2, 0x02) // Device Wake
                    }

                    Return (Zero)
                }

                Method (GPZ2, 0, NotSerialized)
                {
                    If (\_SB.ISME (ODAP))
                    {
                        XPEH ()
                    }

                    Return (Zero)
                }
            }
        }

        If ((ZSPN == 0x03))
        {
            Scope (\_SB.PCI0.SAT0.PRT3)
            {
                Name (UDSM, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PXPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PXPR
                })
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If ((\_SB.OSCO & 0x04))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = Zero
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x45, 0x04))
                }

                PowerResource (PXPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        \_SB.SGOV (OPEP, OPEA)
                        Sleep (0x64)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.SGOV (OPEP, ~OPEA)
                        Sleep (0x64)
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                If ((UDSM == Zero))
                                {
                                    UDSM = One
                                }

                                Return (One)
                            }
                            Case (0x02)
                            {
                                ^PXPR._OFF ()
                                Return (One)
                            }
                            Case (0x03)
                            {
                                ^PXPR._ON ()
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (XPEH, 0, NotSerialized)
                {
                    If ((UDSM == One))
                    {
                        Notify (\_SB.PCI0.SAT0, 0x83) // Device-Specific Change
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT0.PRT3, 0x02) // Device Wake
                    }

                    Return (Zero)
                }

                Method (GPZ3, 0, NotSerialized)
                {
                    If (\_SB.ISME (ODAP))
                    {
                        XPEH ()
                    }

                    Return (Zero)
                }
            }
        }

        If ((ZSPN == 0x04))
        {
            Scope (\_SB.PCI0.SAT0.PRT4)
            {
                Name (UDSM, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PXPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PXPR
                })
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If ((\_SB.OSCO & 0x04))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = Zero
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x45, 0x04))
                }

                PowerResource (PXPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        \_SB.SGOV (OPEP, OPEA)
                        Sleep (0x64)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.SGOV (OPEP, ~OPEA)
                        Sleep (0x64)
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                If ((UDSM == Zero))
                                {
                                    UDSM = One
                                }

                                Return (One)
                            }
                            Case (0x02)
                            {
                                ^PXPR._OFF ()
                                Return (One)
                            }
                            Case (0x03)
                            {
                                ^PXPR._ON ()
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (XPEH, 0, NotSerialized)
                {
                    If ((UDSM == One))
                    {
                        Notify (\_SB.PCI0.SAT0, 0x84) // Reserved
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT0.PRT4, 0x02) // Device Wake
                    }

                    Return (Zero)
                }

                Method (GPZ4, 0, NotSerialized)
                {
                    If (\_SB.ISME (ODAP))
                    {
                        XPEH ()
                    }

                    Return (Zero)
                }
            }
        }

        If ((ZSPN == 0x05))
        {
            Scope (\_SB.PCI0.SAT0.PRT5)
            {
                Name (UDSM, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PXPR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PXPR
                })
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If ((\_SB.OSCO & 0x04))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = Zero
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x45, 0x04))
                }

                PowerResource (PXPR, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        \_SB.SGOV (OPEP, OPEA)
                        Sleep (0x64)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.SGOV (OPEP, ~OPEA)
                        Sleep (0x64)
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                If ((UDSM == Zero))
                                {
                                    UDSM = One
                                }

                                Return (One)
                            }
                            Case (0x02)
                            {
                                ^PXPR._OFF ()
                                Return (One)
                            }
                            Case (0x03)
                            {
                                ^PXPR._ON ()
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (XPEH, 0, NotSerialized)
                {
                    If ((UDSM == One))
                    {
                        Notify (\_SB.PCI0.SAT0, 0x85) // Device-Specific
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT0.PRT5, 0x02) // Device Wake
                    }

                    Return (Zero)
                }

                Method (GPZ5, 0, NotSerialized)
                {
                    If (\_SB.ISME (ODAP))
                    {
                        XPEH ()
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_GPE)
    {
        Method (YY00, 0, NotSerialized)
        {
            \_SB.PCI0.SAT0.PRT0.XPEH ()
        }

        Method (YY01, 0, NotSerialized)
        {
            \_SB.PCI0.SAT0.PRT1.XPEH ()
        }

        Method (YY02, 0, NotSerialized)
        {
            \_SB.PCI0.SAT0.PRT2.XPEH ()
        }

        Method (YY03, 0, NotSerialized)
        {
            \_SB.PCI0.SAT0.PRT3.XPEH ()
        }

        Method (YY04, 0, NotSerialized)
        {
            \_SB.PCI0.SAT0.PRT4.XPEH ()
        }

        Method (YY05, 0, NotSerialized)
        {
            \_SB.PCI0.SAT0.PRT5.XPEH ()
        }
    }
}

