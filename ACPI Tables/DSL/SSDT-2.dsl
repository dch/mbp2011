/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130823-32 [Sep 16 2013]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of /DarwinDumperReports/000_2015-01-30_01-25-08_MacBookPro8,2/DarwinDumper_2.9.7_Apple_X64_Yos_dch/ACPI Tables/AML/SSDT-2.aml, Fri Jan 30 01:25:14 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000061A (1562)
 *     Revision         0x01
 *     Checksum         0xDD
 *     OEM ID           "APPLE "
 *     OEM Table ID     "UsbNoRmh"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */
DefinitionBlock ("/DarwinDumperReports/000_2015-01-30_01-25-08_MacBookPro8,2/DarwinDumper_2.9.7_Apple_X64_Yos_dch/ACPI Tables/AML/SSDT-2.aml", "SSDT", 1, "APPLE ", "UsbNoRmh", 0x00001000)
{

    External (_SB_.PCI0, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (GI40, FieldUnitObj)
    External (GP40, FieldUnitObj)
    External (UH2D, FieldUnitObj)
    External (UH3D, FieldUnitObj)
    External (UH4D, FieldUnitObj)
    External (UH6D, FieldUnitObj)
    External (UH7D, FieldUnitObj)

    Scope (\_SB.PCI0)
    {
        Device (UHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            Name (_STA, 0x0B)  // _STA: Status
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
            }
        }

        Device (UHC2)
        {
            Name (_ADR, 0x001D0001)  // _ADR: Address
            Name (_STA, 0x09)  // _STA: Status
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                Store (0x01, UH2D)
            }
        }

        Device (UHC3)
        {
            Name (_ADR, 0x001D0002)  // _ADR: Address
            Name (_STA, 0x09)  // _STA: Status
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                Store (0x01, UH3D)
            }
        }

        Device (UHC4)
        {
            Name (_ADR, 0x001D0003)  // _ADR: Address
            Name (_STA, 0x09)  // _STA: Status
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                Store (0x01, UH4D)
            }
        }

        Device (UHC5)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            Name (_STA, 0x0B)  // _STA: Status
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
            }
        }

        Device (UHC6)
        {
            Name (_ADR, 0x001A0001)  // _ADR: Address
            Name (_STA, 0x09)  // _STA: Status
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                Store (0x01, UH6D)
            }
        }

        Device (UHC7)
        {
            Name (_ADR, 0x001A0002)  // _ADR: Address
            Name (_STA, 0x09)  // _STA: Status
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                Store (0x01, UH7D)
            }
        }

        Device (EHC1)
        {
            Name (_ADR, 0x001D0007)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0B)
                    {
                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0898, 
                        "AAPL,current-extra-in-sleep", 
                        0x0640, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0834, 
                        "AAPL,device-internal", 
                        0x02, 
                        Buffer (0x01)
                        {
                             0x00
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x03)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x03)
            }

            Method (HRST, 1, Serialized)
            {
                If (LEqual (Arg0, 0x01))
                {
                    Store (Arg0, GI40)
                }
                Else
                {
                    If (LEqual (Arg0, 0x00))
                    {
                        Store (Arg0, GP40)
                        Store (Arg0, GI40)
                    }
                }
            }

            Device (HUBN)
            {
                Name (_ADR, 0x01)  // _ADR: Address
                Device (PRTN)
                {
                    Name (_ADR, 0x01)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                        {
                            0x81, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x30, 
                            0x1C, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (0x00)
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                        {
                            0x81, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x31, 
                            0x1C, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                    }

                    Device (PRT3)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                        {
                            0x81, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x30, 
                            0x1C, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                    }

                    Device (PRT4)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                        {
                            0x81, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x30, 
                            0x1C, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                    }
                }
            }
        }

        Device (EHC2)
        {
            Name (_ADR, 0x001A0007)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0B)
                    {
                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0898, 
                        "AAPL,current-extra-in-sleep", 
                        0x0640, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0834, 
                        "AAPL,device-internal", 
                        0x02, 
                        Buffer (0x01)
                        {
                             0x00
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x03)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x03)
            }

            Method (HRST, 1, Serialized)
            {
                If (LEqual (Arg0, 0x01))
                {
                    Store (Arg0, GI40)
                }
                Else
                {
                    If (LEqual (Arg0, 0x00))
                    {
                        Store (Arg0, GP40)
                        Store (Arg0, GI40)
                    }
                }
            }

            Device (HUBN)
            {
                Name (_ADR, 0x01)  // _ADR: Address
                Device (PRTN)
                {
                    Name (_ADR, 0x01)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                        {
                            0x81, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x30, 
                            0x1C, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (0x00)
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                        {
                            0x81, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x30, 
                            0x1C, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (0x00)
                        }
                    }

                    Device (PRT3)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                        {
                            0x81, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x31, 
                            0x1C, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                    }

                    Device (PRT4)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                        {
                            0x81, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x31, 
                            0x1C, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                    }
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0xFF, 
                    0x00, 
                    0x00
                })
                Name (_PLD, Package (0x10)  // _PLD: Physical Location of Device
                {
                    0x81, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x30, 
                    0x1C, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (0x00)
                }
            }
        }
    }
}

