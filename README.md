# Arch + Hyprland Dotfiles  
![image](https://github.com/user-attachments/assets/c8996dcd-7d12-4966-9ce6-89bd364efd1b)


## Features
- **Hyprland**: Dynamic tiling, smooth animations, custom keybinds
- **Waybar**: Navigation bar
- **Rofi**: App launcher

## Prerequisites
- Arch linux
- Hyprland
- Basic terminal emulator proficiency

## Why Arch over other distros?
- Bloat-free (no preinstalled solitaire)
- Yours (no corporate "helpful" background services)
- Transparent (fully open source)
- Free (no need to activate like Windows)
- Helps you understand about the OS as you install
- Helps you explore and read the manual (Arch Wiki)
- Fully customizable from top to bottom
- No holding hands like other Linux distros
- Released on 2002 which is my birthyear
- Able to say "I use Arch, btw"
- It's logo is an 'A' and it's my favorite letter (I think)

Congrats, you have been convinced that Arch is superior. Now let's install Arch Linux

## Installation Guide: Base Arch Installation
1. If dual boot with Windows (change between Arch and Windows), then go to Disc Management and allocate more free space for Arch Linux (minimum 50GB recommended). If only Arch, then skip to step 2
2. Install Etcher, Rufus, or Ventoy to make bootable USB. I used Rufus for Arch
3. Install ISO file from archlinux.org/download | Scroll all the way down and find your country (This only helps download faster, actual files are all the same)
4. Go to BIOS/UEFI (can be entered via "Recovery Options" (if on Windows) or a shortcut varies depends on motherboard companies
5. Turn off CSM Support and Secure Boot (Location of these depends on motherboard companies)
6. Choose boot in Arch
7. Once in Arch, follow the documentations on https://wiki.archlinux.org/title/Installation_guide | Start at 1.5: Set the console keyboard layout and font
8. Run ```sudo pacman -S git base-devel``` to install essential packages

## Successfully install Arch Linux?
- Congratulations! You’ve escaped the confines of proprietary bloat. Your system is now as lightweight as your soul after uninstalling Windows. Enjoy the freedom
- Don’t panic if things break, that’s how you learn. The Arch Wiki is your bible and the terminal is your playground.
- Also, feel free to say "I use Arch, btw" to strangers you met

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
- Super + Left-Click & Drag → Move window
- Super + Right-Click & Drag → Resize window
- Super + Arrow Keys → Focus window in direction
- Super + Shift + Arrow Keys → Move window to edge (snap)
- Super + Alt + Arrow Keys → Swap window positions
- Super + T → Toggle floating (hover window first)
- Super + F → Fullscreen (hide bar)
- Super + M → Fullscreen (keep bar visible)
- Super + Q → Close window (hover)

Workspaces
- Super + 1-9 → Switch workspace
- Super + Shift + 1-9 → Move window to workspace

Utilities
- Super + Enter → Open Kitty terminal
- Super + B → Open Firefox
- Super + V → Clipboard manager
- Super + Shift + S → Screenshot
- Super + Shift + H → Toggle night light

Basic keybinds for terminal:
- Ctrl + L: Clear terminal screen (hover)
- Ctrl + C/V: Copy past in terminal
- Ctrl + X: Stop terminal from running. Exit editing file
- Ctrl + K: Clear 1 line in file editing
- Ctrl + Q: Clear 1 line in terminal

## Terminal Cheat Sheet
File Operations
- touch file.txt → Create empty file
- nano file.txt → Edit file (Ctrl+O to save, Ctrl+X to exit)
- cp file.txt newfile.txt → Copy file
- mv file.txt ~/Documents/ → Move/rename file
- rm file.txt → Delete file

Navigation
- ls → List files
- ls -a → List all files (including hidden)
- cd ~/Documents → Change directory
- cd ~ → Go to root directory
- cd .. → Go back one folder
- pwd → Show current directory path

System
- sudo pacman -S package → Install package (e.g., firefox)
- sudo pacman -Syu → Update all packages
- sudo systemctl start service → Start a service (e.g., bluetooth)

Shortcuts
- Ctrl+C → Force-stop current command
- Ctrl+D → Exit terminal session
- Ctrl+L or clear → Clear terminal
- Ctrl+R → Search command history
- Ctrl+Shift+C/V → Copy/paste in terminal (depends on emulator)

## Do not run ```rm -rf```, this will recursively force to delete everything
