DefinitionBlock ("", "SSDT", 2, "ACDT", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // XHC3 (1b21_1242)
            "XHC3", Package()
            {
                "port-count", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, Top Row, USB 3.1 Typ-C Port (Left Hand Port)" },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, Top Row, USB 3.1 Typ-A Port (Right Hand Port)" },
                      },
                      "SS02", Package()
                      {
                          "name", Buffer() { "SS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, Top Row, USB 3.1 Typ-A Port (Right Hand Port)" },
                      },
                      "SSP1", Package()
                      {
                          "name", Buffer() { "SSP1" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, Top Row, USB 3.1 Typ-C Port (Left Hand Port)" },
                      },
                },
            },
            // XHC4 (1b21_1242)
            "XHC4", Package()
            {
                "port-count", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, 2nd Row, USB 3.1 Port (Left Hand Port)" },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, 2nd Row, USB 3.1 Port (Right Hand Port)" },
                      },
                      "SS01", Package()
                      {
                          "name", Buffer() { "SS01" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller,  Rear Panel, 2nd Row, USB 3.1 Port (Left Hand Port)" },
                      },
                      "SS02", Package()
                      {
                          "name", Buffer() { "SS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, 2nd Row, USB 3.1 Port (Right Hand Port)" },
                      },
                },
            },
            // XHC2 (8086_15d4)
            "XHC2", Package()
            {
                "port-count", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel Alpine Ridge Thunderbolt 3 Controller (Port 1) 40GB/s, Up to 6 TB devices Per Port" },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel Alpine Ridge Thunderbolt 3 Controller (Port 2) 40GB/s, Up to 6 TB devices Per Port" },
                      },
                      "SSP1", Package()
                      {
                          "name", Buffer() { "SSP1" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel Alpine Ridge Thunderbolt 3 Controller (Port 1) 40GB/s, Up to 6 TB devices Per Port" },
                      },
                      "SSP2", Package()
                      {
                          "name", Buffer() { "SSP2" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel Alpine Ridge Thunderbolt 3 Controller (Port 1) 40GB/s, Up to 6 TB devices Per Port" },
                      },
                },
            },
            // XHC (8086_a12f)
            "XHC", Package()
            {
                "port-count", Buffer() { 0x16, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel IXHC Controller (USB3_12 Header/Port 1) DISABLED" },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel IXHC Controller (USB3_12 Header/Port 2) Front Panel USB Type-A Port" },
                      },
                      "HS03", Package()
                      {
                          "name", Buffer() { "HS03" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel IXHC Controller (USB3_34 Header/Port 1) DISABLED" },
                      },
                      "HS04", Package()
                      {
                          "name", Buffer() { "HS04" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel IXHC Controller (USB3_34 Header/Port 2) Front Panel USB Type-C Port" },
                      },
                      "HS05", Package()
                      {
                          "name", Buffer() { "HS05" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x05, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel XHC Controller Asus BIOS Recovery Flash Port (Rear Panel, Bottom Row, Black Port" },
                      },
                      "HS06", Package()
                      {
                          "name", Buffer() { "HS06" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x06, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asus Key Express Port ( Assignable Hardware Control of Macros Keyboard)" },
                      },
                      "HS11", Package()
                      {
                          "name", Buffer() { "HS11" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0B, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel XHC Controller (USB_12 Port/ Port 1) DISABLED" },
                      },
                      "HS12", Package()
                      {
                          "name", Buffer() { "HS12" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0C, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel XHC Controller (USB_12 Port/ Port 2) Broadcom Internal Bluetooth USB Hub" },
                      },
                      "HS13", Package()
                      {
                          "name", Buffer() { "HS13" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0D, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel XHC Controller (USB_34 Port/ Port 1) DISABLED" },
                      },
                      "HS14", Package()
                      {
                          "name", Buffer() { "HS14" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0E, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel XHC Controller (USB_34 Port/ Port 2) DISABLED" },
                      },
                      "SS01", Package()
                      {
                          "name", Buffer() { "SS01" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x11, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel IXHC Controller (USB3_12 Header/Port 1) DISABLED" },
                      },
                      "SS02", Package()
                      {
                          "name", Buffer() { "SS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x12, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel IXHC Controller (USB3_12 Header/Port 2) Front Panel USB Type-A Port" },
                      },
                      "SS03", Package()
                      {
                          "name", Buffer() { "SS03" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x13, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel IXHC Controller (USB3_34 Header/Port 1) DISABLED" },
                      },
                      "SS04", Package()
                      {
                          "name", Buffer() { "SS04" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x14, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel IXHC Controller (USB3_34 Header/Port 2) Front Panel USB Type-C Port" },
                      },
                      "SS06", Package()
                      {
                          "name", Buffer() { "SS06" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x16, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asus Key Express Port ( Assignable Hardware Control of Macros Keyboard)" },
                      },
                },
            },
            // XHC5 (1b21_1242)
            "XHC5", Package()
            {
                "port-count", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, 3rd Row, USB 3.1 Port (Left Hand Port)" },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, 3rd Row, USB 3.1 Port (Right Hand Port)" },
                      },
                      "SS01", Package()
                      {
                          "name", Buffer() { "SS01" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, 3rd Row, USB 3.1 Port (Left Hand Port)" },
                      },
                      "SS02", Package()
                      {
                          "name", Buffer() { "SS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Asmedia USB 3.1 Controller, Rear Panel, 3rd Row, USB 3.1 Port (Right Hand Port)" },
                      },
                },
            },
        })
    }
}
