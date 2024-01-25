## development-environment-setup.sh
## This script allows the ability to uninstall the development environment


## The first thing to do is to update the packages

sudo pacman -Syyu --noconfirm




## Install the editors
sudo pacman -Rcns vim --noconfirm
sudo pacman -Rcns nano --noconfirm
sudo pacman -Rcns micro --noconfirm




## Uninstall the desktop environment xfce4 for the development environment

sudo pacman -Rcns xfce4 --noconfirm 




## Uninstall the display manager for xfce4 for the development environment
sudo systemctl stop sddm 
sudo systemctl disable sddm
sudo pacman -Rcns sddm 


## Uninstall the archiso package
sudo pacman -Rcns archiso --noconfirm


## Install browsers 
sudo pacman -Rcns firefox --noconfirm
sudo pacman -Rcns chromium --noconfirm



## Install the openssh package 
sudo pacman -Rcns openssh --noconfirm


## Install the python-flask package 
sudo pacman -Rcns python-flask --noconfirm


## Install the discord package
sudo pacman -Rcns discord --noconfirm




## Reboot the system 
sudo reboot
