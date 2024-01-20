## development-environment-setup.sh
## This script allows the ability to set up the development environment for 
## developing osui environment on Arch Linux or Smith-Pad-OS


## The first thing to do is to update the packages
function updatePackages() {
    sudo pacman -Syyu --noconfirm
}


## Install the editors
function editors(){
    sudo pacman -S vim --noconfirm
    sudo pacman -S nano --noconfirm
    sudo pacman -S micro --noconfirm
}


## Install the desktop environment xfce4 for the development environment
function desktopEnvironment() {
    sudo pacman -S xfce4 --noconfirm 
}


## Install the display manager for xfce4 for the development environment
function displayManager() {
    sudo pacman -S lightdm --noconfirm
    sudo systemctl enable lightdm
    suod systemctl start lightdm
}

## Reboot the system 
sudo reboot


updatePackages
editors
desktopEnvironment
displayManager