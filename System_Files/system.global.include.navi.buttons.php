<?php
// Include Buttons in navigation if it is required so
// Example
// <a href="#" class="FOIL-button-regular-no-shadow"></a>
function naviButtons() {
        print('<form method="post">');
                print('<input type="submit" name="Shutdown" class="FOIL-button-regular-no-shadow" value="Shutdown" />');
                print('<input type="submit" name="Restart" class="FOIL-button-regular-no-shadow" value="Restart" />');
                print('<input type="submit" name="Sleep" class="FOIL-button-regular-no-shadow" value="Sleep" />');
                print('<a href="./System_Files/upgrade.php" class="FOIL-button-regular-no-shadow">hello world</a>');
                print('</form>');
        print('</div>');

        if(isset($_POST['Shutdown'])) {
                shell_exec('systemctl shutdown');
        }
        if(isset($_POST['Restart'])) {
                shell_exec('systemctl reboot');
        }
        if(isset($_POST['Sleep'])) {
                shell_exec('systemctl suspend');
        }
}
naviButtons();


?>