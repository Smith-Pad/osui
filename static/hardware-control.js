/********************************************************************************
 * hardware-control.js
 * 
 * This file is acts as a controller to both HTML and Flask to control
 * hardware devices, while the view stays constantly. Say the user opens
 * a FOIL-bar popup menu, and the user clicks on a functional button, then
 * by default the interface refreshes and the div goes away. So this controller 
 * prevents that happening
 ********************************************************************************/



// This global function allows the ability to tell: 
// "Hey, I want to increase, decrease or completely mute the audio volume"

function VOLUME_CONTROLLER() {


        // Here, we create a function called volumeUp which essentially is used 
        // when the user clicks on a button that has functionality to increase the 
        // audio volume. 

        function volumeUp() {
                document.getElementById('volume-up').addEventListener('click', function () {
                        // Here we make a variable called requestVolumeUp,
                        // which uses `XMLHttpRequest' which is used for initialization
                        var requestVolumeUp  = new XMLHttpRequest();

                        // Here, we use the open parameter to say to python flask, 
                        // "Hey, I want you to use the volume_rocker_up function
                        // and increase the volume". 
                        requestVolumeUp.open('POST', '/volume_rocker_up');
 
                        // Here, we use the send parameter to send the request. 
                        requestVolumeUp.send();
                });
        }


        
        // Here, we create a function called volumeDown, which essentially is used 
        // when the user clicks on a button that has functionality to increase the 
        // audio volume. 

        function volumeDown() {
                document.getElementById('volume-down').addEventListener('click', function () {
                        // Here we make a variable called requestVolumeDown,
                        // which uses `XMLHttpRequest' which is used for initialization
                        var requestVolumeDown  = new XMLHttpRequest();

                        // Here, we use the open parameter to say to python flask, 
                        // "Hey, I want you to use the volume_rocker_down function
                        // and decrease the volume". 
                        requestVolumeDown.open('POST', '/volume_rocker_down');

                        // Here, we use a send parameter to send the request
                        requestVolumeDown.send();
                });
        }


        volumeUp();
        volumeDown();
        

}

VOLUME_CONTROLLER();


