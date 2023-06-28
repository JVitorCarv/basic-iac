#!/bin/bash

echo "Updating server"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y

echo "Installing webapp"
apt-get install unzip -y
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -r * /var/www/html/

