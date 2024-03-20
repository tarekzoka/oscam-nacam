#!/bin/sh
#

wget -O /tmp/softcams-oscam_11748-emu-r800_all "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/softcams-oscam_11748-emu-r800_all"

dpkg -i --force-overwrite /tmp/*.deb

rm -r /tmp/softcams-oscam_11748-emu-r800_all

wait

sleep 2;

exit 0
