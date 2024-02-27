## development-environment-setup.sh
## This script allows the ability to set up the development environment for 
## developing osui environment on Fedora Linux


## The first thing to do is to update the packages

sudo dnf update -y && sudo dnf upgrade -y




## Install the editors
sudo pacman -S vim --noconfirm
sudo pacman -S nano --noconfirm
sudo pacman -S micro --noconfirm


## Install Discord
sudo pacman -S discord --noconfirm



## Reboot the system 
sudo reboot
