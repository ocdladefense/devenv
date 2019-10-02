#!/bin/bash

# Create an XML file with the Apache2 <VirtualHost> directives.
# php create-virtual-host "wc19" "wc19.ocdla.org" > ${SITE_NAME}.conf
# 
WP_INSTALL_URL = "https://wordpress.org/latest.tar.gz"
# Create an Apache2 <VirtualHost> directive
sudo cp ~/${site-name}.conf /etc/apache2/site-available/{$SITE_NAME}.conf
wget WP_INSTALL_URL ~/wp.tar.gz
tar -xvzf ~/wp.tar.gz > /var/www/{$SITE_NAME}/wordpress

# Create the DOCUMENT_ROOT
mkdir /var/www/{$SITE_NAME}
cd /var/www/{$SITE_NAME}
chmod 775 /var/www/{$SITE_NAME}
chgrp www-data /var/www/{$SITE_NAME}
chmod g+w /var/www/{$SITE_NAME}


# ACL on directory
setfacl -d -m g::rwx /var/www/{$SITE_NAME}



# Extract WordPress files to DOCUMENT_ROOT
tar -xvzf latest.tar.gz -C /var/www/wc19




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
