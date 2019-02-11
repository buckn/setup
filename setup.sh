#!/bin/bash

sudo add-apt-repository ppa:ppsspp/stable
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-add-repository 'deb http://debian.drdteam.org/ stable multiverse'
sudo add-apt-repository multiverse

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i ./discord.deb

sudo apt-get install -f openbox
sudo apt-get install -f lightdm
sudo apt-get install -f lxqt
sudo apt-get install -f nnn
sudo apt-get install -f firefox
sudo apt-get install -f cmus
sudo apt-get install -f conky-all
sudo apt-get install -f nestopia
sudo apt-get install -f ppsspp
sudo apt-get install -f sublime-text
sudo apt-get install -f gzdoom
sudo apt-get install -f gimp
sudo apt-get install -f steam-installer
sudo apt-get install -f mpv
sudo apt-get install -f gpick
sudo apt-get install -f nethack

sudo apt-get purge chromium*

sudo apt-get upgrade
sudo apt-get autoremove

echo -e "@pcmanfm --desktop --profile LXDE\n@conky" > ~/.config/lxsession/LXDE/autostart
cp ./lxe-rc.xml ~/.config/openbox/
`cp ./conkyrc ~/.conkyrc