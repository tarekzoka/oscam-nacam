#!/bin/sh
#

wget -O /tmp/oscam_11757-emu-r801_all "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/oscam_11757-emu-r801_all"

dpkg -i --force-overwrite /tmp/*.deb

rm -r /tmp/softcams-oscam_11757-emu-r801_all

wait

sleep 2;

exit 0
