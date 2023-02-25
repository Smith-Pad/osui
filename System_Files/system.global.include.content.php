<?php
function content() {
        
        print('<div class="FOIL-layout-regular-no-shadow">');

        print('<FOIL-font-size-60> <div id="time_service"></div> </FOIL-font-size-60>');
        print('<script src="src/FOIL-time.js"></script>');
        print('<FOIL-font-size-40> Menu </FOIL-font-size-40>');
        print('<a href="#" class="FOIL-button-regular-no-shadow">Settings</a>');
        print('<a href="./Views/Subjects/index.php" class="FOIL-button-regular-no-shadow">Subjects</a>');
        


        print('<form method="post">');
        print('<button type="submit" name="appsmenu" class="FOIL-button-regular-no-shadow">Apps</button>');
        print('</form>');
        print('</div>');
        
        if(isset($_POST['appsmenu'])) {
            shell_exec('nwggrid');
        }
}
content();
?>
