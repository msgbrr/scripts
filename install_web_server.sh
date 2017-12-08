#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install php5 apache2 curl php5-curl php5-gd  mysql-server -y
apt-get install unzip php5-mysql -y
apt-get install libapache2-mod-php5 php5 php5-common php5-curl php5-dev php5-gd php5-idn php-pear php5-imagick php5-imap php5-json php5-mcrypt php5-memcache php5-mhash php5-ming php5-mysql php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl -y
apt-get install php-apc -y
wget https://files.phpmyadmin.net/phpMyAdmin/4.7.6/phpMyAdmin-4.7.6-all-languages.zip
unzip phpMyAdmin-4.7.6-all-languages.zip
mv /tmp/phpMyAdmin-4.7.6-all-languages /var/www/phpmyadmin

service apache2 restart

echo "Installation terminée"
