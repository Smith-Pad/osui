<?php
// Audio Volume Mute Trigger
// This script is compatible cross platform


$macOS_checker = shell_exec("uname -s");
$linuxlike_checker = shell_exec("uname -s");

if (trim($macOS_checker) === "Darwin") {
        system('osascript -e "set volume output muted true"');
} 


if (trim($linuxlike_checker) === "Linux") {
        echo "later on";
} 

?>