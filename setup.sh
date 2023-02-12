#!/bin/bash
set -xe
{
sudo apt update
$(which nginx) || sudo apt install nginx -y
cd /var/www/html && ls | xargs sudo rm -rf && cd
#sudo mv apache2.conf /etc/apache2
sudo mv ~/demo-app/app/* /var/www/html
sudo systemctl restart nginx.service && sudo systemctl status nginx.service | xargs
} &> provision.logs
