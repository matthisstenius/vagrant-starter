#!/usr/bin/env bash

echo "--- Install NGINX and base packages ---"

sudo apt-get update

echo "--- Base packages ---"
sudo apt-get install -y python-software-properties software-properties-common vim curl

echo "--- Add latest Nginx ---"
sudo add-apt-repository ppa:nginx/stable

sudo apt-get update

echo "--- Nginx ---"
sudo apt-get install -y nginx

echo "--- Starta Nginx ---"
sudo service nginx start
