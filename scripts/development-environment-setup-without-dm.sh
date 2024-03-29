## development-environment-setup-without-dm.sh
## This script allows the ability to set up the development environment for 
## developing osui environment on Arch Linux or Smith-Pad-OS

## This particular one installs the xfce4 environment without the display manager
## basically to start the environment, you have to use the startx command everytime.


## The first thing to do is to update the packages

sudo pacman -Syyu --noconfirm




## Install the editors
sudo pacman -S vim --noconfirm
sudo pacman -S nano --noconfirm
sudo pacman -S micro --noconfirm


## Install the xorg package 
sudo pacman -S xorg --noconfirm


## Install the xorg-xinit package 
sudo pacman -S xorg-xinit --noconfirm


## Install the desktop environment xfce4 for the development environment

sudo pacman -S xfce4 --noconfirm 


## Install the archiso package
sudo pacman -S archiso --noconfirm


## Install browsers 
sudo pacman -S firefox --noconfirm
sudo pacman -S chromium --noconfirm



## Install the openssh package 
sudo pacman -S openssh --noconfirm


## Install the python-flask package 
sudo pacman -S python-flask --noconfirm


## Install the discord package
sudo pacman -S discord --noconfirm


## Install the python-mediapipe package
cd $HOME
git clone https://aur.archlinux.org/python-mediapipe
cd python-mediapipe
makepkg -si --noconfirm


## Remove the python-mediapipe repository after the git repository is downloaded
## and installed 
cd $HOME
rm -rf python-mediapipe


## Install the python-opencv package
sudo pacman -S python-opencv --noconfirm

## Install the arandr package
sudo pacman -S arandr --noconfirm


## Install the github-cli package 
sudo pacman -S github-cli --noconfirm


## Install the xclip package
sudo pacman -S xclip --noconfirm


## Install the xdotool package
sudo pacman -S xdotool --noconfirm


## Install the google-chrome package
cd $HOME
git clone https://aur.archlinux.org/google-chrome
cd google-chrome
makepkg -si --noconfirm


## Install the pavucontrol package
sudo pacman -S pavucontrol --noconfirm


## Install the obs-studio package
sudo pacman -S obs-studio --noconfirm


## Install the linux-headers package
sudo pacman -S linux-headers --noconfirm



## Enable the openssh systemd daemons 
sudo systemctl enable sshd
sudo systemctl start sshd


## Configure the xinitrc configuration file

cd $HOME
touch .xinitrc
echo """
exec xfce4-session
""" >> .xinitrc



## Reboot the system 
sudo reboot
