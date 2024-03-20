#!/bin/sh
#

wget -O /tmp/oscam_11748-emu-r800_all.deb "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/oscam_11748-emu-r800_all"

dpkg -i --force-overwrite /tmp/*.deb

rm -r /tmp/oscam_11748-emu-r800_all

wait

killall -9 enigma2

sleep 2;

exit 0


