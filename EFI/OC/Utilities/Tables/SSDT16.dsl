/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT16.aml, Sun Feb 14 17:47:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000017B (379)
 *     Revision         0x01
 *     Checksum         0x6E
 *     OEM ID           "Z170D"
 *     OEM Table ID     "LPCB"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20201113 (538972435)
 */
DefinitionBlock ("", "SSDT", 1, "Z170D", "LPCB", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Method (_SB.PCI0.LPCB._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x12)
        {
            "AAPL,slot-name", 
            Buffer (0x12)
            {
                "Internal PCIe Bus"
            }, 

            "model", 
            Buffer (0x2E)
            {
                "100 Series/C230 Series Chipset LPC Controller"
            }, 

            "name", 
            Buffer (0x1E)
            {
                "Apple Internal ISA Controller"
            }, 

            "built-in", 
            Buffer (One)
            {
                 0x01                                             // .
            }, 

            "device_type", 
            Buffer (0x0B)
            {
                "ISA Bridge"
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0x43, 0x31, 0x00, 0x00                           // C1..
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                           // ....
            }, 

            "subsystem-id", 
            Buffer (0x04)
            {
                 0x94, 0x86, 0x00, 0x00                           // ....
            }, 

            "subsystem-vendor-id", 
            Buffer (0x04)
            {
                 0x43, 0x10, 0x00, 0x00                           // C...
            }
        })
    }

    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
    Return (Local0)
}

