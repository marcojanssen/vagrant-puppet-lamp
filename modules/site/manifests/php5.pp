class site::php5 {

    class { 'php':
        require => Exec["apt-update"],
    }

    php::module { "common": }
    php::module { "dev": }

    php::module { "cli": }
    php::module { "intl": }
    php::module { "imagick": }
    php::module { "gd": }
    php::module { "mcrypt": }
    php::module { "curl": }
    php::module { "xdebug": }
    php::module { "mysql": }
    php::module { "xcache": }
}