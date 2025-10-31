#!/bin/bash

STATE_FILE="/tmp/pomodoro_state"

WORK_DURATION=$((25*60))
SHORT_BREAK=$((5*60))
LONG_BREAK=$((20*60))
SESSIONS=4

# Read previous state if exists
if [ -f "$STATE_FILE" ]; then
    read session type remaining paused < "$STATE_FILE"
fi

# Initialize defaults if variables are empty
session=${session:-1}
type=${type:-W}
remaining=${remaining:-$WORK_DURATION}
paused=${paused:-false}

if [ -n "$1" ]; then
    case "$1" in
        1) 
            if [ "$paused" = "true" ]; then
                paused=false
            else
                paused=true
            fi
            ;;
        3) remaining=0 ;;       # right click: skip
    esac
fi

# Countdown logic
if [ "$paused" != "true" ] && [ "$remaining" -gt 0 ]; then
    remaining=$((remaining - 1))
fi

# Switch session if timer finished
if [ "$remaining" -le 0 ]; then
    if [ "$type" = "W" ]; then
        if [ "$session" -lt "$SESSIONS" ]; then
            type="B"
            remaining=$SHORT_BREAK
        else
            type="B"
            remaining=$LONG_BREAK
        fi
    else
        session=$((session + 1))
        if [ "$session" -le "$SESSIONS" ]; then
            type="W"
            remaining=$WORK_DURATION
        else
            type="B"
            remaining=$LONG_BREAK
        fi
    fi
fi

# Save state
echo "$session $type $remaining $paused" > "$STATE_FILE"

# Output for Waybar
mins=$((remaining / 60))
secs=$((remaining % 60))
echo "$type: $(printf "%02d:%02d" $mins $secs)"
