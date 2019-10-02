#!/bin/bash

# Create an XML file with the Apache2 <VirtualHost> directives.
# php create-virtual-host "wc19" "wc19.ocdla.org" > ${SITE_NAME}.conf
# 

# Create an Apache2 <VirtualHost> directive
sudo cp ~/${site-name}.conf /etc/apache2/site-available/{$SITE_NAME}.conf


# Create the DOCUMENT_ROOT
mkdir /var/www/{$SITE_NAME}
cd /var/www/{$SITE_NAME}
chmod 775 /var/www/{$SITE_NAME}
chgrp www-data /var/www/{$SITE_NAME}
chmod g+w /var/www/{$SITE_NAME}


# ACL on directory
setfacl -d -m g::rwx /var/www/{$SITE_NAME}




# Pull the "devenv" repo
git status
git init
git remote add origin {$REPOSITORY_NAME}
git branch --set-upstream-to=origin/master
git pull origin master

# Set again, just in case.
git branch --set-upstream-to=origin/master

# Git - verify new remote


# Install dependencies
composer install --dry-run

# Composer - update composer.lock
composer update --dry-run



# Download and install WordPress

# Create WordPress database in MySQL

# 
