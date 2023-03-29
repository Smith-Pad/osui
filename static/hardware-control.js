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
 * Set the audio volume up or down. 
 */
function volume_up() {
        var requestVolume  = new XMLHttpRequest();
        requestVolume.open('POST', '/volume_rocker_up');
        requestVolume.send();

}


function volume_down() {
        var requestVolume  = new XMLHttpRequest(); 
        requestVolume.open('POST', '/volume_rocker_down')
        requestVolume.send();
}

volume_up();
volume_down();



/**
 * Set the display brightness up or down
 */

function brightness_up() {
        var requestBrightness = new XMLHttpRequest(); 
        requestBrightness.open('POST', '/brightness_rocker_up');
        requestBrightness.send();
}


function brightness_down() {
        var requestBrightness = new XMLHttpRequest();
        requestBrightness.open('POST', '/brightness_rocker_down');
        requestBrightness.send();
}


brightness_up();
brightness_down();