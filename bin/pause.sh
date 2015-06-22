#!/bin/bash
# Pause music script in Awesome Window Manager

WID=`xdotool search --name "Google Play Music" | head -1`
DESKTOP=`xdotool get_desktop`
xdotool set_desktop 8
xdotool sleep .01 key --clearmodifiers --window $WID "space" sleep .01
xdotool set_desktop $DESKTOP
