#!/bin/bash
set -xe
{
sudo apt update && sudo apt install -y apache2
sudo rm -rf /var/www/html*
#sudo mv apache2.conf /etc/apache2
sudo mv demo-app/app/* /var/www/html
sudo systemctl restart apache2.service && sudo systemctl status apache2.service | xargs
} &> provision.logs

