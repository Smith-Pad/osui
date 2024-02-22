## install-dependencies-opensuse.sh

## This script is used to install dependencies to run OSUI.

 

sudo zypper update




sudo zypper remove xfce4-appfinder 	
sudo zypper remove xfce4-appfinder-lang
sudo zypper remove xfdesktop
sudo zypper remove xfce4-panel
sudo zypper remove xfce4-power-mamager
sudo zypper remove tumbler
sudo zypper remove thunar-volman
sudo zypper remove garcon
sudo zypper remove exo




sudo zypper install git-core
sudo zypper install xorg-scripts
sudo zypper install chromium
sudo zypper install polybar

