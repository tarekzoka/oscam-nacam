#!/bin/sh
#

wget -O /tmp/oscam_11904-emu-r803_all.deb "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/oscam_11904-emu-r803_all.deb"

apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install

rm -r /tmp/oscam_11904-emu-r803_all.deb

wait

sleep 2;

exit 0
