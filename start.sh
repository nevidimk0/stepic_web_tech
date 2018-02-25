#!/bin/bash
apt-get update
apt-get install -y nginx
mkdir -p /home/box/web
mkdir -p /home/box/web/public
mkdir -p /home/box/web/public/img
mkdir -p /home/box/web/public/css
mkdir -p /home/box/web/public/js
mkdir -p /home/box/web/uploads
mkdir -p /home/box/web/etc
cp nginx.conf /home/box/web/etc/nginx.conf
ln /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/stepic.conf
rm -rf /etc/nginx/sites-available/default
rm -rf /etc/nginx/sites-enabled/default
service nginx restart
