################################################################################
##
##                      OSUI INSTALLATION SCRIPT
##
##
##
################################################################################


sudo pacman -Syyu --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S xorg-server --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S xorg-xrandr --noconfirm
sudo pacman -S xorg-xsetroot --noconfirm
sudo pacman -S xorg-xset --noconfirm
sudo pacman -S xorg-xrdb --noconfirm
sudo pacman -S xorg-xprop --noconfirm
sudo pacman -S xorg-xev --noconfirm
sudo pacman -S xorg-xinput --noconfirm
sudo pacman -S xorg-xkill --noconfirm
sudo pacman -S xorg-xlsclients --noconfirm
sudo pacman -S xorg-xlsatoms --noconfirm
sudo pacman -S xorg-xlsfonts --noconfirm
sudo pacman -S xorg-xmessage --noconfirm
sudo pacman -S xorg-xrefresh --noconfirm
sudo pacman -S xorg-xvinfo --noconfirm
sudo pacman -S xorg-xwininfo --noconfirm
sudo pacman -S xorg-xwud --noconfirm
sudo pacman -S xorg-xgamma --noconfirm
sudo pacman -S  xorg-xhost --noconfirm
sudo pacman -S xorg-xauth --noconfirm
sudo pacman -S xorg-xclipboard --noconfirm
sudo pacman -S xorg-xcursorgen --noconfirm
sudo pacman -S xorg-xdpyinfo --noconfirm
sudo pacman -S xorg-xdriinfo --noconfirm
sudo pacman -S xorg-xedit --noconfirm
sudo pacman -S xorg-xeyes --noconfirm
sudo pacman -S xorg-xfontsel --noconfirm
sudo pacman -S xorg-xfs --noconfirm
sudo pacman -S xorg-xfsinfo --noconfirm
sudo pacman -S xorg-xgc --noconfirm
sudo pacman -S xorg-xkbevd --noconfirm
sudo pacman -S xorg-xkbutils --noconfirm
sudo pacman -S xorg-xkill --noconfirm
sudo pacman -S xorg-xlsatoms --noconfirm
sudo pacman -S xorg-xlsclients --noconfirm
sudo pacman -S xorg-xlsfonts --noconfirm
sudo pacman -S xorg-xmessage --noconfirm
sudo pacman -S xorg-xmodmap
sudo pacman -S xorg-xpr
sudo pacman -S xorg-xprop
sudo pacman -S xorg-xrandr
sudo pacman -S xorg-xrdb
sudo pacman -S xorg-xrefresh
sudo pacman -S xorg-xset
sudo pacman -S xorg-xsetroot
sudo pacman -S xorg-xsm
sudo pacman -S xorg-xterm
sudo pacman -S xorg-xwd
sudo pacman -S xorg-xwininfo
sudo pacman -S xorg-xwud
sudo pacman -S chromium
sudo pacman -S plasma
sudo pacman -S plasma-desktop
sudo pacman -S plasma-nm
sudo pacman -S plasma-pa
sudo pacman -S plasma-workspace
sudo pacman -S sddm
sudo pacman -S sddm-kcm
sudo pacman -S kde-gtk-config
sudo pacmam -S kdeplasma-addons
sudo pacman -S kscreen
sudo pacman -S kwin
sudo pacman -S powerdevil
sudo pacman -S systemsettings
sudo pacman -S python-pip --noconfirm
sudo pacman -S python-flask --noconfirm
sudo pacman -S php --noconfirm
sudo pacman -S playerctl --noconfirm

## Go to the config directory
cd config

## Copy the xinitrc file to the root directory
cp xinitrc ~/.xinitrc


echo """
#################################################################
#              /!\ IT IS BEST TO REBOOT YOUR SYSTEM
#################################################################

"""