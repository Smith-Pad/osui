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
		package_manager_Ubuntu
		package_manager_Ubuntu_python_pip_package_manager
	fi    

        if cat /etc/os-release|grep Fedora &> /dev/null; then 
		package_manager_Fedora
		package_manager_Fedora_python_pip_package_manager
                configure_Fedora
	fi        

        if cat /etc/os-release|grep Rocky Linux &> /dev/null; then 
		package_manager_Rocky_Linux
		package_manager_Rocky_Linux_python_pip_package_manager
                configure_Fedora
	fi   
}


##############################################################
##		openSUSE
##############################################################


function package_manager_openSUSE() {
	sudo zypper install python310-pip
	sudo zypper install php8-cli
}
function package_manager_openSUSE_python_pip_package_manager() {
	pip3.10 install flask
	pip3.10 install speechrecognition
	pip3.10 install sh
}


##############################################################
##		Ubuntu
##############################################################

function package_manager_Ubuntu() {
	sudo apt install python3-pip -y
	sudo apt install php -y 
}

function package_manager_Ubuntu_python_pip_package_manager() {
	pip install flask
	pip install speechrecognition
	pip install sh
}


##############################################################
##		Fedora
##############################################################


function package_manager_Fedora() {
	sudo dnf install python3-pip
	sudo dnf install php
	sudo dnf install kitty
}
function package_manager_Fedora_python_pip_package_manager() {
        pip3 install flask
	pip3 install speechrecognition
	pip3 install sh
        pip3 install cefpython3
}
function configure_Fedora() {
        sudo dnf install -y git
        sudo dnf install -y curl
        sudo dnf install -y unzip
        sudo dnf install -y gcc-c++
        sudo dnf install -y lib
}      



##############################################################
##		Rocky Linux
##############################################################

function package_manager_Rocky_Linux() {
	sudo dnf install python3-pip
	sudo dnf install php
	sudo dnf install kitty
}
function package_manager_Rocky_Linux_python_pip_package_manager() {
        pip3 install flask
	pip3 install speechrecognition
	pip3 install sh
        pip3 install cefpython3
}
function configure_Rocky_Linux() {
        sudo dnf install -y git
        sudo dnf install -y curl
        sudo dnf install -y unzip
        sudo dnf install -y gcc-c++
        sudo dnf install -y lib
}      






check