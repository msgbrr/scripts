#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install unzip php5 apache2 curl php7.0-curl php7.0-gd  mysql-server -y
apt-get install unzip php7.0-gd-mysql -y
apt-get install libapache2-mod-php7.0-gd php7.0-gd php7.0-gd-common php7.0-gd-curl php7.0-gd-dev php7.0-gd-gd php7.0-gd-idn php-pear php5-imagick php5-imap php5-json php5-mcrypt php5-memcache php5-mhash php5-ming php5-mysql php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl -y
apt-get install php-apc -y
wget https://files.phpmyadmin.net/phpMyAdmin/4.7.6/phpMyAdmin-4.7.6-all-languages.zip
unzip phpMyAdmin-4.7.6-all-languages.zip
mv /tmp/phpMyAdmin-4.7.6-all-languages /var/www/phpmyadmin

service apache2 restart

echo "Installation terminée"
