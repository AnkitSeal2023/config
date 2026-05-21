#!/usr/bin/env bash

tmp="/tmp/cliphist-preview"

cliphist list | fzf \
  --layout=reverse \
  --border \
  --preview '
    id=$(echo {} | awk "{print \$1}")
    cliphist decode $id > '"$tmp"' 2>/dev/null

    if file '"$tmp"' | grep -q image; then
        chafa --size=40x20 '"$tmp"'
    else
        cat '"$tmp"' | head -200
    fi
  ' \
  --preview-window=left:60% \
  | awk '{print $1}' | xargs -r cliphist decode | wl-copy
