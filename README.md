# LAMP setup with Vagrant & Puppet #

----------

A out of the box solution for a LAMP setup, Debian Wheezy 7.2 is installed with the following packages:

- Apache 2.2.22
- Composer
- Git
- MongoDB 2.4.8
- MySQL 5.5.33
- Pear
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

> 192.168.2.200 *.localdev.nl

Note: Sorry windows users, you can't add wildcards in your hosts file, specify each domain seperatly:
> 192.168.2.200 demo.localdev.nl

## Vhost made easy ##

Install your project in /var/www/[project name] and make sure your public/htdocs folder is symlinked to a directory called web (In case of Symfony 2 applications you're good to go instantly)
So if we have a project called demo, checkout your project in /var/www/demo and symlink the public directory to web:
ln -s /var/www/demo/web /var/www/demo/public

Your project is now accessible from: demo.localdev.nl

## Credits ##

PuPHPet (https://puphpet.com/) for having an excellent out of the box solution for vagrant setups, this vagrant setup uses their virtualbox.