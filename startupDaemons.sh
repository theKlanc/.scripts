#!/bin/sh
picom --config /home/klanc/.config/.picom.conf --experimental-backends -b

sshfs root@aruba.ledgedash.com:/ /mnt/remotes/aruba1/ &
/home/klanc/.scripts/udev/silentWacom.sh &
/home/klanc/.scripts/updateAlarm.sh &
play-with-mpv &
udiskie -t2 &
ssh-agent -s &
kalu &

chromium --profile-directory='Default' &
telegram-desktop &
steam &
(sleep 10 && copyq &) &
