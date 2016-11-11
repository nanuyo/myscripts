#!/bin/sh

sudo apt-get update 
sudo apt-get -y install apache2
sudo apt-get -y install php libapache2-mod-php php-mcrypt php-mysql
#sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt php5-mysql
sudo apt-get -y install phpmyadmin php-mbstring php-gettext
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo sed -i '$ a Include /etc/phpmyadmin/apache.conf' /etc/apache2/apache2.conf

sudo apt-get -y install mariadb-server
sudo apt-get -y install sqlite3 libsqlite3-dev
#sudo apt-get -y install php5-sqlite
sudo apt-get -y install php7.0-sqlite

sudo a2enmod cgi 

sudo service apache2 enable
sudo service apache2 start


/etc/init.d/apache2 restart


sudo service apache2 status


