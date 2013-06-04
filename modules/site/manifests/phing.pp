class site::phing {
    exec { "phing-install":
        command => "pear install phing/phing",
        unless => "pear info phing/phing",
        require => Exec['pear-auto-discover'],
    }
}