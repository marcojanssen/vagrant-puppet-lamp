class site::varnish {
    package { "varnish":
        ensure   => present,
        require  => Exec["apt-update"]
    }

    service { "varnish":
        ensure     => running,
        enable     => true,
        hasrestart => true,
        require    => Package["varnish"],
    }

    file {
        "/etc/varnish/default.vcl":
        ensure => present,
        require => Package["varnish"],
        source => "puppet:///modules/site/varnish/default.vcl",
        notify  => Service["varnish"];

        "/etc/default/varnish":
        ensure => present,
        require => Package["varnish"],
        source => "puppet:///modules/site/varnish/varnish",
        notify  => Service["varnish"];
    }
}