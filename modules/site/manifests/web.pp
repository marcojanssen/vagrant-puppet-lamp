class site::web {

    /*== apache ==*/
    class { "apache":
        require => Exec["apt-update"],
    }

    apache::module { "rewrite": }
    apache::module { "headers": }

    /*== vhost ==*/
    apache::vhost { 'dev.local':
        docroot             => '/var/www',
        server_name         => 'dev.local',
        priority            => '',
        template            => 'apache/virtualhost/vhost.conf.erb',
    }

    /*== SSL ==*/
    include apache::ssl

    exec { "default-ssl":
        command => "a2ensite default-ssl",
        require => Class['apache::ssl']
    }

    /*== web link ==*/
    exec { "link-webroot":
        command => "rm -rf /var/www; ln -s /vagrant /var/www"
    }
}