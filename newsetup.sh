#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
echo "Downloading Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo"Installing Google Chrome"
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "done"
rm google-chrome-stable_current_amd64.deb
echo"Installing Telegram"
sudo snap install telegram-desktop
echo "done"
echo"Installing Discord"
sudo snap install discord
echo "done"
echo"Installing Mumble"
sudo snap install mumble
echo "done"
echo"Installing Spotify"
sudo snap install spotify
echo "done"
echo"Installing SSH"
sudo apt install -y openssh-server
echo "done"
echo"Installing Git"
sudo apt install -y git
echo "done"
echo"Install Visual Studio Code"
sudo snap install --classic code
echo "done"
sudo apt-add-repository -y ppa:flexiondotorg/quickemu
sudo apt -y update
echo"Installing QuickEMU"
sudo apt install -y quickemu
echo "done"
sudo add-apt-repository -y ppa:yannick-mauray/quickgui
sudo apt -y update
echo"Installing QuickGUI"
sudo apt install -y quickgui
echo "done"
echo "installing nmap"
sudo apt-get install -y nmap
echo "done"


echo"Install apt install lm-sensors https://help.ubuntu.com/community/SensorInstallHowto"
echo"Mumble Setup Guide https://mumble.jupiterbroadcasting.org/setup.html#addjb"
