## development-environment-setup.sh
## This script allows the ability to set up the development environment for 
## developing osui environment on Arch Linux or Smith-Pad-OS

## This version of this script installs the i3 window manager for ease of use, 
## for preference. 


## The first thing to do is to update the packages

sudo pacman -Syyu --noconfirm




## Uninstall the editors
sudo pacman -Rcns vim --noconfirm
sudo pacman -Rcns nano --noconfirm
sudo pacman -Rcns micro --noconfirm




## Uninstall the desktop environment i3
sudo pacman -Rcns i3 --noconfirm 


## Uninstall the sddm package 
sudo pacman -Rcns sddm --noconfirm

## Uninstall the sddm systemd service 
sudo systemctl stop sddm
sudo systemctl disable sddm


## Uninstall the chromium package
sudo pacman -Rcns chromium --noconfirm

## Reboot the device 
sudo reboot