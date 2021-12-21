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
- [x] CPU Power Management with CPUFriend
- [ ] DP-Alt mode to output to secondary screen ~~need to test audio~~
- [x] HiDPI resolution
- [x] QE/CI Acceration and brightness control
- [x] Shutdown and reboot
- [x] Touchscreen
- [x] Touchpad
- [x] USB map except USB-C with WWAN and fingerprint reader disabled and power supply
- [x] Wi-Fi / Bluetooth and Continuity
- [ ] what else

## Somewhat working
- [ ] Hibernation: Hibernation works accompanied by RTC power loss (005) error. See [Sleep, wake, and hibernation](#sleep-wake-and-hibernation)
- [x] Realtek PCIe Card Reader RTS522A: The card loses connection upon wake. See [Realtek PCIe Card Reader](#realtek-pcie-card-reader).
- [ ] Sleep and wake: See [Sleep, wake, and hibernation](#sleep-wake-and-hibernation) and [Thunderbolt 3](#thunderbolt-3).
- [ ] Thunderbolt 3: Simple PCI-to-PCI bridge with no power management. See [Thunderbolt 3](#thunderbolt-3).

## Not working
- [ ] Accelerometer and Gyro sensors
- [ ] DRM contents on Safari: This is limited by non-native IGPU firmware not having Apple keys.
- [ ] I2C Cameras: Macs have not been shipped with I2C cameras, and currently there are no drivers ported from Linux.
- [ ] Light sensor

## Not tested
- WWAN slot. One stock antenna.
- 

## Disable Windows 10 ALPS keyboard driver
Background: Windows 10 ALPS keyboard driver writes _something_ to the firmware which breaks the functionality of native brightness control keys in macOS. It is necessary that this driver is disabled, so that the keys work as they should in macOS. I have disabled this driver and cannot find where the device went, so no pictures.
1. Open up Device Manager in Windows 10. Shortcut: Press the `Windows key` + `x` and `m`.
2. Look for an "HID keyboard device" with "ALPS" identifier under "Keyboards." You will need to check each of them with double click to display more information.
3. Right-click on the "HID keyboard device" with "ALPS" identifier, choose "Update driver," choose "Browse my computer for drivers," and choose "Let me pick from a list of available drivers on my computer."
4. Choose the driver that is not currently selected, and hit "Next." Installation will occur.
5. After the installation, shut down the laptop, and press hold the power button for about 30 seconds, so that the keyboard firmware resets.

Credit: midi1996

- Note
    1. I do not know if there are any _apparent_ consequences of having disabled this driver, such as non-functioning keys. If you are feeling uneasy about disabling the driver, you may try to remap F3 and F4 keys to brightness down and up, respectively. See [SSDT-PS2.dsl](/Docs/ACPI/SSDT-PS2.dsl) for more information.
    2. The brightness control is not working in Windows 10 not because of the driver, but because of patches done through OpenCore on Windows. I have tried `CustomSMBIOSGuid` set to `True` and `UpdateSMBIOSMode` to `Custom`, but it does not seem to restore the keys.
    3. If you toggle "Special Keys mapped to Fn + keypress" in the Advanced tab in BIOS, Fn+C and Fn+W are mapped to Windows "Scroll Lock" and "pause" which are recognized as F14 and F15 in macOS with VoodooPS2, or brightness down and up, respectively.

## Sleep, wake, and hibernation
Background: The Real-Time Clock (RTC) Power Loss (005) error is displayed on HP machines if RTC regions unsupported by the machine are written. This may happen on restart or resume from hibernation. If the region length is limited to `2` (See [SSDT-RTC0TIM0-2.dsl](/Docs/ACPI/SSDT-RTC0TIM0-2.dsl).), on normal restart without hibernation support (no HibernationFixup.kext), the RTC error is no longer displayed.

If HibernationFixup.kext is loaded, the RTC error may occur on restart, wake, or resume from hibernation regardless of `hibernatemode` chosen.

If the RTC region length is kept as `8` while blacklisting and emulating Region `DF`, the chance of the RTC error is greatly reduced.

To have an error-free environment, disable hibernation and limit the RTC region length to `2`.

## Realtek PCIe Card Reader
Currently the driver kills connection on sleep to workaround kernel panics. To continue using the card on wake, a pin needs to be inserted to access the slot and physically reconnect the card or the laptop needs to be rebooted.

## Thunderbolt 3
There is an immense amount of rich information if you search for native Thunderbolt experiences and solutions on macOS. It is known that correct ACPI and Thunderbolt firmware are needed for fully working Thunderbolt in macOS, both the functionality and power management.

Incorrect Thunderbolt setup may leave the system in an unstable state, resulting in sleep failures.

Currently in progress.

## Acknowledgment
Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

midi1996 and khronokernel for base OC files
