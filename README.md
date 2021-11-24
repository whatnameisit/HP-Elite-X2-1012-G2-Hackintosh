# HP-Elite-X2-1012-G2-Hackintosh
In progress

## System specification

| Item | Details |
| - | - |
| Model | HP Elite X2 1012 G2 |
| CPU | Intel Core i5-7300U |
| Graphics | Intel HD Graphics 620 |
| Display | 2736 x 1824 @ 60Hz |
| RAM | 4GB x 2 1866 MHz LPDDR3 |
| Wi-Fi / Bluetooth | BCM94360NG / BCM20702 *(Replaced)* |
| WWAN | Empty |
| Card Reader | Realtek PCIe Card Reader RTS522A |
| Camera | I2C |
| Audio | Conexant CX8200 |
| Touchpad | ALPS |
| ThunderBolt 3 | Alpine Ridge JHL6540 |
| UEFI BIOS Utility | P87 01.39Rev.A |

## Working
- [x] CPU Power Management
- [x] QE/CI Acceration and brightness control
- [x] HiDPI resolution
- [x] USB map except USB-C with WWAN and fingerprint reader disabled and power supply
- [ ] DP-Alt mode to output to secondary screen ~~need to test audio~~
- [x] Audio input and output
- [x] Touchscreen
- [x] Touchpad
- [ ] Brightness control via keyboard: For now, remapped F3 and F4 to brightness up and down, respectively. There are issues with Windows 10 HP keyboard driver which remaps the original brightness control keys to something else.
- [x] Shutdown and reboot
- [ ] Sleep and wake: If USB-C, Thunderbolt, or display adapter are connected, kernel panic or power management failure will likely occur.
- [ ] Realtek PCIe Card Reader RTS522A: Currently the driver kills connection on sleep to workaround kernel panics. The card needs to be physically reconnected. To continue using the card on wake, a pin needs to be inserted to access the slot or the laptop needs to be rebooted.
- [x] Wi-Fi / Bluetooth and Continuity
- [ ] Thunderbolt 3: Only if connected during startup. Sleep with a device connected to the port will break things.
- [ ] what else

## Not working
- I2C Cameras: Macs have not shipped with I2C cameras, and currently there are no drivers ported from Linux.
- Correct Thunderbolt 3 and USB-C device initialization for macOS: Thunderbolt 3 device will work only if connected at startup, and USB-C hotplug will work with an ACPI patch hack.
- Accelerometer and Gyro sensors
- Light sensor
- DRM contents

# Not tested
- WWAN slot
- 

## What else
to be filled

## Acknowledgment

Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

midi1996 and khronokernel for base OC files
