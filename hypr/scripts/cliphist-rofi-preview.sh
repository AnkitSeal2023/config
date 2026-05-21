#!/usr/bin/env bash

CACHE="/tmp/cliphist-preview.png"
DEFAULT="$HOME/Pictures/Wallpapers/rofi_image_box.webp"

get_id() {
    echo "$1" | sed -E 's/[^0-9]*([0-9]+).*/\1/'
}

preview() {
    line="$1"
    id=$(get_id "$line")

    if echo "$line" | grep -q "binary data"; then
        cliphist decode "$id" > "$CACHE"
        cat "$CACHE"
    else
        cat "$DEFAULT"
    fi
}

export -f preview
export -f get_id
export CACHE DEFAULT

selection=$(cliphist list | fzf \
    --preview 'bash -c "preview \"{}\""' \
    --preview-window=left:60%)

[ -z "$selection" ] && exit

id=$(get_id "$selection")
cliphist decode "$id" | wl-copy
