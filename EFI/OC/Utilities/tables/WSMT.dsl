/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210105 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembly of WSMT.aml, Sun Feb 14 17:47:26 2021
 *
 * ACPI Data Table [WSMT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "WSMT"    [Windows SMM Security Mitigations Table]
[004h 0004   4]                 Table Length : 00000028
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 6D
[00Ah 0010   6]                       Oem ID : "INTEL "
[010h 0016   8]                 Oem Table ID : "SKL"
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : "MSFT"
[020h 0032   4]        Asl Compiler Revision : 0000005F

[024h 0036   4]             Protection Flags : 00000000
                          FIXED_COMM_BUFFERS : 0
           COMM_BUFFER_NESTED_PTR_PROTECTION : 0
                  SYSTEM_RESOURCE_PROTECTION : 0

Raw Table Data: Length 40 (0x28)

    0000: 57 53 4D 54 28 00 00 00 01 6D 49 4E 54 45 4C 20  // WSMT(....mINTEL 
    0010: 53 4B 4C 00 00 00 00 00 00 00 00 00 4D 53 46 54  // SKL.........MSFT
    0020: 5F 00 00 00 00 00 00 00                          // _.......
