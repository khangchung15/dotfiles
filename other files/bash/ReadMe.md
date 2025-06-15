# This is bash config file
You should have an auto generated file on ~/.bashrc already

If not, create .bashrc file in root directory (\~)

## Purpose of this bash config
- Enable colored output for more human-readable
- Launch fastfetch screen & render logo on the left
- Launch fastfetch again after clearing screen
- Customize shell prompts using oh my posh
- Add ~/.local/bin to system PATH

### Install necessary packages: 
- Fastfetch: ```sudo pacman -S fastfetch coreutils lsd grep kitty```
- Oh my posh (via AUR) ```yay -S oh-my-posh-bin``` or ```paru -S oh-my-posh-bin```

### No Paru? No Problem
Install paru (AUR helper):
- Install required tools: ```sudo pacman -S --needed base-devel git```
- Git clone: ```git clone https://aur.archlinux.org/paru.git```
- Go in paru dir: ```cd paru```
- Build paru: ```makepkg -si```
- Verify paru: ```paru --version```
- Should get something like: ```paru v2.0.4 - libalpm v15.0.0``` (my output)
