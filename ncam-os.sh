#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/ncam-os.sh -O - | /bin/sh
###########################################
###########################################
#!/bin/sh
#
wget -O /tmp/enigma2-plugin-softcams-ncam_V14.6-r0_all.deb "https://github.com/tarekzoka/oscam-nacam/blob/main/enigma2-plugin-softcams-ncam_V14.6-r0_all.deb?raw=true"
wait
#!/bin/sh
#
dpkg -i --force-overwrite /tmp/enigma2enigma2-plugin-softcams-ncam_V14.6-r0_all.deb
wait
apt-get update && dpkg -i --force-overwrite /tmp/*.deb; apt-get install -f -y
wait
opkg install wget
wait
apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install
sleep 2;
exit 0



