echo "********************************************************";
echo "Moodle Upgrade Started...";
echo "********************************************************";
echo "";
echo "********************************************************";
echo "Activating Moodle Maintenance Mode...";
echo "********************************************************";
echo "";
sudo php /var/www/moodle/admin/cli/maintenance.php --enable
echo "********************************************************";
echo "Maintenance Mode activated!";
echo "********************************************************";
echo "";
echo "********************************************************";
echo "Upgrading PHP... Please wait!";
echo "********************************************************";
sudo service apache2 stop
sudo apt-get install -y php7.1-zip php7.1-dev php7.1-ldap php7.1-readline php7.1-xsl php7.1 php7.1-enchant php7.1-mbstring php7.1-recode php7.1-zip php7.1-bcmath php7.1-fpm php7.1-mcrypt php7.1-snmp php7.1-bz2 php7.1-gd php7.1-mysql php7.1-soap php7.1-cgi php7.1-gmp php7.1-odbc php7.1-sqlite3 php7.1-cli php7.1-imap php7.1-opcache php7.1-sybase php7.1-common php7.1-interbase php7.1-pgsql php7.1-tidy php7.1-curl php7.1-intl php7.1-phpdbg php7.1-xml php7.1-dba php7.1-json php7.1-pspell php7.1-xmlrpc
sudo a2enconf php7.1-fpm
sudo service apache2 start
echo "********************************************************";
echo "PHP upgrade is completed! Current PHP version : `php -v`";
echo "********************************************************";
echo "";
echo "********************************************************";
echo "Upgrading Moodle Core started...";
echo "********************************************************";
cd /var/www/moodle
sudo git fetch
sudo git branch --track MOODLE_34_STABLE origin/MOODLE_34_STABLE
sudo git checkout MOODLE_34_STABLE
sudo php admin/cli/upgrade.php --non-interactive
sudo chown www-data:www-data -R /var/www/moodle/report/coursesize
echo "";
echo "********************************************************";
echo "Purging cached files...";
echo "********************************************************";
echo "";
sudo php /var/www/moodle/admin/cli/purge_caches.php
echo "********************************************************";
echo "Disabling Moodle Maintenance Mode...";
echo "********************************************************";
echo "";
sudo php /var/www/moodle/admin/cli/maintenance.php --disable
echo "********************************************************";
echo "Maintenance Mode disabled!";
echo "********************************************************";
echo "********************************************************";
echo "Moodle Upgrade Completed! Enjoy your new Moodle!";
echo "********************************************************";