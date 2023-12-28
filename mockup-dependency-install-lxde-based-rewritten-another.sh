## mockup-dependency-lxde-based-rewritten.sh
## This script is rewritten to be more organized...


## Full upgrade packages
function upgradePackages() {
    sudo pacman -Syyu --noconfirm
}

## Install the packages
function getPackages() {
    sudo pacman -S xorg-server --noconfirm
    sudo pacman -S xorg --noconfirm
    sudo pacman -S php --noconfirm
    sudo pacman -S lxde --noconfirm
    sudo pacman -S xorg-xinit --noconfirm
    sudo pacman -S xorg-xrandr --noconfirm
    sudo pacman -S kwin --noconfirm
    sudo pacman -S chromium --noconfirm
}

function configureStuff() {
    cp -R systemd $HOME/.config/                    ## Install the systemd configurations
    cp -R php-mockup-osui-service.sh $HOME          ## Install the sh php scripts
    cp -R lxsession $HOME/.config                   ## Install the lxde configuration
    cp -R .xinitrc $HOME                            ## Install the .xinitrc configuration
    
    ## This is where it goes to the default user home directory, 
    ## and then creates a directory called osui-mockup, and 
    ## then git gets the ability to clone and checkout to the 
    ## "mockup-html" branch, which is used and the source 
    ## to the OSUI mockup version. 
    
    cd $HOME
    mkdir osui-mockup
    git clone https://github.com/smith-pad/osui .  
}



upgradePackages
getPackages
configureStuff