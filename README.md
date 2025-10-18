# Hyprclipse

My personal **Hyprland** and **MangoWC** setup with a monochromatic and minimally styled color scheme.

## Overview

| Component | Description |
| --- | --- |
| **WM / Compositor** | Hyprland & MangoWC |
| **Panel / Bar** | Waybar |
| **Launcher** | Rofi |
| **Notifications** | SwayNC |
| **Terminal** | Foot |
| **Shell** | Fish |

## Installation

1. Install the Following pkgs with your desired AUR helper (paru / yay).

```bash
paru -S --needed foot waybar swaync fish starship hyprland mangowc-git rofi & \
            power-profiles-daemon network-manager-applet blueman bluez bluez-utils & \
            apple-fonts ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-meslo & \
```

2. Git clone the repo.

```bash
git clone https://github.com/Yustinia/hyprclipse.git
```

3. `cd` into the repo and copy the following.

```bash
cd hyprclipse

cp -rfv .config ~/

cp -rfv .themes ~/

cp -rfv .icons ~/
```

4. Reboot.

## Directory Structure

```bash
├── .config
│   ├── foot
│   ├── gtk-3.0
│   ├── gtk-4.0
│   ├── hypr
│   ├── mango
│   ├── rofi
│   └── waybar
├── .git
├── .gitignore
├── .icons
│   ├── MacOS-Tahoe-Cursor
│   └── MacTahoe-grey-dark
├── .themes
│   └── Win12X-Fantasy-Dark-Compact
└── README.md
```
