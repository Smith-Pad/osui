################################################################################
##
##			OSUI INSTALLATION SCRIPT
##
##
##
################################################################################


sudo pacman -Syyu --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S \
    xorg-server \
    xorg-xinit \
    xorg-xrandr \
    xorg-xsetroot \
    xorg-xset \
    xorg-xrdb \
    xorg-xprop \
    xorg-xev \
    xorg-xinput \
    xorg-xkill \
    xorg-xlsclients \
    xorg-xlsatoms \
    xorg-xlsfonts \
    xorg-xmessage \
    xorg-xrefresh \
    xorg-xvinfo \
    xorg-xwininfo \
    xorg-xwud \
    xorg-xgamma \
    xorg-xhost \
    xorg-xauth \
    xorg-xclipboard \
    xorg-xcursorgen \
    xorg-xdpyinfo \
    xorg-xdriinfo \
    xorg-xedit \
    xorg-xeyes \
    xorg-xfontsel \
    xorg-xfs \
    xorg-xfsinfo \
    xorg-xgc \
    xorg-xkbevd \
    xorg-xkbutils \
    xorg-xkill \
    xorg-xlsatoms \
    xorg-xlsclients \
    xorg-xlsfonts \
    xorg-xmessage \
    xorg-xmodmap \
    xorg-xpr \
    xorg-xprop \
    xorg-xrandr \
    xorg-xrdb \
    xorg-xrefresh \
    xorg-xset \
    xorg-xsetroot \
    xorg-xsm \
    xorg-xterm \
    xorg-xwd \
    xorg-xwininfo \
    xorg-xwud \
    --noconfirm


    pacman -S chromium --noconfirm


echo """
#################################################################
#              /!\ IT IS BEST TO REBOOT YOUR SYSTEM
#################################################################

"""