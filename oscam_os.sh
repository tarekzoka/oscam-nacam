#!/bin/sh
#

wget -O /tmp/oscam_11770-emu-r801_all.deb "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/oscam_11770-emu-r801_all.deb"

dpkg -i --force-overwrite /tmp/*.deb

rm -r /tmp/softcams-oscam_11766-emu-r801_all

wait

sleep 2;

exit 0
