export KDE_SESSION_VERSION=5
export $(dbus-launch)
export $(/usr/bin/grep -z DBUS_SESSION_BUS_ADDRESS /proc/$(/usr/bin/pgrep -u $LOGNAME -n plasma)/environ)
unset SESSION_MANAGER
exec startkde
