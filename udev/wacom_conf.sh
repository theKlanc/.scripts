#!/bin/sh
echo "lmao" > /home/klanc/.scripts/udev/test
notify-send "Wacom connected" &
xsetwacom -v set "Wacom One by Wacom M Pen stylus" MapToOutput HEAD-0
xsetwacom set "Wacom One by Wacom M Pen stylus" Area 0 675 21600 12150
xsetwacom -v set "Wacom One by Wacom M Pen eraser" MapToOutput HEAD-0
xsetwacom set "Wacom One by Wacom M Pen stylus" Area 0 675 21600 12150

