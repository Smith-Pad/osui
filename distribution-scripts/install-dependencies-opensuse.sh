## install-dependencies-opensuse.sh

## This script is used to install dependencies to run OSUI.


function updatePackages() 
{
	sudo zypper update && sudo zypper upgrade
}



updatePackages
