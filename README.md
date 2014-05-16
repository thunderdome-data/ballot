Oscar Ballot 2014
========================

What is this?
-------------

A PHP and JS tool to display nominees in an event and collect user votes on predicted winners. This iteration was used for the 2014 Oscars.
Demo: http://data.digitalfirstmedia.com/oscarballot14/


Credits
---------
Peggy Bustamante


Assumptions
-----------

* JQuery
* PHP
* MySQL
* Google Doc


What's in here?
---------------

The project contains the following folders and important files:

* ``index.php`` -- main file.
* ``JS`` -- JavaScript files. vote.js has all the action and business logic.
* ``data`` -- Data files, in a CSV, JSON and SQL formats.
* ``incl`` -- PHP file to record user's selections/votes
* ``css`` -- Base css files to get rolling with.

How to use this
----------------

1. Make a copy of these Google docs:
	categories: https://docs.google.com/spreadsheet/ccc?key=0Apk83VzG7OVldHZGckZSY0JYU0w3TWN6QTFmOUlMcUE&usp=drive_web#gid=0
	nominees: https://docs.google.com/spreadsheet/ccc?key=0Apk83VzG7OVldEJJdWRTejlKdkt3WWNkTjMzS2h0UWc&usp=drive_web#gid=0
	
2. upload your data to MySQL tables.
3. Change the SQL calls to your named tables in index.php, nominees.php, print.php, results.php.

Recommendation: remove static data (nominees names, category names etc.) from the database and pull them in from CSV or JSON files. Only use the database for vote count.

License
----------

This code is available under the MIT license. For more information, please see the LICENSE.txt file in this repo.
