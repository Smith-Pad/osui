// It selects two elements from the HTML document using their respective id attributes:

// latest: Represents an element where the latest value will be displayed.
// output: Represents an element where a list of output items will be appended.
// It creates an instance of the XMLHttpRequest object, which is used to send an HTTP GET request to a specified URL. The URL is obtained dynamically using the url_for('stream') expression. This is typically used in web frameworks like Flask to generate URLs based on route names.

// It sends the GET request to the specified URL using the send() method of the XMLHttpRequest object.

// It initializes a position variable to keep track of the number of messages that have been handled.

// It defines a function named handleNewData which is responsible for processing the new data received in the response. This function does the following:

// Splits the response text into an array of messages using the newline character (\n) as the separator.
// Iterates over the messages that haven't been handled yet (from position to the second-to-last element).
// Updates the latest element's text content to display the current value.
// Creates a new list item (<li>) element, sets its text content to the current value, and appends it to the output element.
// It defines a variable named timer to store the reference to a timer interval.

// It sets up a timer interval using the setInterval function. This interval executes a callback function repeatedly with a delay of 1000 milliseconds (1 second). The callback function performs the following tasks:

// Calls the handleNewData function to check for new data in the response.
// Checks if the response state is XMLHttpRequest.DONE, indicating that the response has ended.
// If the response has ended, clears the interval timer using clearInterval and sets the latest element's text content to 'Done'.







// Create a variable called latest 
var latest = document.getElementById("latest");


// Create a variable called 