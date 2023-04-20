<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="src/FOIL-UI.css" type="text/css">
    <link rel="stylesheet" href="src/position-text.css" type="text/css">
    <link rel="stylesheet" href="src/UI-new.css" type="text/css">
    <!-- <link rel="stylesheet" href="src/UI.css" type="text/css" -->
    <link rel="stylesheet" href="src/FOIL-Bar.css" type="text/css">


</head>

<body>
    <div class="FOIL-font-styles sans-serif">
        <div class="status-bar">
            <div class="status-bar-left-column">
                <div class="status-item">
                    <div id="time_service"></div>
                    <script src="src/FOIL-time.js"></script>
                </div>

                <div class="status-item">
                    <a href="http://127.0.0.1:3000/settings_screen" class="osui-button-small">Back</a>
                </div>
            </div>
            <div class="status-bar-right-column">
                <div class="status-bar-item">
                    <button onclick="volume_up()" class="osui-button-small">Volume Up </button>
                    <button onclick="volume_down()" class="osui-button-small">Volume Down </button>
                    <script src="src/hardware-control.js"></script>

                    <script src="src/package-management.js"></script>
                </div>
            </div>
        </div>


        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>





        <FOIL-font-size-60>
            <div id="time_service"></div>
        </FOIL-font-size-60>


        <script src="src/FOIL-time.js"></script>
        <FOIL-font-size-40> Software Update </FOIL-font-size-40>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <center>


            <form method="post">
                <input type="submit" name="UpdatePackages" class="FOIL-button-regular-no-shadow"
                    value="Update Packages" />
            </form>

            <?php

            // When the user presses the update packages button, then in the backend, it will use the polkit to 
            // ask the user to enter an adminstrator password. In the backend, it will use the kitty terminal 
            // to do it. 

            // TODO: 
            // - When an adminstrator puts a password make sudo not remember
		
            if(isset($_POST['UpdatePackages'])) {
                    shell_exec('kitty sudo pacman -Syyu --noconfirm');
            }

            ?>

        </center>
    </div>

</body>

</html>