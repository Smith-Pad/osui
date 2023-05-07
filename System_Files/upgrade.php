<?php
        $includeUI = include('system.global.include.ui.php');
        $includeFont = include('system.global.include.font.styles.php');
        $includeBanner = include('system.global.include.banner.php');

	$one = shell_exec('
        pip3 install flask
	pip3 install speechrecognition
	pip3 install sh
        pip3 install cefpython3
        pip3 install bark
        pip3 install numpy
        pip3 install scipy
        pip3 install tensorflow
        pip3 install QT-PyQt-PySide-Custom-Widgets
        pip3 install pyside2
        pip3 install cairo');
?>

