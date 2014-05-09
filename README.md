# LAMP setup with Vagrant & Puppet #

----------

A out of the box solution for a LAMP setup, Ubuntu 14.04 is installed with the following packages:

- Adminer
- Apache 2.2
- Composer
- Git
- MongoDB 2.4
- MySQL 5.5
- Pear
- Pecl
- PHP 5.4
- Phing
- Subversion
- SQLite 3
- Varnish

## Requirements ##

- Vagrant 1.5.3
- Virtualbox 4.3.10

## Installation ##

- git clone https://github.com/marcojanssen/vagrant-puppet-lamp.git
- git submodule init
- git submodule update
- vagrant up

Change the IP address to whatever you want in the Vagrantfile, and add that IP address to your host file, for example:

> 192.168.2.200 dev.localdev.nl

## Adminer ##

By default Adminer (http://adminer.org) is installed and can be accessed from adminer.localhost.com if added to the host file.