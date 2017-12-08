#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install unzip php5 apache2 curl php7.0-curl php7.0-gd  mysql-server -y
apt-get install unzip php7.0-gd-mysql -y
apt-get install libapache2-mod-php7.0-gd php7.0-gd php7.0-gd-common php7.0-gd-curl php7.0-gd-dev php7.0-gd-gd php7.0-gd-idn php-pear php7.0-imagick php7.0-imap php7.0-json php7.0-mcrypt php7.0-memcache php7.0-mhash php7.0-ming php7.0-mysql php7.0-ps php7.0-pspell php7.0-recode php7.0-snmp php7.0-sqlite php7.0-tidy php7.0-xmlrpc php7.0-xsl -y
apt-get install php-apc -y
wget https://files.phpmyadmin.net/phpMyAdmin/4.7.6/phpMyAdmin-4.7.6-all-languages.zip
unzip phpMyAdmin-4.7.6-all-languages.zip
mv /tmp/phpMyAdmin-4.7.6-all-languages /var/www/phpmyadmin

service apache2 restart

echo "Installation terminée"
