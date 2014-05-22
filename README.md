vagrant starter
===========

A starter for vagrant WM's inspired by laravel/homestead

## Installs

### Base
* Ubuntu 12.10
* Nginx
* Vim
* Curl

## Installation

1 Clone the repo and add the document root and servername to sites.yaml.

2 Run `vagrant up`

3 Add the servername to your hosts file.


### Note

If vagrant finds any conflicts with the default ports (8000, 2223) while configuring the ports it will automaticly change them. Take notice of the ports
when running vagrant up.
