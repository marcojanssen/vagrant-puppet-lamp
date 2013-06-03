class site {
    exec { "apt-update":
      command => "/usr/bin/apt-get update"
    }

    # Ensure apt-get update has been run before installing any packages
    Exec["apt-update"] -> Package <| |>

    include site::site_apache
    include site::site_php
    include site::site_mysql
}