#!/bin/sh
#

wget -O /tmp/oscam_11799-emu-r802_all.deb "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/oscam_11799-emu-r802_all.deb"

dpkg -i --force-overwrite /tmp/*.deb

rm -r /tmp/oscam_11799-emu-r802_all

wait

sleep 2;

exit 0
