#!/usr/bin/env bash

echo "install packages, will need sudo:"
sudo apt-get install geany gcc-avr avr-libc avrdude git

echo "clone needed repositories in ~/Git"
cd ~/
mkdir Git
cd Git/
git clone https://github.com/KAsuro/KAsuroParticipants
git clone https://github.com/KAsuro/KAsuro.github.io

echo "install con_flash (flasher tool), requires sudo because /bin does"
sudo cp KAsuroParticipants/con_flash /bin/

echo "try chown on /dev/ttyUSB0 (gets reset after releasing the device or reboot)"
sudo chown $USER:$USER /dev/ttyUSB0
# use permission.sh to fix the permissions if needed

echo "configure geany"
cp KAsuroParticipants/conf_geany ~/.config/geany
