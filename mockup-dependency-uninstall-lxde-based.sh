## mockup-dependency-uninstall-lxde-based.sh
## This script is designed to uninstall all of the dependencies of the
## OSUI Mockup LXDE Version

function uninstallPackages()  {
    sudo pacman -Rcns xorg-server --noconfirm
    sudo pacman -Rcns xorg --noconfirm
    sudo pacman -Rcns php --noconfirm
    sudo pacman -Rcns lxde --noconfirm
    sudo pacman -Rcns xorg-xinit --noconfirm
    sudo pacman -Rcns xorg-xrandr --noconfirm
    sudo pacman -Rcns kwin --noconfirm
    sudo pacman -Rcns chromium --noconfirm
}


function disableDaemons() {
    systemctl --user stop php-mockup-osui.service
    systemctl --user disable php-mockup-osui.service
}

function disableConfigurations() {
    ## This is where we remove the systemd --user configuration for it 
    cd $HOME/.config/
    cd systemd
    cd user
    rm -rf php-mockup-osui.service

    ## This is where we remove the .xinitrc configuration for it
    cd $HOME
    rm -rf .xinitrc 


    ## This is where we remove the LXDE configuration for it
    cd $HOME
    cd .config
    rm -rf lxsession
    rm -rf lxpanel
}

uninstallPackages
disableDaemons
disableConfigurations