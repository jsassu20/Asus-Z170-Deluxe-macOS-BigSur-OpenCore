/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT12.aml, Sun Feb 14 17:47:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002F8 (760)
 *     Revision         0x01
 *     Checksum         0x32
 *     OEM ID           "Z170D"
 *     OEM Table ID     "GFX0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20201113 (538972435)
 */
DefinitionBlock ("", "SSDT", 1, "Z170D", "GFX0", 0x00000000)
{
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)

    Device (_SB.PCI0.PEG0.GFX0)
    {
        Name (_SUN, One)  // _SUN: Slot User Number
        Name (_ADR, Zero)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x1A)
            {
                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "PCIe x16 Slot 1"
                }, 

                "model", 
                Buffer (0x12)
                {
                    "AMD Radeon RX 570"
                }, 

                "device-type", 
                Buffer (0x1A)
                {
                    "VGA Compatible Controller"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xDF, 0x67, 0x00, 0x00                           // .g..
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x02, 0x10, 0x00, 0x00                           // ....
                }, 

                "subsystem-vendor-id", 
                Buffer (0x04)
                {
                     0x02, 0x10, 0x00, 0x00                           // ....
                }, 

                "@0,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@1,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@2,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@3,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@4,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@5,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }
            })
        }
    }

    Device (_SB.PCI0.PEG0.HDAU)
    {
        Name (_ADR, One)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0E)
            {
                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "PCIe x16 Slot 1"
                }, 

                "model", 
                Buffer (0x2A)
                {
                    "AMD Radeon RX 570 Audio Output Controller"
                }, 

                "device-type", 
                Buffer (0x0D)
                {
                    "Audio Device"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "PinConfigurations", 
                Buffer (0x04)
                {
                     0xE0, 0x00, 0x56, 0x28                           // ..V(
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xF0, 0xAA, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x02, 0x10, 0x00, 0x00                           // ....
                }
            })
        }
    }

    Name (_SB.PCI0.PEG0.PEGP._STA, Zero)  // _STA: Status
}

