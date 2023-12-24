## mockup-dependency-lxde-based-rewritten.sh
## This script is rewritten to be more organized...


## Full upgrade packages
function upgradePackages() {
    sudo pacman -Syyu --noconfirm
}

## Install the packages
function getPackages() {
    sudo pacman -S xorg-server --noconfirm
    sudo pacman -S xorg --noconfirm
    sudo pacman -S php --noconfirm
    sudo pacman -S lxde --noconfirm
    sudo pacman -S xorg-xinit --noconfirm
    sudo pacman -S kwin --noconfirm
}


upgradePackages
getPackages