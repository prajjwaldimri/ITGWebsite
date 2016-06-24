Nethogs
=======

[![Build Status](https://travis-ci.org/raboof/nethogs.svg?branch=master)](https://travis-ci.org/raboof/nethogs)

http://nethogs.sf.net

Introduction
------------

NetHogs is a small 'net top' tool. Instead of breaking the traffic down per protocol or per subnet, like most tools do, it groups bandwidth by process. NetHogs does not rely on a special kernel module to be loaded. If there's suddenly a lot of network traffic, you can fire up NetHogs and immediately see which PID is causing this. This makes it easy to indentify programs that have gone wild and are suddenly taking up your bandwidth.

Since NetHogs heavily relies on /proc, it currently runs on Linux only. 

Status
------

Nethogs is a mature piece of software included in most Linux distributions.

Ideas for features, as well as open bugs, can be found at https://github.com/raboof/nethogs/issues

Coding standards
----------------

Can anyone recommend a sensible set? :)

For now:
* '{' 
 * on a new line for function definitions
 * on a new line for enums
 * on the same line for conditionals/loops 
 * omitted when possible
* use tab for indentation
* use doxygen/javadoc-style comments.
 * for multiline doxygen docs, add a newline after '/**'
* case
 * classes: camelcased, start uppercase
 * enums: camelcased, start uppercase
 * functions: camelcased, start lowercase
 * local variables: camelcased, start lowercase

License
-------

Copyright 2004-2005, 2008, 2010-2012, 2015 Arnout Engelen <arnouten@bzzt.net>
License: nethogs may be redistributed under the terms of the GPLv2 or any 
later version. See the COPYING file for the license text.
