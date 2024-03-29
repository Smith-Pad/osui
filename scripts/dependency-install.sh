## dependency-install.sh


sudo pacman -Syyu --noconfirm
sudo pacman -S xfwm4 --noconfirm
sudo pacman -S xfce4 --noconfirm
sudo pacman -S xorg --noconfirm
sudo pacman -S xorg-server --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S chromium --noconfirm
sudo pacman -S polybar --noconfirm
sudo pacman -S python-flask --noconfirm

## Remove some dependencies of xfce4
sudo pacman -Rcns xfce4-appfinder --noconfirm
sudo pacman -Rcns xfdesktop --noconfirm
sudo pacman -Rcns xfce4-power-manager --noconfirm
sudo pacman -Rcns tumbler --noconfirm
sudo pacman -Rcns thunar-volman --noconfirm
sudo pacman -Rcns garcon --noconfirm
sudo pacman -Rcns exo --noconfirm


## This is where we create the autostart directories for autostart
cd $HOME/.config
mkdir autostart
cd autostart

## Remove to prevent conflicts 
rm -rf *

## This is where we create an autostart for polybar
echo """
[Desktop Entry]
Type=Application
Name=polybar-launch
Exec=polybar

""" >> polybar-launch.desktop


## This is where we create an autostart for brightnessctl
echo """
[Desktop Entry]
Type=Application
Name=brightnessctl-launch
Exec=brightnessctl --set 100%

""" >> brightessctl-launch.desktop



## This is where we create an autostart for chromium
echo """
[Desktop Entry]
Type=Application
Name=chromium-launch
Exec=chromium --kiosk --hide-scrollbars http://127.0.0.1:5000

""" >> chromium-launch.desktop



## This is where we create an autostart for initializing flask for subjects feature
echo """
[Desktop Entry]
Type=Application
Name=python-flask-subjects-launch
Exec=sh launch-subjects-flask.sh

""" >> python-flask-subjects-launch.desktop


## Create a script to initialize flask maybe that will work???
cd $HOME 
echo """
cd osui/Subjects && python3 index.py

""" >> launch-subjects-flask.sh

## Then clone the repo to the user home directory
cd $HOME
rm -rf osui
git clone https://github.com/smith-pad/osui


## reboot the device
sudo reboot