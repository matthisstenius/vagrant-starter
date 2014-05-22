#!/usr/bin/env bash

echo "--- Installning MySQL ---"

echo "--- Updating packages list ---"
sudo apt-get update

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

echo "--- Installing MySQL ---"
sudo apt-get install -y mysql-server-5.5
