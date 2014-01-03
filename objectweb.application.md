<link rel="stylesheet" type="text/css" href="style.css" />

ObjectWeb: OOP Python Web Framework
===================================

Introduction
------------
ObjectWeb.application is the starting point for the library. This defines the Application class needed define pages on the site.

Classes
-------
ObjectWeb.application defines one class.

### <var>class</var> Application(<var>urlmap={}</var>, <var>debug=False</var>)
**@param** `urlmap`: `*dict*` This is a normal python dict where it's keys are python re strings that map to python objects that have at least a function `GET(self)`, `POST(self)`, `PUT(self)`, or `DELETE(self)` that handles the requests. The re strings can capture sections of the urls by enclosing those sections in parentheses (). Those sections will be passed as arguments to the handler method function.`

Example:

	import ObjectWeb
	
	class MyPage(object):
		def GET(self):
			return "Hello World!"
	
	app = ObjectWeb.Application({
		r'/': MyPage,
	})
In this example, when the application receives a GET request to the path `"/"`, would run `MyPage().GET()`, sending "Hello World!" to the browser.

Another Example:

	import ObjectWeb
	
	class MyPage(object):
		def GET(self, name):
			return "Hello "+str(name)+"!"
	
	app = ObjectWeb.Application({
		r'/([A-Za-z0-9_]+/?)': MyPage,
	})
In this example, when the application receives a GET request to the path `/Abram`, because of the parentheses would run `MyPage().GET("Abram")` thus sending "Hello Abram!" to the browser.

**@param** `debug`: `*bool*` This tells ObjectWeb whether or not to use the debugging facility.

Application Public Methods
--------------------------

### <var>method</var> getwsgi(<var>self</var>, <var>*middleware</var>)
Creates a WSGI function that can be passed to a webserver run run. It will add all *middleware to the function as well.

**@param** `*middleware`: `*object*` Python WSGI Middleware-compliant objects that passed as *args that will be applied as middleware to the application.

**@return**: a function that is callable by an external WSGI Server such as Apache + mod_wsgi.

### <var>method</var> getcgi(<var>self</var>, <var>*middleware</var>)
Creates a CGI run and producing CGI compatibility. It will add all *middleware to the output as well.

**@param** `*middleware`: `*object*` Python WSGI Middleware-compliant objects that passed as *args that will be applied as middleware to the application.

**@return**: returns CGI compliant output.

### <var>method</var> run(<var>self</var>, <var>host="localhost"</var>, <var>port=8080</var>, <var>*middleware</var>)
Creates a development server binded to `host` and `port` and producing the output. It will add all *middleware to the output as well.

**@param** `host`: `*str*` The host that the run should be bound to.

**@param** `port`: `*int*` The port that the run should be bound to.

**@param** `*middleware`: `*object*` Python WSGI Middleware-compliant objects that passed as *args that will be applied as middleware to the application.

**@return**: `None`
