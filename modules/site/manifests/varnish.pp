class site::varnish {
    package { "varnish":
      ensure   => present,
      require  => Exec["apt-update"]
    }
}