/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT26.aml, Sun Feb 14 17:47:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000018B (395)
 *     Revision         0x02
 *     Checksum         0x5E
 *     OEM ID           "Z170D"
 *     OEM Table ID     "XHC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20201113 (538972435)
 */
DefinitionBlock ("", "SSDT", 2, "Z170D", "XHC", 0x00001000)
{
    External (_SB_.PCI0.XHC_, DeviceObj)

    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x15)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built In"
            }, 

            "name", 
            Buffer (0x15)
            {
                "Intel XHC Controller"
            }, 

            "model", 
            Buffer (0x37)
            {
                "Intel 10 Series Chipset Family USB xHC Host Controller"
            }, 

            "AAPL,current-available", 
            0x0834, 
            "AAPL,current-extra", 
            0x0A8C, 
            "AAPL,current-in-sleep", 
            0x0A8C, 
            "AAPL,max-port-current-in-sleep", 
            0x0834, 
            "AAPL,device-internal", 
            Zero, 
            Buffer (One)
            {
                 0x00                                             // .
            }, 

            "AAPL,clock-id", 
            Buffer (One)
            {
                 0x01                                             // .
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0x2F, 0xA1, 0x00, 0x00                           // /...
            }
        })
    }
}

