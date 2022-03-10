#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
echo "Downloading Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "Installing Google Chrome"
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "done"
rm google-chrome-stable_current_amd64.deb
echo "Installing Telegram"
flatpak install flathub org.telegram.desktop
echo "done"
echo "Installing Discord"
flatpak install flathub com.discordapp.Discord
echo "done"
echo "Installing Mumble"
sudo apt install -y mumble
echo "done"
echo "Installing Spotify"
flatpak install flathub com.spotify.Client
echo "done"
echo "Installing SSH"
sudo apt install -y openssh-server
echo "done"
echo "Installing Git"
sudo apt install -y git
echo "done"
echo "Install Visual Studio Code"
flatpak install flathub com.visualstudio.code
echo "done"
sudo apt-add-repository -y ppa:flexiondotorg/quickemu
sudo apt -y update
echo "Installing QuickEMU"
sudo apt install -y quickemu
echo "done"
sudo add-apt-repository -y ppa:yannick-mauray/quickgui
sudo apt -y update
echo "Installing QuickGUI"
sudo apt install -y quickgui
echo "done"
echo "installing nmap"
sudo apt-get install -y nmap
echo "done"
echo "installing kdenlive"
flatpak install flathub org.kde.kdenlive
echo "done"
echo "installing Docker"
sudo apt install -y docker.io
echo "done"
echo "installing Ansible"
sudo apt install -y ansible
echo "done"
echo "installing KVM and Virt-Manager"
sudo apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager
echo "done"
sudo systemctl is-active libvirtd
read -t 15
echo "Give loggged on user Virtual Create Permissions"
sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER
echo "done"
echo "Virtual Networks"
brctl show
read -t 15

echo "https://linuxize.com/post/how-to-install-kvm-on-ubuntu-20-04/"
echo "https://help.ubuntu.com/community/KVM/Networking#Bridged_Networking"
echo "Install apt install lm-sensors https://help.ubuntu.com/community/SensorInstallHowto"
echo "Mumble Setup Guide https://mumble.jupiterbroadcasting.org/setup.html#addjb"
