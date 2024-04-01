rm -rf /usr/lib/enigma2/plugin/extensions/xx

#!/bin/sh
#

wget -O /tmp/enigma2-plugin-softcams-ncam_V14.9-r0_all.deb "https://github.com/tarekzoka/oscam-nacam/raw/main/enigma2-plugin-softcams-ncam_V14.9-r0_all.deb"

wait
#!/bin/sh
dpkg -i /tmp/*.deb
wait
dpkg -i --force-overwrite /tmp/*.deb
wait
sleep 2;
