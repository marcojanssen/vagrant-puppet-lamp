class site::sql {

    class { "mysql":
        root_password => "root",
        require       => Exec["apt-update"],
    }

    exec { 'sqlite-install':
        command => 'apt-get install sqlite3',
        require => Exec['apt-update'],
    }

}