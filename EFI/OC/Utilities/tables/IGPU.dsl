/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT9.aml, Sun Feb 14 17:47:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000037E (894)
 *     Revision         0x02
 *     Checksum         0x46
 *     OEM ID           "Z170D"
 *     OEM Table ID     "IGPU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20201113 (538972435)
 */
DefinitionBlock ("", "SSDT", 2, "Z170D", "IGPU", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (IGPU)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x22)
                {
                
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "PCIe Bus"
                    },

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x12, 0x19, 0x00, 0x00                           // ....
                    }, 

                    "device_type", 
                    Buffer (0x1A)
                    {
                        "VGA Compatible Controller"
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }, 

                    "framebuffer-patch-enable", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    },  

                    "AAPL,ig-platform-id", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x12, 0x19                           // ....
                    }, 

                    "model", 
                    Buffer (0x16)
                    {
                        "Intel HD Graphics 530"
                    }

                })
            }
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x0A)
                {
                    "model", 
                    Buffer (0x3A)
                    {
                        "100 Series/C230 Series Chipset Family HD Audio Controller"
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "PCIe Bus"
                    }, 

                    "device_type", 
                    Buffer (0x0D)
                    {
                        "Audio Device"
                    }
                })
            }
        }
    }
}

