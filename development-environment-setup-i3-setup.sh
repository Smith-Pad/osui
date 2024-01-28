## development-environment-setup.sh
## This script allows the ability to set up the development environment for 
## developing osui environment on Arch Linux or Smith-Pad-OS

## This version of this script installs the i3 window manager for ease of use, 
## for preference. 


## The first thing to do is to update the packages

sudo pacman -Syyu --noconfirm




## Install the editors
sudo pacman -S vim --noconfirm
sudo pacman -S nano --noconfirm
sudo pacman -S micro --noconfirm




## Install the desktop environment i3 for the development environment
sudo pacman -S i3 --noconfirm 




## Install the display manager for xfce4 for the development environment

sudo pacman -Rcns lightdm --noconfirm
sudo systemctl stop lightdm
sudo systemctl disable lightdm
sudo pacman -S sddm --noconfirm
sudo systemctl enable sddm 
sudo systemctl start sddm



## Install the archiso package
sudo pacman -S archiso --noconfirm


## Install browsers 
sudo pacman -S firefox --noconfirm
sudo pacman -S chromium --noconfirm



## Install the openssh package 
sudo pacman -S openssh --noconfirm


## Install the python-flask package 
sudo pacman -S python-flask --noconfirm


## Install the rofi package 
sudo pacman -S rofi --noconfirm



## Enable the openssh systemd daemons 
sudo systemctl enable sshd
sudo systemctl start sshd




## Reboot the system 
sudo reboot
