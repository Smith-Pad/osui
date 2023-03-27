/********************************************************************************
 * hardware-control.js
 * 
 * This file is acts as a controller to both HTML and Flask to control
 * hardware devices, while the view stays constantly. Say the user opens
 * a FOIL-bar popup menu, and the user clicks on a functional button, then
 * by default the interface refreshes and the div goes away. So this controller 
 * prevents that happening
 ********************************************************************************/


/**
 * This global function allows the ability to tell:
 * "Hey, I want to increase, decrease or completely mute the audio volume"
 */

function VOLUME_CONTROLLER() {
        function volumeUp() {
                document.getElementById('volume-up').addEventListener('click', function () {
                        var requestVolumeUp  = new XMLHttpRequest();
                        requestVolumeUp.open('POST', '/home_screen_volume_rocker_up');
                        requestVolumeUp.send();
                });
        }
        volumeUp();


        function volumeDown() {
                document.getElementById('volume-down').addEventListener('click', function () {
                        var requestVolumeDown  = new XMLHttpRequest();
                        requestVolumeDown.open('POST', '/home_screen_volume_rocker_down');
                        requestVolumeDown.send();
                });
        }
        volumeDown();
        

}

VOLUME_CONTROLLER();


