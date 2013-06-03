class site::web {

    class { "apache":
      require       => Exec["apt-update"],
    }

    apache::module { "rewrite": }
    apache::module { "headers": }

    apache::vhost { 'dev.local':
        docroot             => '/var/www',
        server_name         => 'dev.local',
        priority            => '',
        template            => 'apache/virtualhost/vhost.conf.erb',
    }

    exec { "link-webroot":
        command => "rm -rf /var/www; ln -s /vagrant /var/www"
    }
}