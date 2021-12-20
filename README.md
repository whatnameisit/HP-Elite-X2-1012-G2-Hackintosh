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
- [x] Brightness control via keyboard: See [Disable Windows 10 ALPS keyboard driver](#disable-windows-10-alps-keyboard-driver).
- [x] CPU Power Management
- [ ] DP-Alt mode to output to secondary screen ~~need to test audio~~
- [x] HiDPI resolution
- [x] QE/CI Acceration and brightness control
- [x] Shutdown and reboot
- [ ] Sleep and wake: If USB-C, Thunderbolt, or display adapter are connected, kernel panic or power management failure will likely occur.
- [ ] Thunderbolt 3: Only if connected during startup. Sleep with a device connected to the port will break things.
- [x] Touchscreen
- [x] Touchpad
- [x] USB map except USB-C with WWAN and fingerprint reader disabled and power supply
- [x] Wi-Fi / Bluetooth and Continuity
- [ ] what else

## Somewhat working
- [x] Realtek PCIe Card Reader RTS522A: See [Realtek PCIe Card Reader information](#realtek-pcie-card-reader-information).

## Not working
- Accelerometer and Gyro sensors
- Correct Thunderbolt 3 and USB-C device initialization for macOS: Thunderbolt 3 device will work only if connected at startup, and USB-C hotplug will work with an ACPI patch hack.
- DRM contents on Safari
- I2C Cameras: Macs have not been shipped with I2C cameras, and currently there are no drivers ported from Linux.
- Light sensor

## Not tested
- WWAN slot. One stock antenna.
- 

## Disable Windows 10 ALPS keyboard driver
- Background: Windows 10 ALPS keyboard driver writes _something_ to the firmware which breaks the functionality of native brightness control keys in macOS. It is necessary that this driver is disabled, so that the keys work as they should in macOS. I have disabled this driver and cannot find where the device went, so no pictures.
1. Open up Device Manager in Windows 10. Shortcut: Press the `Windows key` + `x` and `m`.
2. Look for an "HID keyboard device" with "ALPS" identifier under "Keyboards." You will need to check each of them by double clicking to display more information.
3. Right-click on the "HID keyboard device" with "ALPS" identifier, choose "Update driver," choose "Browse my computer for drivers," and choose "Let me pick from a list of available drivers on my computer."
4. Choose the driver that is not currently selected, and hit "Next." Installation will occur.
5. After the installation, shut down the laptop, and press hold the power button for about 30 seconds, so that the keyboard firmware resets.

Credit: midi1996

- Note
    1. I do not know if there are any _apparent_ consequences of having disabled this driver, such as non functioning keys. If you are uneasy about disabling the driver, you may try to remap F3 and F4 keys to brightness down and up, respectively. See [SSDT-PS2.dsl](/Docs/ACPI/SSDT-PS2.dsl) for more information.
    2. The brightness control is not working in Windows 10 not because of the driver, but because of patches done through OpenCore on Windows. I have tried `CustomSMBIOSGuid` set to `True` and `UpdateSMBIOSMode` to `Custom`, but it does not seem to restore the keys.
    3. If you toggle "Special Keys mapped to Fn + keypress" in the Advanced tab in BIOS, Fn+C and Fn+W are mapped to Windows "Scroll Lock" and "pause" which are recognized as F14 and F15 in macOS, or brightness down and up, respectively.

## Realtek PCIe Card Reader information
- Currently the driver kills connection on sleep to workaround kernel panics. The card needs to be physically reconnected. To continue using the card on wake, a pin needs to be inserted to access the slot or the laptop needs to be rebooted.

## What else
- to be filled

## Acknowledgment
Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

midi1996 and khronokernel for base OC files
