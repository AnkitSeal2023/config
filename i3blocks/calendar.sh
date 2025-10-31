#!/bin/bash

echo "📅"

# Handle click events
if [[ "$BLOCK_BUTTON" == "1" ]]; then
    gnome-calendar &
fi
