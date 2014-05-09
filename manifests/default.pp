Exec {
   path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ]
}

# Install some default packages
$default_packages = [ 'build-essential', 'vim', 'curl', 'git' ]
package { $default_packages :
  ensure => present,
  require => Exec['apt-update'],
}
include project

include project::adminer
include project::composer
include project::web
include project::php5
include project::phpunit
include project::pear
include project::phing
include project::sql
include project::samba
include project::mongodb
include project::pdflib