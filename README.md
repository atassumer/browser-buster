browser-buster
==============

A tornado(python) webservice using filapi with javascript to check files of your choice.

In this project (also my university project) i will show a good use of fileapi. A simple tornado webservice will provide a surface with multiple upload (also for folders etc.). However files or folders will not be uploaded only their md5 hashes. The site will only check these hashes in a mysql database and sends back feedbacks. I also use javascript for better experience with ajax and json.

Currently only works with latest Chrome (fileapi needed).

Dependancies:
-python 2.7.5
-tornado
-mysql-connector
-a browser with fileapi

I use the CryptoJS v3.1.2 for md5 hashes and CSSTableGenerator in my javascripts.

This project is still in test phase so there are many flows and errors. Any kind of suggestions and feedbacks are welcome.
(And sorry for my bad english)

wolo
