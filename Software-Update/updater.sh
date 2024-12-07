## updater.sh
#
#
#
#  Description: This script allows the ability to update packages to various distributions
#
#  2023 Smith-Pad
#  
###############################################################################################



##
# @doc @function
#
#       1. If the system detects running openSUSE, it will use the zypper command to update and upgrade
#          the packages.
#
#       2. If the system detects running Ubuntu, it will use the APT command to update and upgrade the
#          packages.
#
#       3. If the system detects running Debian, it will use the APT command to update and upgrade the 
#          packages.
#  
#       4. If the system detects running Fedora, it will use the DNF command to update and upgrade the 
#          packages.  
#
#

function openSUSE() {
        if cat /etc/os-release|grep openSUSE &> /dev/null; then 
                kitty sudo zypper update && \
                kitty sudo zypper upgrade
        fi
}


function Ubuntu() {
        if cat /etc/os-release|grep Ubuntu &> /dev/null; then 
                kitty sudo apt update && \
                kitty sudo apt upgrade
        fi
}


function Debian() {
        if cat /etc/os-release|grep Debian &> /dev/null; then 
                kitty sudo apt update && \
                kitty sudo apt upgrade
        fi
}


function Fedora() {
        if cat /etc/os-release|grep Fedora &> /dev/null; then 
                kitty sudo dnf update && \
                kitty sudo dnf upgrade
        fi       
}


openSUSE
Ubuntu
Debian
Fedora
