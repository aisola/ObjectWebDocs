<link rel="stylesheet" type="text/css" href="style.css" />

ObjectWeb: OOP Python Web Framework
===================================

Introduction
------------
ObjectWeb.webapi defines many utilities and useful helper functions.

This module also holds the `ObjectWeb.context` (AKA Application Environment).

Functions
---------

### <var>function</var> cookies()
Gathers all recieved Cookies.

**@return**: Dictionary of (cookie_name, cookie_value) or None if none exist.

### <var>function</var> get(<var>varname</var>, <var>default=None</var>)
Returns the given HTTP parameter.

**@param** `varname`: `*str*` The name of the HTTP parameter that should be returned.

**@param** `default`: `*object*` The object that should be returned if the HTTP parameter does not exist.

**@return**: The value of the HTTP parameter OR if provided, the value of default OR if default is not provided, `None`.

### <var>function</var> getall(**kwargs)
Returns the given HTTP parameter.

**@param** `**kwargs`: The "name = default" pairs of the HTTP parameters that should be returned.

**@return**: The list of values of the HTTP parameter OR the value of default.

### <var>function</var> getheaders()
Helper function that returns headers.

**@return**: Returns all headers sent from the client.

### <var>function</var> header(<var>field</var>, <val>value</var>)
Sets a header to be sent back to the client.

**@param** `field`: `*str*` The header name.

**@param** `value`: `*str*` The header value.

**@return**: None

### <var>function</var> redirect(<var>location</var>)
Sets the status to return to the client as 301 Moved Permanently.

**@param** `location`: `*str*` The location to redirect to.

**@return**: `None`

### <var>function</var> seeother(<var>location</var>)
Sets the status to return to the client as 303 See Other.

**@param** `location`: `*str*` The location to redirect to.

**@return**: `None`

### <var>function</var> setcookie(<var>name</var>, <var>value</var>, <var>expires=''</var>, <var>domain=None</var>, <var>secure=False</var>, <var>httponly=False</var>, <var>path=None</var>)
Sets an HTTP Cookie.

**@param** `name`: `*str*` The Cookie name or identifier.
   
**@param** `value`: `*str*` The Cookie value.
       
**@param** `expires`: `*str*` The datetime that the Cookie should no longer be valid. Default: `''`

**@param** `domain`: `*str*` The domain that the Cookie can be sent to. Default: `None`

**@param** `secure`: `*bool*` If the Cookie should be secure. Default: `None`

**@param** `httponly`: `*bool*` IF the Cookie should be accessible solely via HTTP. Default: `False`

**@param** `path`: `*str*` The path that the Cookie can be sent to. Default: `None`
           
**@return**: `None`

### <var>function</var> status(<var>stat</var>)
Sets the status to return to the client.

**@param** `stat`: `*str*` The response that will be returned to the client.

**@return**: `None`

