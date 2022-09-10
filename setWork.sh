#!/usr/bin/env bash
barriers -c ~/Documents/workConfig.sgc &
ddcutil setvcp 60 11
disown -a
/home/klanc/.screenlayout/work.sh
i3-msg restart
sleep 2
/home/klanc/.config/polybar/launchWork.sh
sleep 2
/home/klanc/.scripts/setWallpaper.sh
