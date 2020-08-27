#!/bin/bash

# https://github.com/ocerman/zenpower
sudo pacman -Sy amd-ucode dkms git base-devel linux-headers
cd ~
git clone https://github.com/ocerman/zenpower.git
cd zenpower
sudo make dkms-install  

sudo modprobe -r k10temp
sudo bash -c 'sudo echo -e "\n# replaced with zenpower\nblacklist k10temp" >> /etc/modprobe.d/blacklist.conf'
sudo modprobe zenpower


#https://github.com/ocerman/zenmonitor
cd ~
git clone https://aur.archlinux.org/zenmonitor-git.git
cd zenmonitor-git
makepkg -si


cd ~
rm -rf zenpower
rm -rf zenmonitor-git

echo "Done"