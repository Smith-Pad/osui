## configuration.sh




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
