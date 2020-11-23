#!/bin/sh
if [ "$#" -ne 1 ]; then
	echo "Usage: ./apply.sh inputFilename (png or jpg format)"
	exit
fi
inputFile=$1
convert $inputFile $HOME/Pictures/wallpaper.png
convert $inputFile -blur 0x10 $HOME/Pictures/i3lock.png
convert $HOME/Pictures/i3lock.png $HOME/Pictures/tempBlur.jpg
dd if=$HOME/Pictures/tempBlur.jpg of=$HOME/Pictures/greeter.jpg
rm $HOME/Pictures/tempBlur.jpg
#betterlockscreen -u $HOME/Pictures/greeter.jpg
feh --bg-scale --no-xinerama /usr/share/pixmaps/wallpaper.png
