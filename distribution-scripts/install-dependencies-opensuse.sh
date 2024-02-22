## install-dependencies-opensuse.sh

## This script is used to install dependencies to run OSUI.

 

sudo zypper update




sudo zypper remove xfce4-appfinder 	
sudo zypper remove xfce4-appfinder-lang
sudo zypper remove xfdesktop
sudo zypper remove xfce4-panel



sudo zypper install git-core
sudo zypper install xorg-scripts
sudo zypper install chromium
sudo zypper install polybar

