class site::composer {
    exec { 'composer-install':
        command => 'curl -sS https://getcomposer.org/installer | php && sudo mv composer.phar /usr/local/bin/composer',
        require => Package['curl'],
    }
}