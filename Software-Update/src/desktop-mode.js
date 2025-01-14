/********************************************************************************
 * desktop-mode.js
 * Desktop Mode allows the user to experience the GNOME Shell. 
 * 
 ********************************************************************************/


function desktopMode() {
        document.getElementById('desktop_mode').addEventListener('click', function () {
                var requestVolumeDown  = new XMLHttpRequest();                                                       
                requestVolumeDown.open('POST', '/desktop_mode');                         
                requestVolumeDown.send();                                               
        });
}


desktopMode();