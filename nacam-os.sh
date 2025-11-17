#!/bin/sh
#
wget -O /tmp/enigma2-plugin-softcams-ncam_15.6-r0_all.deb "https://github.com/tarekzoka/oscam-nacam/raw/main/ncam-15.6-r0.deb"
wait
apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install
wait
dpkg -i --force-overwrite /tmp/*.deb
wait
sleep 2;
exit 0
