## development-environment-setup.sh
## This script allows the ability to set up the development environment for 
## developing osui environment on Arch Linux or Smith-Pad-OS


## The first thing to do is to update the packages

sudo pacman -Syyu --noconfirm

sleep 10


## Install the editors
sudo pacman -S vim --noconfirm
sudo pacman -S nano --noconfirm
sudo pacman -S micro --noconfirm

sleep 10


## Install the desktop environment xfce4 for the development environment

sudo pacman -S xfce4 --noconfirm 

sleep 10 


## Install the display manager for xfce4 for the development environment

sudo pacman -Rcns lightdm --noconfirm
sudo systemctl stop lightdm
sudo systemctl disable lightdm
sudo pacman -S sddm --noconfirm
sudo systemctl enable sddm 
sudo systemctl start sddm


sleep 10 

## Install the archiso package
sudo pacman -S archiso --noconfirm


sleep 10 

## Install the openssh package 
sudo pacman -S openssh --noconfirm


sleep 10 

## Enable the openssh systemd daemons 
sudo systemctl enable sshd
sudo systemctl start sshd


sleep 10

## Reboot the system 
sudo reboot
