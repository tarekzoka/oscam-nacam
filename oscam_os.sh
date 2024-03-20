#!/bin/sh
#

wget -O /tmp/oscam_11748-emu-r800_all.deb "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/oscam_11748-emu-r800_all.deb"

dpkg -i --force-overwrite /tmp/*.deb

rm -r /tmp/oscam_11748-emu-r800_all.deb

wait

sleep 2;

exit 0