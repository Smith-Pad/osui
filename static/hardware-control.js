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

        // Here, we create a function called volumeUp which essentially is used 
        // when the user clicks on a button that has functionality to increase the 
        // audio volume. 

                        // Here we make a variable called requestVolumeUp,
                        // which uses `XMLHttpRequest' which is used for initialization


                        // Here, we use the open parameter to say to python flask, 
                        // "Hey, I want you to use the volume_rocker_up function
                        // and increase the volume". 
 
                        // Here, we use the send parameter to send the request. 

        // Here, we create a function called volumeDown, which essentially is used 
        // when the user clicks on a button that has functionality to increase the 
        // audio volume. 
                        // Here we make a variable called requestVolumeDown,
                        // which uses `XMLHttpRequest' which is used for initialization
                        
                        // Here, we use the open parameter to say to python flask, 
                        // "Hey, I want you to use the volume_rocker_down function
                        // and decrease the volume". 

                        // Here, we use a send parameter to send the request

function VOLUME_CONTROLLER() {



        function volumeUp() {
                document.getElementById('controls-volume-up').addEventListener('click', function () {
                        var requestVolumeUp  = new XMLHttpRequest();

                        requestVolumeUp.open('POST', '/volume_rocker_up');
                        requestVolumeUp.send();
                });
        } 


        

        function volumeDown() {
                document.getElementById('controls-volume-down').addEventListener('click', function () {
                        var requestVolumeDown  = new XMLHttpRequest();

                        requestVolumeDown.open('POST', '/volume_rocker_down');

                        requestVolumeDown.send();
                });
        }


        volumeUp();
        volumeDown();

}

VOLUME_CONTROLLER();
