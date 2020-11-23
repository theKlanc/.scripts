#!/bin/sh
notify-send "GameMode Start"
if [ "$(wmname)" = "bspwm" ]; then
    pkill plasmashell
fi
#pkill picom
~/.scripts/toggleRedshift.sh
