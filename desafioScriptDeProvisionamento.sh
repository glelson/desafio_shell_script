#!/bin/bash

yum update -y
yum upgrade -y
yum install httpd -y
yum install unzip -y
yum install wget -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
