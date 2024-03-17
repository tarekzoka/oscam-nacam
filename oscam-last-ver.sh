#!/bin/sh
#


wget -O /tmp/oscam-last-ver.tar.gz "https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/oscam-last-ver.tar.gz"

tar -xzf /tmp/*.tar.gz -C /

rm -r /tmp/oscam-last-ver.tar.gz

wait

opkg update && opkg install --force-overwrite /tmp/*.ipk

echo "         UPLOADED BY TARK_HANFY    "

killall -9 enigma2

sleep 2;

#!/bin/sh
#
