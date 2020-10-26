#! /usr/bin/env bash

set -ex


cd /vagrant/wordpress/wp-content/themes

#remove built in themes
#rm -rf twentynineteen twentyseventeen twentytwenty


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
sudo mysql -u wordpress -ppassword wordpress</vagrant/data/ocdla.sql


#copy site-example.json to site.json
cd vagrant/wordpress/wp-content/themes/wireframe

cp site-example.json site.json



