# Arch + Hyprland Dotfiles  
![image](https://github.com/user-attachments/assets/6af0f3ff-b1de-482d-9017-3612db0e4c10)

## Features
- **Hyprland**: Dynamic tiling, smooth animations, custom keybinds
- **Waybar**: Navigation bar
- **Rofi**: App launcher

## Prerequisites
- Arch linux
- Hyprland
- Basic terminal emulator proficiency

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
- Ctrl+X → Force-stop current command
- Super+Q → Exit terminal session
- Ctrl+L or clear → Clear terminal
- Ctrl+C/V → Copy/paste in terminal

## Do not run ```rm -rf```, this will recursively force to delete everything
