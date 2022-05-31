<!-- About system 
Description: Shows the Computer Information 

-->

<link rel="stylesheet" href="./src/Custom_Tags.css" type="text/css">
<link rel="stylesheet" href="./src/position-text.css" type="text/css">
<link rel="stylesheet" href="./src/UI.css" type="text/css">

<body class="layout">
<fontsize30> About System </fontsize30>
<div id="demo"></div>

<script>
var txt = "";
txt += "<p>Browser CodeName: " + navigator.appCodeName + "</p>";
txt += "<p>Browser Name: " + navigator.appName + "</p>";
txt += "<p>Browser Version: " + navigator.appVersion + "</p>";
txt += "<p>Cookies Enabled: " + navigator.cookieEnabled + "</p>";
txt += "<p>Browser Language: " + navigator.language + "</p>";
txt += "<p>Browser Online: " + navigator.onLine + "</p>";
txt += "<p>Platform: " + navigator.platform + "</p>";
txt += "<p>User-agent header: " + navigator.userAgent + "</p>";

document.getElementById("demo").innerHTML = txt;
</script>

</body>