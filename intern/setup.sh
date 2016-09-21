#!/usr/bin/env bash

echo "install packages, needs sudo"
sudo apt-get install geany gcc-avr avr-libc avrdude git

echo "clone needed repositories in ./Git or pull newest change, if repos already exist"
mkdir -p Git
cd Git/
if cd KAsuroParticipants; then git pull && cd ..; else git clone https://github.com/KAsuro/KAsuroParticipants; fi
if cd KAsuro.github.io; then git pull && cd ..; else git clone https://github.com/KAsuro/KAsuro.github.io; fi

echo "copy con_flash (flasher tool) to /bin/ and make it executable, needs sudo"
sudo cp KAsuroParticipants/con_flash /bin/
sudo chmod +x /bin/con_flash

echo "try chown on /dev/ttyUSB0 (gets reset after releasing the device or reboot)"
sudo chown $USER:$USER /dev/ttyUSB0
# use KAsuroParticipants/permission.sh to fix the permissions if needed

echo "configure geany"
mkdir -p ~/.config/
cp -r KAsuroParticipants/conf_geany ~/.config/geany
