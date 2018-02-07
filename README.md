# Moodle-Upgrade-Script
This simple Bash script will upgrade Moodle to the 3.4 stable version along with upgrading PHP to PHP7.1

Main Phases the script will automate: <br />
<br />1 - Activate Moodle Maintenance Mode 
<br />2 - Start the process of upgrading PHP
  <br />2.1 - Stop apache webserver
  <br />2.2 - Install PHP 7.1 core and relevant dependencies
