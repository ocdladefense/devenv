# devenv
Vagrant development environment

Repository containing Vagrant files and other development scripts.

Initial Project Setup

1. Download vagrant
2. Download virtualbox
3. Install both
4. Run vagrant up
        - Edit host name
        - Edit IP
        - Edit Host file in Win32/Drivers
5. Change host file to correspond with the virtualbox
6. Install wordpress
7. Add composer file to wordpress directory
8. Run vagrant ssh on root directory in powershell
9. Run composer update on wordpress directory to add plugins and the         wireframe repo to file directory
10. Create a child theme folder with Functions.php and Styles.css in it,      in wp-content/themes
11. Write header of styles.css to connect to the wireframe theme
12. Enque the styles in functions.php
13. Activate Child theme
14. Install plugins downloaded from the composer file to the child theme
15. Import content if rebuilding a site
        - Get content from xml file
        - Import/Export menus


