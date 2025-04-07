#!/bin/bash


     sudo apt-get install -y apache2 wget vim unzip
     sudo mkdir -p /tmp/site
      cd /tmp/site
      sudo wget https://www.tooplate.com/zip-templates/2133_moso_interior.zip
      sudo unzip -o 2133_moso_interior.zip
      sudo cp -r 2133_moso_interior/* /var/www/html/
      sudo systemctl restart apache2
      cd /tmp/
      sudo rm -rf /tmp/site
echo
echo "###########################"
echo "Server & Gets codes ready"
echo "###########################"