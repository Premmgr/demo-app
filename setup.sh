#!/bin/bash
set -xe
{
sudo apt update
sudo apt install -y apache2
cd /var/www/html && ls | xargs rm -rf
#sudo mv apache2.conf /etc/apache2
sudo mv demo-app/app/* /var/www/html
sudo systemctl restart apache2.service && sudo systemctl status apache2.service | xargs
} &> provision.logs

