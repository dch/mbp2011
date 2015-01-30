/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130823-32 [Sep 16 2013]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of /DarwinDumperReports/000_2015-01-30_01-25-08_MacBookPro8,2/DarwinDumper_2.9.7_Apple_X64_Yos_dch/ACPI Tables/AML/SSDT-3.aml, Fri Jan 30 01:25:14 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000A0 (160)
 *     Revision         0x02
 *     Checksum         0x2D
 *     OEM ID           "APPLE "
 *     OEM Table ID     "IGNoHda"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */
DefinitionBlock ("/DarwinDumperReports/000_2015-01-30_01-25-08_MacBookPro8,2/DarwinDumper_2.9.7_Apple_X64_Yos_dch/ACPI Tables/AML/SSDT-3.aml", "SSDT", 2, "APPLE ", "IGNoHda", 0x00001000)
{

    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)

    Scope (\_SB.PCI0.HDEF)
    {
        OperationRegion (HDAR, PCI_Config, 0x00, 0x60)
        Field (HDAR, WordAcc, NoLock, Preserve)
        {
            VID0,   16, 
            DID0,   16, 
            Offset (0x4C), 
            DCKA,   1, 
            Offset (0x4D), 
            DCKM,   1, 
                ,   6, 
            DCKS,   1, 
            Offset (0x54), 
                ,   15, 
            PMES,   1
        }
    }

    Scope (\_SB.PCI0.IGPU)
    {
        OperationRegion (GFXH, PCI_Config, 0x00, 0x40)
        Field (GFXH, ByteAcc, NoLock, Preserve)
        {
            VID0,   16, 
            DID0,   16
        }
    }
}

