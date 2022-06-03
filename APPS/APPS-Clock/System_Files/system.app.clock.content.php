<!----------------------------------------------------------------
    system.app.clock.content.php

    This file is used to show the back button on the mid-top left 
    corner. 
---------------------------------------------------------------->

<div class="center">
<fontsize200> 
    <fontcolorWHITE>

    <div id="senalClock"></div>

    <script type="text/javascript">
        function GetClock() {
            var d = new Date();
            var senalhour = d.getHours(),
                senalmin = d.getMinutes();
            if (senalmin <= 9) senalmin = "0" + senalmin

            var senal_clock_text = "" + senalhour + ":" + senalmin + "";
            document.getElementById('senalClock').innerHTML = senal_clock_text;
        }

        GetClock();
        setInterval(GetClock, 1000);
    </script>

</fontsize200>
</fontcolorWHITE>

</div>