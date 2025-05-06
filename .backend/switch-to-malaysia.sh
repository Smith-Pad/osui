## This is where we are able to change the current directory to the locale directory
cd /usr/share/locale 

## This is where we are able to grep the current locale that the OS side is currently using
locale| grep LANG="ms_MY.UTF-8"


## Make the if statement to check if the locale is ms_MY.UTF-8
if [ "$locale" = "ms_MY.UTF-8" ]; then
    echo "Locale is already set to ms_MY.UTF-8"
else
    echo "Locale is not set to ms_MY.UTF-8"
fi