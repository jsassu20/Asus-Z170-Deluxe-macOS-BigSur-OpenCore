/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT22.aml, Sun Feb 14 17:47:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000183 (387)
 *     Revision         0x01
 *     Checksum         0xE4
 *     OEM ID           "Z170D"
 *     OEM Table ID     "SATA"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20201113 (538972435)
 */
DefinitionBlock ("", "SSDT", 1, "Z170D", "SATA", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0)
    {
        Scope (SAT0)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (SATA)
        {
            Name (_ADR, 0x00170000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x0E)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "device-type", 
                    Buffer (0x10)
                    {
                        "AHCI Controller"
                    }, 

                    "name", 
                    Buffer (0x16)
                    {
                        "Intel AHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x2F)
                    {
                        "Intel 10 Series Chipset Family SATA Controller"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,a102"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x02, 0xA1, 0x00, 0x00                           // ....
                    }
                })
            }

            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

