#!/bin/bash

sudo add-apt-repository ppa:ppsspp/stable
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-add-repository 'deb http://debian.drdteam.org/ stable multiverse'
sudo add-apt-repository multiverse

sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i ./discord.deb

sudo apt-get install -fy openbox lightdm lxqt nnn firefox cmus conky-all nestopia ppsspp sublime-text gzdoom gimp steam-installer mpv gpick nethack

sudo apt-get purge chromium*

sudo apt-get upgrade
sudo apt-get autoremove

echo -e "@pcmanfm --desktop --profile LXDE\n@conky" > ~/.config/lxsession/LXDE/autostart
cp ./lxe-rc.xml ~/.config/openbox/
cp ./conkyrc ~/.conkyrc

sudo reboot