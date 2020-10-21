# ocdladefense/vagrant-environment
Use Vagrant to download and configure a LAMP stack for WordPress development.  The environment is downloaded into a guest virtual machine on your local computer.

## Installation
After installing this repository and running <code>vagrant up</code> use the <vagrant ssh> command to login to the guest machine.  The guest machine's shared folder, <code>/vagrant</code>, should reflect all of the files in this repository.
   
Before installing this repository, download the Vagrant VM environment at https://www.vagrantup.com/downloads.html.  Once installed, you can use Vagrant command line tools - especially <code>vagrant up</code> -- to complete the installation.  The <code>vagrant up</code> command retrieves configuration settings from the Vagrantfile to download Virtual Box; then Composer can be used to complete the WordPress installation.
   
### Vagrant configuration
Configurations are listed as YML files.  Default.yml is responsible for configuring environment variables; various playbooks are responsible for installing and configuring additional software.
   
Other programs installed as part of this environment are:
-  Apache2, The Apache web server.
-  MySQL, The MySQL database server.
-  PHP, The PHP CLI and Apache2 modules.
-  WordPress, The popular open-source CMS/blog software.
-  Composer, The PHP package manager.


### Installation - Guest/Host
Vagrant and the <code>vagrant up</code> command will install a guest machine on your local computer (the host machine.)  Guest and host machines communicate through one or more shared folders - typically <code>/vagrant</code> folder or any additional shared folders specified in the Vagrantfile.
   
### Installation - Apache
   
   
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


