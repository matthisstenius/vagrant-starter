vagrant starter
===========

A starter for vagrant WM's inspired by laravel/homestead

## Installs

### Base Provisioner
* Ubuntu 12.10
* Nginx
* Vim
* Curl

### Extra Provisioners

After the base is installed extra provisioners are installed. As default
PHP and MySQL are installed.

If you don't want/need any of these provisioners just comment them out in the Vagrantfile.

You can easly add your own proisioners either by adding them to the other.sh file or by creating
your own bash file which you than include in the Vagrantfile.

## Installation

1 Clone the repo and add the document root and servername to sites.yaml.

2 Run `vagrant up`

3 Add the servername to your hosts file.


### Note

If vagrant finds any conflicts with the default ports (8000, 2223) while configuring the ports it will automaticly change them. Take notice of the ports
when running vagrant up.
