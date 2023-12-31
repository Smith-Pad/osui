/* FOIL Time.js */
/* FOIL-Time.js displays the 24 hour time, 12 hour time, and the date. */

// Make a Function called "time()".
function time() {

    // Make a Variable called "DATE" to call the "new Date();" object.
    var DATE = new Date();
  
    // Make a Variable for Hours, Minutes, and AM or PM.
    var HOURS = DATE.getHours() , MINUTES = DATE.getMinutes(), INDICATOR;

    // Make a if-else statement for the time.
    if (HOURS == 0) {
      INDICATOR = " am";
      HOURS = 12;
    }

    else if (HOURS < 12) {
      INDICATOR = " am";
    } 

    else if (HOURS == 12) {
      INDICATOR = " pm";
    } 

    else if (HOURS > 12) {
      INDICATOR = " pm"; 
      HOURS -= 12;
    }
  
    if (MINUTES <= 9) MINUTES = "0" + MINUTES;


    // Make a Variable called "PRINT".
    var PRINT = "" + HOURS + ":" + MINUTES + INDICATOR + "";

    // Print out the time.
    document.getElementById("time_service").innerHTML = PRINT;
  }
  
    // Call the "time()" function.
   time();
  
   // Use "SetInterval" to update the clock per 1 second.
   setInterval(time, 1000);


   // Use "console.log" for the "time()" function.
   console.log(time + "*******************IT IS WORKING*******************************");

   // Use "SetInterval" for the console.log for the "time()" function.
   setInterval(console.log(time));