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
    php::module { "sqlite": }
    php::module { "apc":
        module_prefix => "php-"
    }

    augeas { "php.ini":
        notify  => Service['apache2'],
        require => Package['php'],
        context => "/files/etc/php5/apache2/php.ini",
        changes => [
            "set Date/date.timezone Europe/Amsterdam",
        ];
    }


}