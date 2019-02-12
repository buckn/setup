#!/usr/bin/env bash	

sudo dpkg --add-architecture i386
sudo add-apt-repository ppa:agornostal/ulauncher
add-apt-repository ppa:ppsspp/stable
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" > /etc/apt/sources.list.d/sublime-text.list
add-apt-repository multiverse

apt-get update
apt-get upgrade

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
dpkg -i ./discord.deb
sudo apt-get install -f

apt-get install -y lightdm lxde nnn firefox cmus nestopia ppsspp sublime-text gimp steam-installer mpv gpick nethack-console ulauncher screenfetch

echo -e "@pcmanfm --desktop --profile LXDE" > ~/.config/lxsession/LXDE/autostart
cp ./lxde-rc.xml ~/.config/openbox/lxde-rc.xml