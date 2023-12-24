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

## Configure setup
function getConfigure() {
    
    ## In this step, this is where .xinitrc is configured....
    echo """
exec lxsession
    """ >> .xinitrc

}   

upgradePackages
getPackages
getConfigure