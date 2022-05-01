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
  - [Sleep, wake, and hibernation](#sleep-wake-and-hibernation)
  - [Sleep on low battery](#sleep-on-low-battery)
  - [Modern Standby](#modern-standby)
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
| UEFI BIOS Utility | P87 01.40 | |

### Working
- [x] Audio input and output
- [x] Brightness control via keyboard: See [Disable Windows 10 ALPS keyboard driver](#disable-windows-10-alps-keyboard-driver).
- [x] CPU Power Management with CPUFriend
- [x] HiDPI resolution
- [x] QE/CI Acceration and brightness control
- [x] Realtek PCIe Card Reader RTS522A
- [x] Shutdown and reboot
- [x] Touchscreen
- [x] Touchpad
- [x] USB map except USB-C with WWAN and fingerprint reader disabled and power supply
- [x] Wi-Fi / Bluetooth and Continuity

### Somewhat working
- [x] DP-Alt mode to output to secondary screen.
  - [x] ~~It sometimes fails to output after wake which works again if unplugged and reconnected.~~ Progress in Thunderbolt 3 may have improved interaction with the graphics; The screen output is always recognized.
  - [ ] With or without the Thunderbolt work, sound output to secondary monitor is not always recognized. It seems it is recognized only if the laptop enters clamshell mode after which the sound works whether the laptop stays or exits the aforementioned mode thereafter. This may require AppleALC rewrite which I have no knowledge of.
    - midi1996 says sound output always works, so it may be the USB-C hub that is problematic.
    - AudioDxe.efi kills sound output no matter what.
- [ ] Hibernation: Hibernation works, but is accompanied by the RTC power loss (005) error. See [Sleep
, wake, and hibernation](#sleep-wake-and-hibernation).
- [ ] Sleep and wake: See [Sleep, wake, and hibernation](#sleep-wake-and-hibernation).

### Not working
- [ ] Accelerometer and Gyro sensors
- [ ] DRM contents on Safari: This is limited by non-native IGPU firmware not having Apple keys.
- [ ] I2C Cameras: Macs have not been shipped with I2C cameras, and currently there are no drivers ported from Linux.
- [ ] Light sensor

### Not tested
- [ ] WWAN slot. One stock antenna.

## Installation

### Install macOS
Follow [Dortania's OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/).

### UEFI BIOS settings
Necessary options are commented in the photos below. You can pick other options to your taste.
<details>
 <summary>UEFI BIOS screenshots</summary>
  <img src="/images/bios-security.webp" title="Security"/>
  <img src="/images/bios-advanced-boot-options-1.webp" title="Advanced-Boot Options 1"/>
  <img src="/images/bios-advanced-boot-options-2.webp" title="Advanced-Boot Options 2"/>
  <img src="/images/bios-advanced-secure-boot-configuration.webp" title="Advanced-Secure Boot Configuration"/>
  <img src="/images/bios-advanced-system-options.webp" title="Advanced-System Options"/>
  <img src="/images/bios-advanced-built-in-device-options-1.webp" title="Advanced-Built-in Device Options 1"/>
  <img src="/images/bios-advanced-built-in-device-options-2.webp" title="Advanced-Built-in Device Options 2"/>
  <img src="/images/bios-advanced-port-options.webp" title="Advanced-Port Options"/>
  <img src="/images/bios-advanced-power-management-options.webp" title="Advanced-Power Management Options"/>
  <img src="/images/bios-advanced-remote-management-options.webp" title="Advanced-Remote Management Options"/>
</details>

## Documentation

### No apparent options to unlock MSR 0xE2 register (CFG Lock)
HP has hidden the MSR 0xE2 register (option to lock or unlock CFG) to average users. To unlock, you will have to reverse engineer the UEFI BIOS and/or heavily mod it. Use `AppleXcpmCfgLock` Quirk as a workaround which is already applied in config.plist.

### Disable Windows 10 ALPS keyboard driver
Windows 10 ALPS keyboard driver writes _something_ to the firmware which breaks the functionality of native brightness control keys in macOS. It is necessary that this driver is disabled, so that the keys work as they should in macOS.
1. Open up Device Manager in Windows 10. Shortcut: Press the `Windows key` + `x` and `m`.
2. Look for an "HID keyboard device" with "ALPS" identifier under "Keyboards." You will need to check each of them with double click to display more information.

<details>
 <summary>Device Manager screenshot</summary>
  <img src="/images/devicemanager-keyboards.webp" title="Device Manager - Keyboards"/>
</details>

3. Right-click on the "HID keyboard device" with "ALPS" identifier, choose "Update driver," choose "Browse my computer for drivers," and choose "Let me pick from a list of available drivers on my computer."
4. Choose the driver that is not currently selected, and hit "Next." Installation will occur.
5. After the installation, shut down the laptop, and press hold the power button for about 30 seconds, so that the keyboard firmware resets.

- Note
    1. I do not know if there are any _apparent_ consequences of having disabled this driver, such as non-functioning keys. If you are feeling uneasy about disabling the driver, you may try to remap F3 and F4 keys to brightness down and up, respectively. See [SSDT-PS2.dsl](/Docs/ACPI/SSDT-PS2.dsl) for more information.
    2. The brightness control is not working in Windows 10 not because of the driver, but because of patches done through OpenCore on Windows. I have tried `CustomSMBIOSGuid` set to `True` and `UpdateSMBIOSMode` to `Custom`, but it does not seem to restore the keys.
    3. If you toggle "Special Keys mapped to Fn + keypress" in the Advanced tab in UEFI BIOS, Fn+C and Fn+W are mapped to Windows "Scroll Lock" and "pause" which are recognized as F14 and F15 in macOS with VoodooPS2, or brightness down and up, respectively.

### Sleep, wake, and hibernation
The Real-Time Clock (RTC) Power Loss (005) error is displayed on HP machines if RTC regions unsupported by the machine are written. This may happen on restart or resume from hibernation.

The conflicting RTC regions are at least `58, 59, 7F-83, B0-B3, B7, DE, DF`. By "at least," I mean it works for regular sleep and wake, but not for resume from hibernation, upon which the very RTC error is displayed.

If USB-C is enabled, wake results in a kernel panic. The current workaround is to enable Thunderbolt related patches. See [SSDT-TbtOnPch.dsl](/Docs/ACPI/SSDT-TbtOnPch.dsl).

### Sleep on low battery
The batteries on modern portable devices may wear down quickly if the battery level is below a certain point. I have set the limit on battery level at which the laptop goes to sleep. See the applied SSDT--[SSDT-Battery.dsl](/Docs/ACPI/SSDT-Battery.dsl)--and background reading on how to implement such patch--[Battery: Hibernate at low battery level](https://github.com/whatnameisit/Asus-Vivobook-X510UA-BQ490-Hackintosh/blob/master/Docs/Battery/hibernate-at-low-battery-level.md).

### Modern Standby
Modern Standby, or Windows Sleep, is not supported on macOS. It needs to be disabled for actual sleep and wake.

HP laptops have ACPI objects which correspond to Modern Standby selection. By writing to the objects and making the patch OS-aware, the laptop can have normal sleep under macOS and Modern Standby under Windows.

See [SSDT-Sleep.dsl](/Docs/ACPI/SSDT-Sleep.dsl).

### Laptop teardown
You may want to tear down the laptop for Wi-Fi / Bluetooth card replacement, WWAN / GPS card installation, and/or SSD replacement.

See this guide for a complete teardown process: [HP Elite x2 1012 G2 Repairability Assessment](https://ko.ifixit.com/Guide/HP+Elite+x2+1012+G2+Repairability+Assessment/95992?lang=en).

- Note: You do not need a suction cup to remove the display. Just a guitar pick would do.

### Thunderbolt 3
There is an immense amount of rich information if you search for native Thunderbolt experiences and solutions on macOS. It is known that correct ACPI and Thunderbolt firmware are needed for fully working Thunderbolt in macOS, both the functionality and power management.

Incorrect Thunderbolt setup may leave the system in an unstable state, resulting in sleep failures.

Currently in progress.

## Troubleshooting
Read this README _again_, OpenCore's official [Configuration.pdf](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Configuration.pdf) and Dortania's [General Troubleshooting](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/troubleshooting.html).

## Acknowledgment
Apple for macOS

The Acidanthera team for OpenCore and many kexts

The Dortania team for OpenCore guides

midi1996 for base OC files and keyboard brightness workaround

khronokernel for base OC files
