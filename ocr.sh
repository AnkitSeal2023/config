#!/bin/bash
tmp=$(mktemp /tmp/screenocr.XXXXXX.png)
grim -g "$(slurp)" "$tmp"      # copy region capture to stdout
tesseract "$tmp" - | wl-copy    # OCR output to clipboard
rm "$tmp"
