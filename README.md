# Moodle Upgrade Bash Script
This simple Bash script will upgrade Moodle to the 3.4 stable version along with upgrading PHP to PHP7.1

## Main Phases the script will automate:
1. Activates Moodle Maintenance Mode 
2. Starts the process of upgrading PHP
   1. Stops Apache webserver
   2. Installs PHP 7.1 core and relevant dependencies
   3. Enables PHP7.1 mode the webserver
   4. Starts Aache webserver
3. Starts Moodle upgrade to 3.4 Stable version
   1. Fetches the latest Moodle upgrades from the master GitHub repository
   2. Tracks Moodle 3.4 Stable branch
   3. Checkout Moodle 3.4 Stable branch
   4. Starts the upgrade process
4. Purges Moodle cache
5. Disables Moodle Maintenance Mode
