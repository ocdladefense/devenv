# ocdladefense/vagrant-environment
Vagrant development environment.

## Installation


## WORKFLOW
* Clone this repo
* Install WordPress (into this repo directory)
    * Optionally require WordPress in composer.json file
* Run composer install
    * Should install plugins
    * Should install wireframe theme
    * Optionally installs child theme as well
  

@TODO
COMPOSER: REQUIRE
- composer/installers
- custom-sidebars
- my-social-widget
- wordpress-importer
- wp-packagist/wireframe (clickpdx/wireframe in GitHub)


COMPOSER: REQUIRE-DEV
- php
- phpunit
- wpackagist-plugin/fg-drupal-to-wp




Initial Project Setup

1. Download vagrant
2. Download virtualbox
3. Install both
4. Run vagrant up
5. Edit host name
6. Edit IP
7. Edit Host file in Win32/Drivers
8. Change host file to correspond with the virtualbox
9. Install wordpress
10. Add composer file to wordpress directory
11. Run vagrant ssh on root directory in powershell
12. Run composer update on wordpress directory to add plugins and the         wireframe repo to file directory
13. Create a child theme folder with Functions.php and Styles.css in it,      in wp-content/themes
14. Write header of styles.css to connect to the wireframe theme
15. Enque the styles in functions.php
16. Activate Child theme
17. Install plugins downloaded from the composer file to the child theme
18. Import content if rebuilding a site
19. Get content from xml file
20. Import/Export menus


