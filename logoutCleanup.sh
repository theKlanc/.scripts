#!/bin/sh
pkill -o chromium
result=`pgrep -l chromium | wc -l`
while [ "$result" -gt "0" ]
do
	sleep 0.001
	result=`pgrep -l chromium | wc -l`
done
mpv /usr/share/sounds/winLH_SystemExit.wav
