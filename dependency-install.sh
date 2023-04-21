## Dependency Install
#
#
#
#  Description: This script allows the ability to install dependencies for running and debugging
#  		OSUI. 
#
#  2023 Smith-Pad
#  
###############################################################################################


## 
# @doc @function 
# ---------------
# In this function, this function will use the if statements and use the cat 
# command to the /etc directory to the os-release file and uses the grep 
# command to detect what distribution that the system is running
# 
#
# For instance, if your are running let's say, Smith-Pad-OS, then it will
# install dependencies in order to run and debug OSUI
#
#
# @doc @function
# ---------------
# The package_manager<distro name> function represents the commands to install
# dependencies via a distro's default package manager.
#
# The package_manager<distro name>_python_pip_package_manager<distro name> function 
# represents the commands to install dependencies via the Python pip package manager
#  
#
#

function check() {
        if cat /etc/os-release|grep openSUSE &> /dev/null; then 
		package_manager_openSUSE
		package_manager_openSUSE_python_pip_package_manager
	fi

        if cat /etc/os-release|grep Ubuntu &> /dev/null; then 
		package_manager_openSUSE
		package_manager_openSUSE_python_pip_package_manager
	fi    

        if cat /etc/os-release|grep Fedora &> /dev/null; then 
		package_manager_Fedora
		package_manager_Fedora_python_pip_package_manager
	fi        
}



function package_manager_openSUSE() {
	sudo zypper install python310-pip
	sudo zypper install php8-cli
}

function package_manager_openSUSE_python_pip_package_manager() {
	pip3.10 install flask
	pip3.10 install speechrecognition
	pip3.10 install sh
}


function package_manager_Ubuntu() {
	sudo apt install python3-pip
	sudo apt install php8-cli
}

function package_manager_Ubuntu_python_pip_package_manager() {
	pip3 install flask
	pip3 install speechrecognition
	pip3 install sh
}



function package_manager_Fedora() {
	sudo dnf install python3
	sudo dnf install php
}

function package_manager_Fedora_python_pip_package_manager() {
	pip3 install flask
	pip3 install speechrecognition
	pip3 install sh
}

check
