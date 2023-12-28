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

uninstallPackages
disableDaemons