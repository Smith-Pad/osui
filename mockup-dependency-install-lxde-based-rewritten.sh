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

    ## In this step, this is where systemd configuration needs 
    ## to be configured. Particularly in this mockup script,
    ## PHP is used to show the mockup version... this is 
    ## also used to make sure the thing actually works...


    ## Now the systemd configuration is used in the user level.

    cd $HOME/.config/systemd/user
    echo """
[Unit]
Description=PHP Mockup Service 

[Service]
ExecStart=/usr/bin/sh /home/user/php-mockup-osui-service.sh

[Install]
WantedBy=default.target

    """ >> php-mockup-osui-service


    ## In this step, another branch of OSUI is cloned to the
    ## device user level called the mockup-htmkki branch

    cd $HOME
    mkdir osui-mockup
    cd osui-mockup
    git clone https://github.com/smith-pad/osui/ . 
    git checkout mockup-html


    ## In this step, this is where we enable the systemd --user
    ## service files
    systemctl --user enable php-mockup-osui.service


    ## In this step, this is where the LXDE configuration starts
    cd $HOME
    cd .config
    cd lxsession
    cd LXDE
    rm -rf autostart
    echo """
    @chromium --kiosk http://localhost:2000

    """ >> autostart

}   

upgradePackages
getPackages
getConfigure