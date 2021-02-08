DefinitionBlock ("", "SSDT", 2, "ACDT", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // XHC (8086_a12f)
            "XHC", Package()
            {
                "port-count", Buffer() { 0x16, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_1 (Internal Motherboard Header USB 3_12 (Port 1) | XHC Handoff" },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_2 (Internal Motherboard Header USB 3_12 (Port 2) | XHC Handoff" },
                      },
                      "HS03", Package()
                      {
                          "name", Buffer() { "HS03" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_3 (Internal Motherboard Header USB 3_34 (Port 3) | XHC Handoff" },
                      },
                      "HS04", Package()
                      {
                          "name", Buffer() { "HS04" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_4 (Internal Motherboard Header USB 3_34 (Port 4) | XHC Handoff" },
                      },
                      "HS05", Package()
                      {
                          "name", Buffer() { "HS05" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x05, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 2_5 (External, Type A) | BIOS Flashback Port | Rear Panel, Bottom Row, Black Port | XHC Handoff" },
                      },
                      "HS06", Package()
                      {
                          "name", Buffer() { "HS06" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x06, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_6 (External, Type A} | Asus Key Express Port | Rear Panel, Bottom Row, Blue Port | XHC Handoff" },
                      },
                      "HS11", Package()
                      {
                          "name", Buffer() { "HS11" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0B, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 2_1 (Internal Motherboard Header USB 2_12 (Port 1) | XHC Handoff" },
                      },
                      "HS12", Package()
                      {
                          "name", Buffer() { "HS12" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0C, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 2_2 (Internal Motherboard Header USB 2_12 (Port 2) | Broadcom Bluetooth NGFF Card | XHC Handoff" },
                      },
                      "HS13", Package()
                      {
                          "name", Buffer() { "HS13" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0D, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 2_3 (Internal Motherboard Header USB 2_34 (Port 3) | XHC Handoff" },
                      },
                      "HS14", Package()
                      {
                          "name", Buffer() { "HS14" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0E, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 2_4 (Internal Motherboard Header USB 2_34 (Port 4) | XHC Handoff" },
                      },
                      "SS01", Package()
                      {
                          "name", Buffer() { "SS01" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x11, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_1 (Internal Motherboard Header USB 3_12 (Port 1)" },
                      },
                      "SS02", Package()
                      {
                          "name", Buffer() { "SS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x12, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_2 (Internal Motherboard Header USB 3_12 (Port 2)" },
                      },
                      "SS03", Package()
                      {
                          "name", Buffer() { "SS03" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x13, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_3 (Internal Motherboard Header USB 3_34 (Port 3)" },
                      },
                      "SS04", Package()
                      {
                          "name", Buffer() { "SS04" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x14, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_4 (Internal Motherboard Header USB 3_34 (Port 4)" },
                      },
                      "SS06", Package()
                      {
                          "name", Buffer() { "SS06" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x16, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB 3_6 (External, Type A} | Asus Key Express Port | Rear Panel, Bottom Row, Blue Port" },
                      },
                },
            },
        })
    }
}
