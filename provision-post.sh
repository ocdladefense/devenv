#!/usr/bin/env bash

set -ex

cp /vagrant/composer.json /vagrant/wordpress/composer.json

sudo composer self-update




cd /vagrant/wordpress/wp-content/themes



#set up known hosts for github
ssh-keyscan github.com >> ~/.ssh/known_hosts


FILE=wireframe
if [ ! -f "$FILE" ]; then
    #clone the wireframe theme
    git clone https://github.com/ocdladefense/wp-theme-wireframe.git
    mv wp-theme-wireframe wireframe 
fi

FILE=ocdla
if [ ! -f "$FILE" ]; then
    #clone the ocdla child theme
    git clone https://github.com/ocdladefense/wp-theme-ocdla.git
    mv wp-theme-ocdla ocdla
fi

#go back to root
cd /

#install recent php version
sudo apt-get update

sudo apt-get install -y "php7.4"

sudo apt-get install "php7.4-mysql"

sudo a2dismod php7.0

sudo a2enmod php7.4

sudo service apache2 restart

#import sql file
#May have to Update database the prompt url is:
#http://dev.ocdla.org/wp-admin/upgrade.php?_wp_http_referer=%2Fwp-admin%2F
sudo mysql -u wordpress -ppassword wordpress</vagrant/data/ocdla.sql


#copy site-example.json to site.json
cp /vagrant/wp-cli/wireframe-site.json /vagrant/wordpress/wp-content/themes/wireframe/site.json

cp /vagrant/wp-cli/ocdla-site.json /vagrant/wordpress/wp-content/themes/ocdla/site.json

cd /vagrant/wordpress
composer update


