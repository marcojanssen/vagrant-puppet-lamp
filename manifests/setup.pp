class setup {

    # Install some default packages
    $default_packages = [ "mc", "strace", "sysstat", "git" ]
    package { $default_packages :
        ensure => present,
    }
}