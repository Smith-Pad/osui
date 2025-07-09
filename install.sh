################################################################################
##
##                      OSUI INSTALLATION SCRIPT
##                             (Redone)
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
sudo pacman -S xorg-xmodmap --noconfirm
sudo pacman -S xorg-xpr --noconfirm
sudo pacman -S xorg-xprop --noconfirm
sudo pacman -S xorg-xrandr --noconfirm
sudo pacman -S xorg-xrdb --noconfirm
sudo pacman -S xorg-xrefresh --noconfirm
sudo pacman -S xorg-xset --noconfirm
sudo pacman -S xorg-xsetroot --noconfirm
sudo pacman -S xorg-xsm --noconfirm
sudo pacman -S xorg-xterm --noconfirm
sudo pacman -S xorg-xwd --noconfirm
sudo pacman -S xorg-xwininfo --noconfirm
sudo pacman -S xorg-xwud --noconfirm
sudo pacman -S chromium --noconfirm
sudo pacman -S plasma --noconfirm
sudo pacman -S plasma-desktop --noconfirm
sudo pacman -S plasma-nm --noconfirm
sudo pacman -S plasma-pa --noconfirm
sudo pacman -S plasma-workspace --noconfirm
sudo pacman -S sddm --noconfirm
sudo pacman -S sddm-kcm --noconfirm
sudo pacman -S kde-gtk-config --noconfirm
sudo pacmam -S kdeplasma-addons --noconfirm
sudo pacman -S kscreen --noconfirm
sudo pacman -S kwin --noconfirm
sudo pacman -S powerdevil --noconfirm
sudo pacman -S systemsettings --noconfirm
sudo pacman -S python-pip --noconfirm
sudo pacman -S python-flask --noconfirm
sudo pacman -S php --noconfirm
sudo pacman -S playerctl --noconfirm

## Go to the config directory
cd config

## Copy the xinitrc file to the root directory
cp xinitrc ~/.xinitrc


## Create "cache" file called CURRENT-1.9.txt
cd /root && touch CURRENT-1.9.txt


## Make an if statement for the CURRENT-1.9.txt file
if [ -f CURRENT-1.9.txt ]; then
    echo "CURRENT-1.9.txt file exists"
else
    echo "CURRENT-1.9.txt file does not exist"
fi

echo """
#################################################################
#              /!\ IT IS BEST TO REBOOT YOUR SYSTEM
#################################################################

"""