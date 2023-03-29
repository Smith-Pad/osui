/********************************************************************************
 * hardware-control.js
 * 
 * This file is acts as a controller to both HTML and Flask to control
 * hardware devices, while the view stays constantly. Say the user opens
 * a FOIL-bar popup menu, and the user clicks on a functional button, then
 * by default the interface refreshes and the div goes away. So this controller 
 * prevents that happening
 ********************************************************************************/




document.getElementById('volume-up').addEventListener('click', function () {
        var requestVolume  = new XMLHttpRequest();
        requestVolume.open('POST', '/volume_rocker_up');
        requestVolume.send();
});




document.getElementById('volume-down').addEventListener('click', function () {
        var requestVolume  = new XMLHttpRequest();
        requestVolume.open('POST', '/volume_rocker_down');
        requestVolume.send();
});