h#!/bin/sh

status='/var/lib/opkg/status'
package='enigma2-plugin-softcams-cccam'

if grep -q $package $status; then
echo "> removing package please wait..."
sleep 3s
opkg remove $package

else

#remove unnecessary files and folders
if [  -d "/CONTROL" ]; then
rm -r  /CONTROL
fi
rm -rf /control
rm -rf /postinst
rm -rf /preinst
rm -rf /prerm
rm -rf /postrm
rm -rf /tmp/*.ipk
rm -rf /tmp/*.tar.gz

#config
pack=cccam
version=239-r6
url="https://github.com/tarekzoka/oscam-nacam/raw/main/ccam/"
ipk="$pack-$version.ipk"
install="opkg install --force-reinstall"

# Download and install plugin
echo "> Downloading "$pack"-"$version" please wait..."
sleep 3s

cd /tmp
set -e
wget --show-progress "$url/$ipk"
$install $ipk
set +e
cd ..
wait
rm -f /tmp/$ipk

if [ $? -eq 0 ]; then
echo "> "$pack"-"$version" installed successfully"
sleep 3s
else
echo " installation failed"
fi

fi
exit 0
