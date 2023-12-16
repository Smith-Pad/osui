## mockup-dependency-install.sh

sudo pacman -Syyu --noconfirm
sudo pacman -S xfwm4 --noconfirm
sudo pacman -S xorg --noconfirm
sudo pacman -S xorg-server --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S chromium --noconfirm


cd
mkdir osui-mockup && cd osui-mockup
git clone https://github.com/smith-pad/osui . 
git checkout osui-mockup