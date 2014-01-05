# LAMP setup with Vagrant & Puppet #

----------

A out of the box solution for a LAMP setup, Debian Wheezy 7.2 is installed with the following packages:

- Adminer
- Apache 2.2.22
- Composer
- Git
- MongoDB 2.4.8
- MySQL 5.5.33
- Pear
- Pecl
- PHP 5.4.23
- Phing
- Subversion
- SQLite 3
- Varnish 3.0.2

## Requirements ##

- Vagrant 1.4
- Virtualbox 4.3

## Installation ##

- git clone https://github.com/marcojanssen/vagrant-puppet-lamp.git
- git submodule init
- git submodule update
- vagrant up

Change the IP address to whatever you want in the Vagrantfile, and add that IP address to your host file, for example:

> 192.168.2.200 dev.localdev.nl

## Adminer ##

By default Adminer (http://adminer.org) is installed and can be accessed from adminer.localdev.nl if added to the host file.

## Credits ##

PuPHPet (https://puphpet.com/) for having an excellent out of the box solution for vagrant boxes, this vagrant setup uses their virtualbox image.