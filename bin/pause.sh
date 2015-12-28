#!/bin/bash
# Pause music script in Awesome Window Manager

# Preserve the desktop that was active so we can restore it
DESKTOP=`xdotool get_desktop`
# Find the first instance of Google Chrome running on desktop 8
WID=`xdotool search --desktop 8 --name "Google Chrome" | head -1`
# For debugging print the window ID that is going to get the message
echo "Setting $WID"
# Use xdo tool to select the correct window, send it space (to pause)
xdotool sleep .01 windowactivate --sync $WID sleep .01 key --clearmodifiers --window $WID "space" sleep .01
# Now return focus to where it was
xdotool set_desktop $DESKTOP
