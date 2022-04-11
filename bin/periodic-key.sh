#!/bin/bash

XDOTOOL=$(type -P xdotool)
if [ -z "${XDOTOOL}" ]; then
	echo "Could not find xdotool (Install: sudo apt-get install xdotool)"
	exit 1
fi

if [ -z "${KEYSTROKE}" ]; then
    KEYSTROKE="CTRL+R"
fi

if [ -z "${TARGET_WINDOW}" ]; then
    TARGET_WINDOW=chrome
fi

if [ -z "${PERIOD}" ]; then
    PERIOD=5
fi

WINDOWS="$(xdotool search --sync --all --onlyvisible --name ${TARGET_WINDOW})"

while true
do
	# Send keystroke
	for window in $WINDOWS; do
		xdotool windowfocus --sync "$window"
		xdotool key --window "$window" "$KEYSTROKE"
	done
	sleep $PERIOD
done
