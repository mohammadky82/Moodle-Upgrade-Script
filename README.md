# Moodle Upgrade Bash Script
This simple Bash script will upgrade Moodle to the 3.4 stable version along with upgrading PHP to PHP7.1

## Main Phases the script will automate:
1. Activate Moodle Maintenance Mode 
2. Start the process of upgrading PHP
   1. Stops Apache webserver
   2. Install PHP 7.1 core and relevant dependencies
   3. Enable PHP7.1 mode the webserver
   * Starts Aache webserver
3. Start Moodle upgrade to 3.4 Stable version
   1. Fetch the latest Moodle upgrades from the master GitHub repository
   2. Track Moodle 3.4 Stable branch
   3. Checkout Moodle 3.4 Stable branch
   4. Start the upgrade process
4. Purge Moodle cache
5. Disable Moodle Maintenance Mode
