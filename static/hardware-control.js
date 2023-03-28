/********************************************************************************
 * hardware-control.js
 * 
 * This file is acts as a controller to both HTML and Flask to control
 * hardware devices, while the view stays constantly. Say the user opens
 * a FOIL-bar popup menu, and the user clicks on a functional button, then
 * by default the interface refreshes and the div goes away. So this controller 
 * prevents that happening
 ********************************************************************************/



function VOLUME_CONTROLLER() {



        function volumeUp() {
                document.getElementById('volume-up').addEventListener('click', function () {
                        var requestVolumeUp  = new XMLHttpRequest();

                        /**
                         * See the index.py
                         */
                        requestVolumeUp.open('POST', '/volume_rocker_up');
                        requestVolumeUp.send();
                });
        } 


        

        function volumeDown() {
                document.getElementById('volume-down').addEventListener('click', function () {
                        var requestVolumeDown  = new XMLHttpRequest();

                        /**
                         * See the index.py
                         */
                        requestVolumeDown.open('POST', '/volume_rocker_down');

                        requestVolumeDown.send();
                });
        }


        volumeUp();
        volumeDown();

}

VOLUME_CONTROLLER();
