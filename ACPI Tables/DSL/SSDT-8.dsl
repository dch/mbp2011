/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130823-32 [Sep 16 2013]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of /DarwinDumperReports/000_2015-01-30_01-25-08_MacBookPro8,2/DarwinDumper_2.9.7_Apple_X64_Yos_dch/ACPI Tables/AML/SSDT-8.aml, Fri Jan 30 01:25:14 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000037A (890)
 *     Revision         0x01
 *     Checksum         0xBA
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApTst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */
DefinitionBlock ("/DarwinDumperReports/000_2015-01-30_01-25-08_MacBookPro8,2/DarwinDumper_2.9.7_Apple_X64_Yos_dch/ACPI Tables/AML/SSDT-8.aml", "SSDT", 1, "PmRef", "ApTst", 0x00003000)
{

    External (_PR_.CPU0._PTC, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._TSS, MethodObj)    // 0 Arguments
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (PDC0, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_PR.CPU1)
    {
        Name (_TPC, 0x00)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        0x00, 
                        0x00, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    0x00, 
                    0x01, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU2)
    {
        Name (_TPC, 0x00)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        0x00, 
                        0x00, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    0x00, 
                    0x02, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU3)
    {
        Name (_TPC, 0x00)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        0x00, 
                        0x00, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    0x00, 
                    0x03, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU4)
    {
        Name (_TPC, 0x00)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        0x00, 
                        0x00, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    0x00, 
                    0x04, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU5)
    {
        Name (_TPC, 0x00)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        0x00, 
                        0x00, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    0x00, 
                    0x05, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU6)
    {
        Name (_TPC, 0x00)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        0x00, 
                        0x00, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    0x00, 
                    0x06, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU7)
    {
        Name (_TPC, 0x00)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        0x00, 
                        0x00, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    0x00, 
                    0x07, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }
}

