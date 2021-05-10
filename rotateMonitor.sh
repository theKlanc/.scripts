#!/usr/bin/env bash
current=$(cat /tmp/monitor_orientation)
if [ $current == "horizontal" ]; then
  /home/klanc/.screenlayout/vertical.sh
else 
  /home/klanc/.screenlayout/horizontal.sh
fi
i3-msg restart
sleep 2
/home/klanc/.scripts/setWallpaper.sh
