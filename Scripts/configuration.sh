## configuration.sh

## Functions

## 1. xinitrc   configuration -> root -> /root/.config/autostart 
## 2. xsessions configuration -> root -> /usr/share/xsessions/


if [ ! -d "/root/.config/autostart" ]; then
        mkdir -p /root/.config/autostart
        echo "Created directory /root/.config/autostart"
else
        echo "Directory /root/.config/autostart already exists"
fi

echo """
[Desktop Entry]
Name=osui-desktop
Type=Application
Exec=firefox --kiosk http://127.0.0.1:3000

""" >> /root/.config/autostart/osui.desktop




sudo su <<EOF


echo '
[Desktop Entry]
Name=OSUI
Comment=Operating System User Interface
Exec=/usr/bin/osui-launch.sh 
TryExec=/usr/bin/osui-launch.sh
Type=Application
X-LightDM-DesktopName=OSUI
DesktopNames=OSUI
' > /usr/share/xsessions/

EOF