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



cd $HOME/.config
mkdir autostart
cd autostart


rm -rf *


echo """
[Desktop Entry]
Type=Application
Name=polybar-launch
Exec=polybar

""" >> polybar-launch.desktop



echo """
[Desktop Entry]
Type=Application
Name=brightnessctl-launch
Exec=brightnessctl --set 100%

""" >> brightessctl-launch.desktop



echo """
[Desktop Entry]
Type=Application
Name=chromium-launch
Exec=chromium --kiosk --hide-scrollbars http://127.0.0.1:5000

""" >> chromium-launch.desktop
