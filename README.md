# Arch + Hyprland Dotfiles  
![image](https://github.com/user-attachments/assets/c8996dcd-7d12-4966-9ce6-89bd364efd1b)


## Features
- **Hyprland**: Dynamic tiling, smooth animations, custom keybinds
- **Waybar**: Highly customizable bar with Catppuccin Mocha theme
- **Rofi**: App launcher with window switching

## Prerequisites
- Arch linux
- Hyprland
- Basic terminal emulator proficiency

## Installation Guide: Base Arch Installation
1. If dual boot with Windows (change between Arch and Windows), then go to Disc Management and allocate more free space for Arch Linux. If not dual booting, skip to 2
2. Install Etcher, Rufus, or Ventoy to make bootable USB. I used Rufus for Arch
3. Go to BIOS/UEFI (can be entered via "Recovery Options" or a shortcut, different depends on different motherboard companies
4. Turn off CSM Support and Securee Boot (Location of these depends on motherboard companies)
5. Choose boot in Arch
6. Once in Arch, follow the documentations on https://wiki.archlinux.org/title/Installation_guide

# Essential packages
sudo pacman -S git base-devel

## Installation Guide: Hyprland & Dependencies
```sudo pacman -S hyprland kitty waybar rofi grim slurp swaybg swaylock-effects firefox```

## Install this custom config
```bash
git clone https://github.com/khangchung15/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow -nv hypr waybar rofi 
```
## Post-Installation
Start Hyprland: ```exec Hyprland```

## Hyprland Keybinds (Super = Windows Key)
Window Management
    Super + Left-Click & Drag → Move window
    Super + Right-Click & Drag → Resize window
    Super + Arrow Keys → Focus window in direction
    Super + Shift + Arrow Keys → Move window to edge (snap)
    Super + Alt + Arrow Keys → Swap window positions
    Super + T → Toggle floating (hover window first)
    Super + F → Fullscreen (hide bar)
    Super + M → Fullscreen (keep bar visible)
    Super + Q → Close window (hover)

Workspaces
    Super + 1-9 → Switch workspace
    Super + Shift + 1-9 → Move window to workspace

Utilities
    Super + Enter → Open Kitty terminal
    Super + B → Open Firefox
    Super + V → Clipboard manager
    Super + Shift + S → Screenshot
    Super + Shift + H → Toggle night light

Basic keybinds for terminal:
- Ctrl + L: Clear terminal screen (hover)
- Ctrl + C/V: Copy past in terminal
- Ctrl + X: Stop terminal from running. Exit editing file
- Ctrl + K: Clear 1 line in file editing
- Ctrl + Q: Clear 1 line in terminal

## Terminal Cheat Sheet
File Operations
    touch file.txt → Create empty file
    nano file.txt → Edit file (Ctrl+O to save, Ctrl+X to exit)
    cp file.txt newfile.txt → Copy file
    mv file.txt ~/Documents/ → Move/rename file
    rm file.txt → Delete file

Navigation
    ls → List files
    ls -a → List all files (including hidden)
    cd ~/Documents → Change directory
    cd ~ → Go to root directory
    cd .. → Go back one folder
    pwd → Show current directory path

System
    sudo pacman -S package → Install package (e.g., firefox)
    sudo pacman -Syu → Update all packages
    sudo systemctl start service → Start a service (e.g., bluetooth)

Shortcuts
    Ctrl+C → Force-stop current command
    Ctrl+D → Exit terminal session
    Ctrl+L or clear → Clear terminal
    Ctrl+R → Search command history
    Ctrl+Shift+C/V → Copy/paste in terminal (depends on emulator)

## Do not run ``` rm -rf```, this will recursively force to delete everything
