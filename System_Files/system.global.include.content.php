<?php
function content() {
        
        print('<div class="FOIL-layout-regular-no-shadow">');

        print('<center> <FOIL-font-size-60> <div id="time_service"></div> </FOIL-font-size-60> </center>');
        print('<script src="src/FOIL-time.js"></script>');
        print('<center><FOIL-font-size-40> Menu </FOIL-font-size-40></center>');
        print('<center>');
        print('<a href="#" class="FOIL-button-regular-no-shadow">Settings</a>');
        print('<a href="#" class="FOIL-button-regular-no-shadow">Apps</a>');
        print('<a href="./Views/Subjects/index.php" class="FOIL-button-regular-no-shadow">Subjects</a>');
        print("</center>");
}
content();
?>
