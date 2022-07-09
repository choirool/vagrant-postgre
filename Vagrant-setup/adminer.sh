#!/bin/sh -e

sudo apt install -y nginx php7.4-fpm php7.4-pgsql
sudo cp /vagrant_data/Vagrant-setup/nginx.conf /etc/nginx/sites-enabled/default
sudo cp /vagrant_data/Vagrant-setup/adminer.php /var/www/html/index.php
sudo nginx -t
sudo systemctl reload nginx
sudo systemctl restart nginx
