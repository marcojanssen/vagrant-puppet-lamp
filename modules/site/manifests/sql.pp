class site::sql {

    class { "mysql":
        root_password => "root",
        require       => Exec["apt-update"],
    }

    package { "sqlite3":
        ensure => present
    }
}