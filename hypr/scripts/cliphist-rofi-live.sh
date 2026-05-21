#!/usr/bin/env bash

CACHE="/tmp/cliphist-preview.png"
DEFAULT="$HOME/Pictures/Wallpapers/rofi_image_box.webp"

preview() {
    entry="$1"

    if echo "$entry" | grep -q "binary data"; then
        id=$(echo "$entry" | awk '{print $1}')
        cliphist decode "$id" > "$CACHE"
        echo "$CACHE"
    else
        echo "$DEFAULT"
    fi
}

export -f preview

cliphist list | rofi \
    -dmenu \
    -i \
    -p "Clipboard" \
    -format i \
    -theme ~/.config/rofi/config.rasi \
    -kb-custom-1 "Alt+space" \
    -preview-cmd 'bash -c "preview \"{line}\""'
