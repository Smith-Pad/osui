## mockup-dependency-lxde-based-rewritten.sh
## This script is rewritten to be more organized...


## Full upgrade packages
function upgradePackages() {
    sudo pacman -Syyu --noconfirm
}

## Install the xorg dependencies 
function getpackages_xorg() {
    sudo pacman -S xorg-xserver --noconfirm
}