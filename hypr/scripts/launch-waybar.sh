#!/bin/bash
# Kill any existing instances
pkill waybar
# Wait a moment
sleep 1
# Launch with explicit config
/usr/bin/waybar -c ~/.config/waybar/config -s ~/.config/waybar/style.css
