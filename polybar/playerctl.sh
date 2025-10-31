#!/usr/bin/env bash

playerctlstatus=$(playerctl status 2> /dev/null)

if [[ $playerctlstatus ==  "" ]]; then
    echo ""
elif [[ $playerctlstatus =~ "Playing" ]]; then
    echo "%{A1:playerctl pause:}%{F#bd93f9}%{F-}%{A}"
else
    echo "%{A1:playerctl play:}%{F#bd93f9}%{F-}%{A}"
fi