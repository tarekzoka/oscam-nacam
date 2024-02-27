#!/bin/sh

##setup command=wget https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main/installer3.sh -O - | /bin/sh
#
echo " download and install ncam emu "
version=14.4
OPKGINSTALL=opkg install --force-overwrite
MY_URL="https://raw.githubusercontent.com/tarekzoka/oscam-nacam/main"
MY_IPK="enigma2-plugin-softcams-ncam_14.4-r0_all.ipk"
MY_DEB="enigma2-plugin-softcams-ncam_14.4-r0_all.deb"
##############################################################################
# remove old emu #
opkg remove enigma2-plugin-softcams-ncam-all-images

#################################################################################

# Download and install plugin #
opkg install wget
cd /tmp 

set -e
     wget "$MY_URL/$MY_IPK"
  wait
     wget "$MY_URL/$MY_DEB"

 if which dpkg > /dev/null 2>&1; then
	dpkg -i --force-overwrite $MY_DEB; apt-get install -f -y
	else
		opkg install --force-reinstall $MY_IPK
	fi
echo "================================="
set +e
chmod 755 /usr/bin/oscam-emu
cd ..
wait
rm -f /tmp/$MY_IPK
rm -f /tmp/$MY_DEB
	if [ $? -eq 0 ]; then
	echo ">>>>   SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   TARK_HANFY "   
sleep 4;
	echo '========================================================================================================================='
###################                                                                                                                  
echo ". >>>>     PLEASE RESTARING     <<<<"
echo "**********************************************************************************"
wait
exit 0  yyy y


















































