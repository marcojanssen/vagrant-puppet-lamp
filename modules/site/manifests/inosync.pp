#using inosync because of the lack of inotify on virtualbox, simple rsync/lsyncd will not work
#inosync will sync all changes from /vagrant to /var/www, a symlink will slow down the whole server (even when using nfs)
class site::inosync {
    file { '/etc/inosync':
        ensure => directory
    }

    file { "/etc/inosync/default.py":
        source => 'puppet:///modules/site/inosync/default.py',
    }

    package { "inosync": }

    exec { "inosync":
        command => "inosync -d"
    }

    File['/etc/inosync'] -> File['/etc/inosync/default.py'] -> Package['inosync'] -> Exec['inosync']
}