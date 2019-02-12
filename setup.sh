#!/usr/bin/env bash

add-apt-repository ppa:ppsspp/stable
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" > /etc/apt/sources.list.d/sublime-text.list
apt-add-repository 'deb http://debian.drdteam.org/ stable multiverse'
add-apt-repository multiverse

apt-get update
apt-get upgrade

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
dpkg -i ./discord.deb

apt-get install -y openbox lightdm lxde nnn  firefox cmus nestopia  ppsspp  sublime-text  gzdoom  gimp  steam-installer  mpv gpick nethack

apt-get purge chromium*

apt-get autoremove

echo -e "@pcmanfm --desktop --profile LXDE\n@conky" > ~/.config/lxsession/LXDE/autostart
cp ./lxde-rc.xml ~/.config/openbox/