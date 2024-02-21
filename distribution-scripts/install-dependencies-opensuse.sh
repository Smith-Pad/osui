## install-dependencies-opensuse.sh

## This script is used to install dependencies to run OSUI.


function updatePackages() 
{
	sudo zypper update
}


function uninstallPackages() 
{
	sudo zypper remove xfce4-appfinder 	
}



function installPackages()
{
	sudo zypper install git-core
	sudo zypper install xorg-scripts
} 



updatePackages
uninstallPackages
installPackages
