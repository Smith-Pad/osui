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