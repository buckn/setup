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

sudo apt-get install -fy openbox
sudo apt-get install -fy lightdm
sudo apt-get install -fy lxde
sudo apt-get install -fy nnn 
sudo apt-get install -fy firefox
sudo apt-get install -fy cmus
sudo apt-get install -fy nestopia 
sudo apt-get install -fy ppsspp 
sudo apt-get install -fy sublime-text 
sudo apt-get install -fy gzdoom 
sudo apt-get install -fy gimp 
sudo apt-get install -fy steam-installer 
sudo apt-get install -fy mpv 
sudo apt-get install -fy gpick 
sudo apt-get install -fy nethack

sudo apt-get purge chromium*

sudo apt-get upgrade
sudo apt-get autoremove

echo -e "@pcmanfm --desktop --profile LXDE\n@conky" > ~/.config/lxsession/LXDE/autostart
cp ./lxde-rc.xml ~/.config/openbox/