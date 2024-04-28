#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/oscam-os.sh -O - | /bin/sh
###########################################
###########################################
#!/bin/sh
#
wget -O /tmp/oscam_11774-emu-r801_all.deb "https://github.com/tarekzoka/oscam-nacam/blob/main/oscam_11774-emu-r801_all.deb?raw=true"
wait
apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install
wait
dpkg -i --force-overwrite /tmp/*.deb

wait

sleep 2;

exit 0

