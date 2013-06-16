class setup {

    # Install some default packages
    $default_packages = [ 'build-essential', 'vim', 'curl', 'mc', 'git' ]
    package { $default_packages :
        ensure => present,
        require => Exec['apt-update'],
    }
}