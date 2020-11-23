#!/usr/bin/env bash
current=$(cat /tmp/monitor_orientation)
if [ $current == "horizontal" ]; then
  /home/klanc/.screenlayout/V-H.sh
else 
  /home/klanc/.screenlayout/H-H.sh
fi
i3-msg restart
sleep 2
/home/klanc/.scripts/setWallpaper.sh
