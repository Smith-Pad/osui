## dependency-uninstall.sh


sudo pacman -Syyu --noconfirm
sudo pacman -Rcns xfwm4 --noconfirm
sudo pacman -Rcns xfce4 --noconfirm
sudo pacman -Rcns xorg --noconfirm
sudo pacman -Rcns xorg-server --noconfirm
sudo pacman -Rcns xorg-xinit --noconfirm
sudo pacman -Rcns chromium --noconfirm
sudo pacman -Rcns polybar --noconfirm
sudo pacman -Rcns python-flask --noconfirm

## Remove some dependencies of xfce4
sudo pacman -Rcns xfce4-appfinder --noconfirm
sudo pacman -Rcns xfdesktop --noconfirm
sudo pacman -Rcns xfce4-power-manager --noconfirm
sudo pacman -Rcns tumbler --noconfirm
sudo pacman -Rcns thunar-volman --noconfirm
sudo pacman -Rcns garcon --noconfirm
sudo pacman -Rcns exo --noconfirm


## This is where we remove the autostart directories
cd $HOME/.config
rm -rf autostart


## Remove the OSUI directory
cd $HOME
rm -rf osui

## Reinstall the OSUI directory 
cd $HOME 
git clone https://github.com/smith-pad/osui

## reboot the device
sudo reboot