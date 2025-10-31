#!/bin/sh
TARGET="/tmp/current_media"

playerctl metadata --follow | while read -r _; do
    URL=$(playerctl metadata mpris:artUrl 2>/dev/null)
    if [ -z "$URL" ]; then
        cp ~/Pictures/default_media.png "$TARGET"
    elif echo "$URL" | grep -q '^file://'; then
        cp "${URL#file://}" "$TARGET"
    else
        curl -s "$URL" -o "$TARGET"
    fi
done
