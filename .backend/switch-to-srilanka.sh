## This is where we are able to change the current directory to the locale directory
cd /usr/share/locale 

## This is where we are able to grep the current locale that the OS side is currently using
locale| grep LANG="en_US.UTF-8"