<?php
// Audio Volume High Trigger
// This script is compatible cross platform


$macOS_checker = shell_exec("uname -s");
$linuxlike_checker = shell_exec("uname -s");

if (trim($macOS_checker) === "Darwin") {
        system('osascript -e "set volume output volume ((output volume of (get volume settings)) + 10)"');
} 


if (trim($linuxlike_checker) === "Linux") {
        echo "later on";
} 

?>