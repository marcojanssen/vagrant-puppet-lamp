class site::apt {
    exec { "apt-update":
        command => "/usr/bin/apt-get update"
    }

    # Ensure apt-get update has been run before installing any packages
    Exec["apt-update"] -> Package <| |>
}