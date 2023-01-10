#!/bin/bash
sudo apt update
sudo apt dist-upgrade
sudo apt install nginx -y
sudo systemctl enable nginx
# Input hostname and IP address

echo "<html><body><h1> This is Secondary Server:@ip address</h></body><?html>" > /var/www/html/index.html
systemctl start nginx