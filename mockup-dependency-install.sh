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
sudo pacman -Rcns xfce4-appfinder
sudo pacman -Rcns xfdesktop
sudo pacman -Rcns xfce4-power-manager
sudo pacman -Rcns tumbler
sudo pacman -Rcns thunar-volman
sudo pacman -Rcns garcon
sudo pacman -Rcns exo

cd
mkdir osui-mockup && cd osui-mockup
git clone https://github.com/smith-pad/osui . 
git checkout mockup-html


cd $HOME
touch .xinitrc
echo """
exec xfce4-session

""" >> .xinitrc