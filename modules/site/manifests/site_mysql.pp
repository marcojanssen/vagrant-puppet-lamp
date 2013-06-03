class site::site_mysql {

    class { "mysql":
        root_password => "root",
        require       => Exec["apt-update"],
    }

}