#!/bin/sh
notify-send "Gamemode End"
#DISPLAY=":0" picom --config /home/klanc/.config/.picom.conf --experimental-backends -b &
~/.scripts/toggleRedshift.sh
if [ "$(wmname)" = "bspwm" ]; then
    DISPLAY=":0" plasmashell &
fi
disown
