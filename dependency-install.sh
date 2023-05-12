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
        
        if cat /etc/os-release|grep Fedora &> /dev/null; then 
		package_manager_Fedora
		package_manager_Fedora_python_pip_package_manager
	fi        

        if cat /etc/os-release|grep Manjaro &> /dev/null; then 
		package_manager_Manjaro
		package_manager_Manjaro_python_pip_package_manager
	fi   

        if cat /etc/os-release|grep Arch &> /dev/null; then 
		package_manager_Arch
		package_manager_Arch_python_pip_package_manager
	fi   
}


##############################################################
##		Arch Linux
##############################################################


function package_manager_Arch() {
	sudo pacman -S python-pip --noconfirm
	sudo pacman -S php --noconfirm
	sudo pacman -S python  --noconfirm 
        sudo pacman -S festival --noconfirm
        sudo pacman -S portaudio --noconfirm    
        sudo pacman -S python-pyaudio --noconfirm
        sudo pacman -S xorg-server --noconfirm
        sudo pacman -S xorg-xinit --noconfirm
}
function package_manager_Arch_python_pip_package_manager() {
        pip install flask
	pip install speechrecognition
	pip install sh
        pip install cefpython3
        pip install pyaudio
}


##############################################################
##		openSUSE
##############################################################


function package_manager_openSUSE() {
	sudo zypper install python310-pip
	sudo zypper install php8-cli
        sudo zypper install festival
        sudo zypper install portaudio
        sudo zypper install python-pyaudio
}
function package_manager_openSUSE_python_pip_package_manager() {
	pip3.10 install flask
	pip3.10 install speechrecognition
	pip3.10 install sh
}


##############################################################
##		Fedora
##############################################################


function package_manager_Fedora() {
	sudo dnf install python3-pip -y
	sudo dnf install php -y
	sudo dnf install kitty -y
        sudo dnf install festival -y
        sudo dnf install portaudio -y
        sudo dnf install python-pyaudio -y
        sudo dnf install alsa-lib alsa-utils -y
}

function package_manager_Fedora_python_pip_package_manager() {
        pip3 install flask
	pip3 install speechrecognition
	pip3 install sh
        pip3 install cefpython3
        pip3 install bark
        pip3 install numpy
        pip3 install scipy
        pip3 install tensorflow
        pip3 install pyttsx3
        pip3 install spacy 
        python3 -m spacy download en_core_web_sm
}    



##############################################################
##		Manjaro Linux
##############################################################

function package_manager_Manjaro() {
	sudo pacman -S install python3-pip --noconfirm
	sudo pacman -S install php --noconfirm
	sudo pacman -S python3  --noconfirm 
        sudo pacman -S festival --noconfirm       
        sudo pacman -S portaudio --noconfirm  
        sudo pacman -S python-pyaudio --noconfirm      
}
function package_manager_Manjaro_python_pip_package_manager() {
        pip3 install flask
	pip3 install speechrecognition
	pip3 install sh
        pip3 install cefpython3
}



check
