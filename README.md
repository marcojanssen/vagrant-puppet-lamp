# LAMP setup with Vagrant & Puppet #

----------

A out of the box solution for a Jenkins-CI setup, the server is installed with the following packages:

- Ubuntu 13.04 "Raring Ringtail"
- Apache2
- PHP 5.4.10
- Pear
- Phing
- MySQL
- SQLite 3
- Subversion & Git
- MongoDB
- Varnish
- Gearman (not working yet)

## Requirements ##

- Vagrant (tested on 1.2.7)

## Installation ##

- git clone https://github.com/marcojanssen/vagrant-puppet-lamp.git
- git submodule init
- git submodule update
- vagrant up

Change the IP adres to whatever you want in the Vagrantfile, and add that IP adres to your host file, for example:

> 192.168.2.200 localdev