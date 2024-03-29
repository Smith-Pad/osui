## mockup-dependency-install.sh

sudo pacman -Syyu --noconfirm
sudo pacman -S xfwm4 --noconfirm
sudo pacman -S xfce4 --noconfirm
sudo pacman -S xorg --noconfirm
sudo pacman -S xorg-server --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S chromium --noconfirm
sudo pacman -S polybar --noconfirm

## Remove some dependencies of xfce4
sudo pacman -Rcns xfce4-appfinder --noconfirm
sudo pacman -Rcns xfdesktop --noconfirm
sudo pacman -Rcns xfce4-power-manager --noconfirm
sudo pacman -Rcns tumbler --noconfirm
sudo pacman -Rcns thunar-volman --noconfirm
sudo pacman -Rcns garcon --noconfirm
sudo pacman -Rcns exo --noconfirm