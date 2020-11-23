#!/bin/sh
simple-mtpfs --device 1 /mnt/mnt
yes | cp -f /home/klanc/Projects/Uni/TFG/Z5/bin/switch/Z5.nro /mnt/mnt/SdCard/switch
fusermount -u /mnt/mnt
