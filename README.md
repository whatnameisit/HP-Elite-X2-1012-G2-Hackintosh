# HP-Elite-X2-1012-G2-Hackintosh
In progress

## Table of Contents
- [Status](#status)
  - [System specification](#system-specification)
  - [Working](#working)
  - [Somewhat working](#somewhat-working)
  - [Not working](#not-working)
  - [Not tested](#not-tested)
- [Installation](#installation)
  - [Install macOS](#install-macos)
  - [UEFI BIOS settings](#uefi-bios-settings)
- [Documentation](#documentation)
  - [Disable Windows 10 ALPS keyboard driver](#disable-windows-10-alps-keyboard-driver)
  - [Sleep, wake, and hibernation](#sleep--wake--and-hibernation)
  - [Sleep on low battery](#sleep-on-low-battery)
  - [Modern Standby](#modern-standby)
  - [Realtek PCIe Card Reader](#realtek-pcie-card-reader)
  - [Laptop teardown](#laptop-teardown)
- [Troubleshooting](#troubleshooting)
- [Acknowledgment](#acknowledgment)

## Status

### System specification
| Item | Details | Note |
| - | - | - |
| Model | HP Elite X2 1012 G2 | |
| CPU | Intel Core i5-7300U | |
| Graphics | Intel HD Graphics 620 | |
| Display | 2736 x 1824 @ 60Hz | |
| RAM | Micron / Elpida 4GB x 2 1866 MHz LPDDR3 | |
| Wi-Fi / Bluetooth | BCM94360NG / BCM20702 | Replaced |
| WWAN | Empty | Not tested |
| Card Reader | Realtek PCIe Card Reader RTS522A | |
| Camera | I2C | Not working |
| Audio | Conexant CX8200 | |
| Touchpad | ALPS | |
| ThunderBolt 3 | Alpine Ridge JHL6340 | |
| UEFI BIOS Utility | P87 01.39Rev.A | |

### Working
- [x] Audio input and output
- [x] Brightness control via keyboard: See [Disable Windows 10 ALPS keyboard driver](#disable-windows-10-alps-keyboard-driver).
- [x] CPU Power Management with CPUFriend
- [x] HiDPI resolution
- [x] QE/CI Acceration and brightness control
- [x] Shutdown and reboot
- [x] Touchscreen
- [x] Touchpad
- [x] USB map except USB-C with WWAN and fingerprint reader disabled and power supply
- [x] Wi-Fi / Bluetooth and Continuity

### Somewhat working
- [ ] DP-Alt mode to output to secondary screen ~~need to test audio~~ and sometimes fails to output after wake.
- [ ] Hibernation: Hibernation works, but is accompanied by the RTC power loss (005) error. See [Sleep, wake, and hibernation](#sleep-wake-and-hibernation).
- [x] Realtek PCIe Card Reader RTS522A: The card loses connection upon wake. See [Realtek PCIe Card Reader](#realtek-pcie-card-reader).
- [ ] Sleep and wake: See [Sleep, wake, and hibernation](#sleep-wake-and-hibernation).

### Not working
- [ ] Accelerometer and Gyro sensors
- [ ] DRM contents on Safari: This is limited by non-native IGPU firmware not having Apple keys.
- [ ] I2C Cameras: Macs have not been shipped with I2C cameras, and currently there are no drivers ported from Linux.
- [ ] Light sensor
- [ ] Thunderbolt 3

### Not tested
- WWAN slot. One stock antenna.

## Installation

### Install macOS
Follow [Dortania's OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/).

### UEFI BIOS settings
Necessary options are commented in the photos below. You can pick other options to your taste.
  ![](/images/bios-security.webp)
  ![](/images/bios-advanced-boot-options-1.webp)
  ![](/images/bios-advanced-boot-options-2.webp)
  ![](/images/bios-advanced-secure-boot-configuration.webp)
  ![](/images/bios-advanced-system-options.webp.webp)
  ![](/images/bios-advanced-built-in-device-options-1.webp)
  ![](/images/bios-advanced-built-in-device-options-2.webp)
  ![](/images/bios-advanced-port-options.webp)
  ![](/images/bios-advanced-power-management-options.webp)
  ![](/images/bios-advanced-remote-management-options.webp)
  
## Documentation

### Disable Windows 10 ALPS keyboard driver
Background: Windows 10 ALPS keyboard driver writes _something_ to the firmware which breaks the functionality of native brightness control keys in macOS. It is necessary that this driver is disabled, so that the keys work as they should in macOS. I have disabled this driver and cannot find where the device went, so no pictures.
1. Open up Device Manager in Windows 10. Shortcut: Press the `Windows key` + `x` and `m`.
2. Look for an "HID keyboard device" with "ALPS" identifier under "Keyboards." You will need to check each of them with double click to display more information.
3. Right-click on the "HID keyboard device" with "ALPS" identifier, choose "Update driver," choose "Browse my computer for drivers," and choose "Let me pick from a list of available drivers on my computer."
4. Choose the driver that is not currently selected, and hit "Next." Installation will occur.
5. After the installation, shut down the laptop, and press hold the power button for about 30 seconds, so that the keyboard firmware resets.

- Note
    1. I do not know if there are any _apparent_ consequences of having disabled this driver, such as non-functioning keys. If you are feeling uneasy about disabling the driver, you may try to remap F3 and F4 keys to brightness down and up, respectively. See [SSDT-PS2.dsl](/Docs/ACPI/SSDT-PS2.dsl) for more information.
    2. The brightness control is not working in Windows 10 not because of the driver, but because of patches done through OpenCore on Windows. I have tried `CustomSMUEFI BIOSGuid` set to `True` and `UpdateSMUEFI BIOSMode` to `Custom`, but it does not seem to restore the keys.
    3. If you toggle "Special Keys mapped to Fn + keypress" in the Advanced tab in UEFI BIOS, Fn+C and Fn+W are mapped to Windows "Scroll Lock" and "pause" which are recognized as F14 and F15 in macOS with VoodooPS2, or brightness down and up, respectively.

### Sleep, wake, and hibernation
Background: The Real-Time Clock (RTC) Power Loss (005) error is displayed on HP machines if RTC regions unsupported by the machine are written. This may happen on restart or resume from hibernation. If the region length is limited to `2` (See [SSDT-RTC0TIM0-2.dsl](/Docs/ACPI/SSDT-RTC0TIM0-2.dsl).), on normal restart without hibernation support (no HibernationFixup.kext), the RTC error is no longer displayed.

If HibernationFixup.kext is loaded, the RTC error may occur on restart, wake, or resume from hibernation regardless of `hibernatemode` chosen.

If the RTC region length is kept as `8` while blacklisting and emulating Region `DF`, the chance of the RTC error is greatly reduced.

If USB-C is enabled, wake results in a kernel panic which I have trouble getting log of, not to mention I could recognize anything.

To have an error-free environment, disable hibernation, limit the RTC region length to `2`, and set disable USB-C in UEFI BIOS.

### Sleep on low battery
The batteries on modern portable devices may wear down quickly if the battery level is below a certain point. I have set the limit on battery level at which the laptop goes to sleep. See the applied SSDT--[SSDT-BAT.dsl](/Docs/ACPI/SSDT-BAT.dsl)--and a helpful guide on how to implement such patch--[Battery: Hibernate at low battery level](https://github.com/whatnameisit/Asus-Vivobook-X510UA-BQ490-Hackintosh/blob/master/Docs/Battery/hibernate-at-low-battery-level.md).

### Modern Standby
Modern Standby, or Windows Sleep, is not supported on macOS. It needs to be disabled for actual sleep and wake.

HP laptops have ACPI objects which correspond to Modern Standby selection. By writing to the objects and making the patch OS-aware, the laptop can have normal sleep under macOS and Modern Standby under Windows.

See [SSDT-ModernStandby-Disable.dsl](/Docs/ACPI/SSDT-ModernStandby-Disable.dsl)].

### Realtek PCIe Card Reader
Currently the driver kills connection on sleep to workaround kernel panics. To continue using the card on wake, a pin needs to be inserted to access the slot and physically reconnect the card or the laptop needs to be rebooted.

More reading at the kext repository [RealtekCardReader](https://github.com/0xFireWolf/RealtekCardReader/) and [InsanelyMac development thread](https://www.insanelymac.com/forum/topic/348130-realtek-pcieusb-sd-card-reader-driver-for-macos/)

### Laptop teardown
You may want to tear down the laptop for Wi-Fi / Bluetooth card replacement, WWAN / GPS card installation, and/or SSD replacement.

See this guide for a complete teardown process: [HP Elite x2 1012 G2 Repairability Assessment](https://ko.ifixit.com/Guide/HP+Elite+x2+1012+G2+Repairability+Assessment/95992?lang=en).

- Note: You do not need a suction cup to remove the display. Just a guitar pick would do.

## Troubleshooting
Read this README _again_, OpenCore's official [Configuration.pdf](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf) and Dortania's [General Troubleshooting](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/troubleshooting.html).

## Acknowledgment
Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

midi1996 and khronokernel for base OC files
