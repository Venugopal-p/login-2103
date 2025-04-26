#!/bin/bash

echo "update system"
sudo apt update -y 

echo "installing the utilities"
sudo apt install zip unzip -y 

echo "installing web server NGINX"
sudo apt install nginx -y 

echo "cleanup the document root"
sudo rm -rf /var/www/html/*

echo "deploy the login app " 
sudo git clone https://github.com/Venugopal-p/login-2103.git /var/www/html/

echo " Application deployed - browse the application "
