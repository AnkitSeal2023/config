#!/bin/bash

# Options
options="Sleep\nShutdown\nReboot\nLock\nLogout"

# Show menu
choice=$(echo -e $options | rofi -dmenu -p "Power")

case $choice in
    Sleep)
        systemctl suspend
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Lock)
        hyprlock
        ;;
    Logout)
        hyprctl dispatch exit
        ;;
esac
