<?php
// Brightness High Trigger
// This script is compatible cross platform


$macOS_checker = shell_exec("uname -s");
$linuxlike_checker = shell_exec("uname -s");

if (trim($macOS_checker) === "Darwin") {
        system('osascript -e "tell application \"System Events\" to key code 144"');
        system('osascript -e "tell application \"System Events\" to key code 144"');
} 


if (trim($linuxlike_checker) === "Linux") {
        echo "later on";
} 

?>