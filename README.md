# HP-Elite-X2-1012-G2-Hackintosh
In progress

## System specification

| Item | Details | Note |
| - | - | - |
| Model | HP Elite X2 1012 G2 | |
| CPU | Intel Core i5-7300U | |
| Graphics | Intel HD Graphics 620 | |
| Display | 2736 x 1824 @ 60Hz | |
| RAM | 4GB x 2 1866 MHz LPDDR3 | |
| Wi-Fi / Bluetooth | BCM94360NG / BCM20702 | Replaced |
| WWAN | Empty | Not tested |
| Card Reader | Realtek PCIe Card Reader RTS522A | |
| Camera | I2C | Not working |
| Audio | Conexant CX8200 | |
| Touchpad | ALPS | |
| ThunderBolt 3 | Alpine Ridge JHL6340 | In progress |
| UEFI BIOS Utility | P87 01.39Rev.A | |

## Working
- [x] Audio input and output
- [x] Brightness control via keyboard: There are issues with Windows 10 HP keyboard driver which remaps the original brightness control keys to something else. You can use SSDT-PS2.dsl which provides an option to remap F3 and F4 to brightness up and down, respectively. Or you can disable the ALPS keyboard driver in Windows 10 driver under Device Manager-Keyboard, and reset the keyboard by pressing the power button for about 30 seconds. Credit midi1996.
- [x] CPU Power Management
- [ ] DP-Alt mode to output to secondary screen ~~need to test audio~~
- [x] HiDPI resolution
- [x] QE/CI Acceration and brightness control
- [ ] Realtek PCIe Card Reader RTS522A: Currently the driver kills connection on sleep to workaround kernel panics. The card needs to be physically reconnected. To continue using the card on wake, a pin needs to be inserted to access the slot or the laptop needs to be rebooted.
- [x] Shutdown and reboot
- [ ] Sleep and wake: If USB-C, Thunderbolt, or display adapter are connected, kernel panic or power management failure will likely occur.
- [ ] Thunderbolt 3: Only if connected during startup. Sleep with a device connected to the port will break things.
- [x] Touchscreen
- [x] Touchpad
- [x] USB map except USB-C with WWAN and fingerprint reader disabled and power supply
- [x] Wi-Fi / Bluetooth and Continuity
- [ ] what else

## Not working
- Accelerometer and Gyro sensors
- Correct Thunderbolt 3 and USB-C device initialization for macOS: Thunderbolt 3 device will work only if connected at startup, and USB-C hotplug will work with an ACPI patch hack.
- DRM contents
- I2C Cameras: Macs have not been shipped with I2C cameras, and currently there are no drivers ported from Linux.
- Light sensor

# Not tested
- WWAN slot. One stock antenna.
- 

## What else
- to be filled

## Acknowledgment

Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

midi1996 and khronokernel for base OC files
