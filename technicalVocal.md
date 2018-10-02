what is a closure and why would you use one?

Normally you access a variable once the function has returned

function notaclosure() {
  const shortlivedvariable = 'im here for a while';
  return shortlivedvariable;
}


notAClosure(); // returns "I'm only here for a little while"

notice nothing has access to the variable const after it is run;

function aClosure() {
const longLivedVariable = "I'm here for a long time";
  const innerFunction = function inner() {
    return longLivedVariable;
  };
  return innerFunction;
}

returns a reference to the innerFunction;

this way closure can be used to save state;

what is ajax ?

AJAX = Asynchronous JavaScript And XML.
AJAX just uses a combination of:
A browser built-in XMLHttpRequest object (to request data from a web server)
JavaScript and HTML DOM (to display or use the data)
- Ajax isnt a technology, its several. coming together, in powerful ways
Update a web page without reloading the page
Request data from a server - after the page has loaded
Receive data from a server - after the page has loaded
Send data to a server - in the background
 - AJAX incorporates XHTML and CSS
 - the DOM
 - JavaScript
 - XMLhttpRequest
 - XML and XSLT


Explain an Ajax request:

 Simply put, the use of AJAX is to use javaScript to send HTTP Requests to the server without reloading the page.

Its an API to create asynchronous web applications.

JavaScript and the XMLHttpRequest object provide the method for exchanging data asynchronously between the browser and the server.
A user interaction in the browser triggers the event, such as a button click
The AJAX call fires. This creates and AJAX request, browsers use the XMLHttpRequest object. When the server responds to the browser’s request, the same XMLHttpRequest object will process the result.
3. The server-side script receives the input from JavaScript, and processes the data.
4. After the data is processed, the script sends the data back to the original client-side page that made the request via XML
5. Once the data is received, a second JavaScript callback function, is called this function captures the data, and updates the web page accordingly.

Note: Newer technologies have slowly been replacing the XML in AJAX with JSON. The reason being, XML is a lot stricter than HTML, thus having larger file sizes, and harder to extract the data that is returned. JSON is less verbose, has proven to be more efficient, and working with data is much easier.

what is a restful API?

An API is a contract between one software and another piece of software, its a structured request and response.

API is like an waiter between two  running software.

Well, Rest is representational state transfer, architectural style for designing network applications.

It is based off a stateless, client-server protocol, almost always HTTP

restful and rest API are essentially the same thing

HTTP Methods: get, post, delete, put

endpoints is an URL/URI that the HTTP requests are sent to

whats the difference between HTTP and HTTPs?

HTTP stands for Hypertext Transfer Protocol. This protocol allows communication between different systems. When you type any web address, your browser acts as a client and the computer act as a server. HTTP uses TCP (Transmission Control Protocol), generally over port 80, to send and receive data packets over the web.

How it functions?

The client sends a request message to a HTTP server which hosts a website, the server then replies with the response message that contains completion status information, such as “HTTP/1.1 200 OK”.

HTTPS stands for Hypertext Transfer Protocol Secure. This protocol allows a secure communication between different systems. It encrypts all data during the communication. HTTPS also uses TCP (Transmission Control Protocol) to send and receive data packets, but it does so over port 443, within a connection encrypted by Transport Layer Security (TLS).

migrating over to HTTPS requires a SSL certificate
