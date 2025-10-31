#!/bin/bash
tmp=$(mktemp /tmp/screenocr.XXXXXX.png)
flameshot gui -r > "$tmp"       # copy region capture to stdout
tesseract "$tmp" - | wl-copy    # OCR output to clipboard
rm "$tmp"