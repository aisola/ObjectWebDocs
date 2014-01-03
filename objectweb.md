<link rel="stylesheet" type="text/css" href="style.css" />

ObjectWeb: OOP Python Web Framework
===================================

Introduction
------------
ObjectWeb is a fast, minimalist, pure-Python web framework that relies on no 
third party libraries. It is designed around using Python as it was originally 
intended to be used: as an Object Oriented Programming language. ObjectWeb 
supports the CGI and WSGI standards and has a built-in development server.

The ObjectWeb Framework has only been tested and developed with Python 2.7.

**ObjectWeb is BETA SOFTWARE and should be treated as such. Please use with caution and care.**

Author/Maintainer
-----------------
ObjectWeb was created and is actively maintained by [Abram C. Isola](http://abram.isola.mn/). ([abram@isola.mn](mailto:abram@isola.mn))

License
-------
Object Web is licensed under the GNU Lesser General Public License v3.

    ObjectWeb
    Copyright (C) 2013, Abram C. Isola.

    This library is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as 
    published by the Free Software Foundation, either version 3 of the 
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.
	
    You should have received a copy of the GNU Lesser General Public 
    License along with this library.  If not, see 
    <http://www.gnu.org/licenses/>.

Installation
------------
The source code for ObjectWeb is hosted on github.

Option One for installing:

    git clone https://github.com/aisola/ObjectWeb.git
    cd ObjectWeb
    sudo python setup.py install

Reference
---------
The ObjectWeb API is documented below.

+ [ObjectWeb Application (Module: ObjectWeb.application)](objectweb.application.html)
+ [ObjectWeb Form API (Module: ObjectWeb.forms)](objectweb.forms.html)
+ [ObjectWeb API (Module: ObjectWeb.webapi)](objectweb.webapi.html)

Otherwise, you could download the [latest release](https://github.com/aisola/ObjectWeb/releases/latest) from GitHub, unpack the archive then run: `sudo python setup.py install`

