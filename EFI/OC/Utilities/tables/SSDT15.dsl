/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT15.aml, Sun Feb 14 17:47:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001C3 (451)
 *     Revision         0x02
 *     Checksum         0x6C
 *     OEM ID           "Z170D"
 *     OEM Table ID     "IMEI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20201113 (538972435)
 */
DefinitionBlock ("", "SSDT", 2, "Z170D", "IMEI", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.HECI, DeviceObj)
    External (_SB_.PCI0.IMEI, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (_SB.PCI0)
    {
        Scope (HECI)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
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
                    Buffer (0x35)
                    {
                        "100 Series/C230 Series Chipset Family MEI Controller"
                    }, 

                    "name", 
                    Buffer (0x1E)
                    {
                        "Apple Internal MEI Controller"
                    }, 

                    "device_type", 
                    Buffer (0x19)
                    {
                        "Communication Controller"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x01                                             // .
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x3A, 0xA1, 0x00, 0x00                           // :...
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
    }
}

