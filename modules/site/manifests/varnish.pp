class site::varnish {
    package { "varnish":
        ensure   => present,
        require  => Exec["apt-update"]
    }

    file {
        "/etc/varnish/default.vcl":
        ensure => present,
        require => Package["varnish"],
        source => "puppet:///modules/site/varnish/default.vcl";

        "/etc/default/varnish":
        ensure => present,
        require => Package["varnish"],
        source => "puppet:///modules/site/varnish/varnish";
    }
}