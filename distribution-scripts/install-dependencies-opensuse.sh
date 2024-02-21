## install-dependencies-opensuse.sh

## This script is used to install dependencies to run OSUI.


function updatePackages() 
{
	sudo zypper update
}


function installPackages()
{
	sudo zypper install git-core
} 



updatePackages
