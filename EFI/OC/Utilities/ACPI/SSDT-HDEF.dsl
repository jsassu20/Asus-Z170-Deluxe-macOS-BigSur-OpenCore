DefinitionBlock ("", "SSDT", 2, "Z170D", "HDEF", 0x00000000)
{
	External (_SB_.PCI0.HDEF, DeviceObj)
	Device (_SB.PCI0.HDEF)
	{
		Name (_ADR, 0x001f0003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family HD Audio Controller" },
				"layout-id", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"hda-gfx", Buffer () { "onboard-1" },
				"AAPL,slot-name", Buffer () { "PCIe Bus" },
				"device_type", Buffer () { "Audio Device" },
			})
		}
	}
}