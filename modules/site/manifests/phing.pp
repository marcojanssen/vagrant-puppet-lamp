class site::phing {

    exec { "phing-pear-discover":
        command => "pear channel-discover pear.phing.info",
        unless => "pear info phing/phing",
        require => Exec['pear-auto-discover'],
    }

    exec { "phing-install":
        command => "pear install pear.phing.info/phing",
        unless => "pear info phing/phing",
        require => Exec['phing-pear-discover'],
    }
}