/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT17.aml, Sun Feb 14 17:47:26 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000007A (122)
 *     Revision         0x02
 *     Checksum         0x78
 *     OEM ID           "ACDT"
 *     OEM Table ID     "MCHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20201113 (538972435)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.MCHC, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

