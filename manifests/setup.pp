class setup {

    exec { "rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm":}
    exec { "rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm":}

    # Install some default packages
    $default_packages = [ "mc", "strace", "sysstat", "git" ]
    package { $default_packages :
        ensure => present,
    }

    include site
}