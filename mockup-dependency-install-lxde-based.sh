## mockup-dependency-install-lxde-based.sh

sudo pacman -Syyu --noconfirm


## Remove the .xinitrc if necessary if it is existed
cd $HOME
rm -rf .xinitrc


## Remove the autostart file if it is existed
cd $HOME/.config
rm -rf autostart/osui-launch.desktop

## Remove the xfce4 dependencies if necessary
sudo pacman -Rcns xfce4 --noconfirm