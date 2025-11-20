#!/bin/sh

val=$(pamixer --get-volume-human)

# if muted → return 0
if [ "$val" = "muted" ]; then
	echo 0
	exit
fi

# remove trailing %
echo "${val%\%}"
