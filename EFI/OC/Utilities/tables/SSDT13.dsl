/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT13.aml, Sun Feb 14 17:47:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000016A (362)
 *     Revision         0x01
 *     Checksum         0x61
 *     OEM ID           "Z170D"
 *     OEM Table ID     "GLAN"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20201113 (538972435)
 */
DefinitionBlock ("", "SSDT", 1, "Z170D", "GLAN", 0x00000000)
{
    External (_SB_.PCI0.GLAN, DeviceObj)

    Method (_SB.PCI0.GLAN._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
            Buffer (0x09)
            {
                "PCIe Bus"
            }, 

            "model", 
            Buffer (0x30)
            {
                "Intel i219V2 Gigabit Ethernet Network Interface"
            }, 

            "name", 
            Buffer (0x1F)
            {
                "Intel Gigabit LAN Interface #2"
            }, 

            "device-type", 
            Buffer (0x14)
            {
                "Ethernet Controller"
            }, 

            "built-in", 
            Buffer (One)
            {
                 0x01                                             // .
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0xB8, 0x15, 0x00, 0x00                           // ....
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                           // ....
            }, 

            "subsystem-id", 
            Buffer (0x04)
            {
                 0x00, 0x86, 0x00, 0x00                           // ....
            }, 

            "subsystem-vendor-id", 
            Buffer (0x04)
            {
                 0x43, 0x10, 0x00, 0x00                           // C...
            }
        })
    }
}

