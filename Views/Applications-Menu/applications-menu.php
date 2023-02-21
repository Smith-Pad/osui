<?php
# This script displays a list of applications that are suitable to be shown in the current desktop environment.

# The directory where the .desktop files are stored
$applications_dir = '/usr/share/osui-applications-list';

# Get a list of all .desktop files in the directory
$applications = array_filter(scandir($applications_dir), function ($file) {
        # Only return filenames that end in '.desktop'
        return substr($file, -8) === '.desktop';
});

# Loop through each .desktop file
foreach ($applications as $application) {
        # Read the contents of the .desktop file
        $contents = file_get_contents("$applications_dir/$application");

        # Extract the name of the application
        preg_match('/^Name=(.+)$/m', $contents, $matches);
        $name = $matches[1];

        # Extract the command to launch the application
        preg_match('/^Exec=(.+)$/m', $contents, $matches);
        $exec = $matches[1];

        # Extract the value of the OnlyShow In field
        preg_match('/^OnlyShow In=(.+)$/m', $contents, $matches);
        $show_in = isset($matches[1]) ? $matches[1] : '';

        # Check if the application should be shown in the current desktop environment
        if (empty($show_in) || strpos($show_in, $current_desktop_environment) !== false) {
                # If the application should be shown, display it as a link
                echo "<a class='FOIL-button-small' style='background-color:rgb(165, 148, 103); color: black;' href='./open_application.php?command=$exec' >$name</a>";
        }
}                     
?>