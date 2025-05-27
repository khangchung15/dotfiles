#!/bin/bash
#  ____                               _           _
# / ___|  ___ _ __ ___  ___ _ __  ___| |__   ___ | |_
# \___ \ / __| '__/ _ \/ _ \ '_ \/ __| '_ \ / _ \| __|
#  ___) | (__| | |  __/  __/ | | \__ \ | | | (_) | |_
# |____/ \___|_|  \___|\___|_| |_|___/_| |_|\___/ \__|
#
# Based on https://github.com/hyprwm/contrib/blob/main/grimblast/screenshot.sh
# -----------------------------------------------------

# Screenshots will be stored in $HOME by default.
# The screenshot will be moved into the screenshot directory

# Add this to ~/.config/user-dirs.dirs to save screenshots in a custom folder:
# XDG_SCREENSHOTS_DIR="$HOME/Screenshots"

prompt='Screenshot'
mesg="DIR: ~/Screenshots"

# Screenshot Filename
source ~/.config/ml4w/settings/screenshot-filename.sh

# Screenshot Folder
source ~/.config/ml4w/settings/screenshot-folder.sh

# Screenshot Editor
export GRIMBLAST_EDITOR="$(cat ~/.config/ml4w/settings/screenshot-editor.sh)"

copy='Copy'
save='Save'
copy_save='Copy & Save'
edit='Edit'

# Rofi CMD
rofi_cmd() {
    rofi -dmenu -replace -config ~/.config/rofi/config.rasi \
        -theme-str 'window {width: 60%; border-radius: 12px;}' \
        -theme-str 'listview {lines: 4;spacing: 0; scrollbar: false;}' \
        -theme-str 'scrollbar {enabled: false;}' \
        -theme-str 'element {padding: 12px;}' \
        -theme-str 'element-text {font: "Fira Code 14";}' \
        -theme-str 'inputbar {enabled: false;}' \
        -theme-str 'message {enabled: false;}' \
        -i -no-show-icon -p "$prompt" -mesg "$mesg"
}

# Choose to save or copy photo
# Ask for confirmation
copy_save_editor_exit() {
    echo -e "$copy\n$save\n$copy_save\n$edit" | rofi_cmd
}

# Confirm and execute
copy_save_editor_run() {
    selected_chosen="$(copy_save_editor_exit)"
    if [[ "$selected_chosen" == "$copy" ]]; then
        option_chosen=copy
        takescreenshot
    elif [[ "$selected_chosen" == "$save" ]]; then
        option_chosen=save
        takescreenshot
    elif [[ "$selected_chosen" == "$copy_save" ]]; then
        option_chosen=copysave
        takescreenshot
    elif [[ "$selected_chosen" == "$edit" ]]; then
        option_chosen=edit
        takescreenshot
    else
        exit
    fi
}

# take shots
takescreenshot() {
    sleep 1
    grimblast --notify "$option_chosen" "area" $NAME
    if [ -f $HOME/$NAME ]; then
        if [ -d $screenshot_folder ]; then
            mv $HOME/$NAME $screenshot_folder/
        fi
    fi
}

# Execute Command
copy_save_editor_run
