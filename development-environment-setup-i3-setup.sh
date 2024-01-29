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


## Install the python-mediapipe package
cd $HOME
git clone https://aur.archlinux.org/python-mediapipe
cd python-mediapipe
makepkg -si --noconfirm


## Remove the python-mediapipe repository after the git repository is downloaded
## and installed 
cd $HOME
rm -rf python-mediapipe


## Install the python-opencv package
sudo pacman -S python-opencv --noconfirm


## Install the arandr package
sudo pacman -S arandr --noconfirm


## Install github-cli package
sudo pacman -S github-cli --noconfirm


## Enable the openssh systemd daemons 
sudo systemctl enable sshd
sudo systemctl start sshd




## Create i3 configurations

## 




## Reboot the system 
sudo reboot
