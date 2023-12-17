## mockup-dependency-install.sh

sudo pacman -Syyu --noconfirm
sudo pacman -S xfwm4 --noconfirm
sudo pacman -S xorg --noconfirm
sudo pacman -S xorg-server --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S chromium --noconfirm
sudo pacman -S polybar --noconfirm

cd
mkdir osui-mockup && cd osui-mockup
git clone https://github.com/smith-pad/osui . 
git checkout mockup-html


cd $HOME
touch .xinitrc
echo """
exec xfwm4

""" >> .xinitrc