##################################################################
#			--------
#			sort.sh
#			---------
#
##################################################################


function removeDirectory() {
	rm -rf /usr/share/osui-applications-list
	mkdir /usr/share/osui-applications-list
}


function addFiles() {
        cp -R /usr/share/applications/Alacritty.desktop /usr/share/osui-applications-list/Alacritty.desktop			                        ## Installs Alacritty Terminal
        cp -R /usr/share/applications/chromium-browser.desktop /usr/share/osui-applications-list/chromium-browser.desktop			        ## Install Chromium Browser
        cp -R /usr/share/applications/org.gnome.Epiphany.desktop /usr/share/osui-applications-list/org.gnome.Epiphany.desktop			        ## Install Epiphany Browser
        cp -R /usr/share/applications/org.gnome.Nautilus.desktop /usr/share/osui-applications-list/org.gnome.Nautilus.desktop			        ## Install Nautilus File Manager
        cp -R /usr/share/applications/org.gnome.Cheese.desktop /usr/share/osui-applications-list/org.gnome.Cheese.desktop			        ## Install Cheese 
        cp -R /usr/share/applications/org.gnome.Calculator.desktop /usr/share/osui-applications-list/org.gnome.Calculator.desktop			## Install GNOME Calculator 
}

function showFiles() {
        clear
        echo "Here are the updated file structure"
        ls /usr/share/osui-applications-list/
}

removeDirectory
addFiles
showFiles