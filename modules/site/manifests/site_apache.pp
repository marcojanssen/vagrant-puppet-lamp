class site::site_apache {

    class { "apache": }

    apache::module { "rewrite": }
    apache::module { "headers": }

    apache::vhost { 'dev.local':
        docroot             => '/var/www',
        server_name         => false,
        priority            => '',
        template            => 'apache/virtualhost/vhost.conf.erb',
    }

    exec { "link-webroot":
      command => "rm -rf /var/www; ln -s /vagrant /var/www"
    }
}