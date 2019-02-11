#!/bin/bash

sudo add-apt-repository ppa:ppsspp/stable
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-add-repository 'deb http://debian.drdteam.org/ stable multiverse'
sudo add-apt-repository multiverse

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i ./discord.deb

sudo apt-get install openbox
sudo apt-get install lightdm
sudo apt-get install lxde
sudo apt-get install nnn
sudo apt-get install firefox
sudo apt-get install cmus
sudo apt-get install conky-all
sudo apt-get install nestopia
sudo apt-get install ppsspp
sudo apt-get install sublime-text
sudo apt-get install gzdoom
sudo apt-get install gimp
sudo apt-get install steam-installer
sudo apt-get install mpv
sudo apt-get install gpick
sudo apt-get install nethack

sudo apt-get purge chromium*

echo -e "@pcmanfm --desktop --profile LXDE\n@conky" > ~/.config/lxsession/LXDE/autostart
cp ./lxe-rc.xml ~/.config/openbox/
cp ./conkyrc ~/.conkyrc