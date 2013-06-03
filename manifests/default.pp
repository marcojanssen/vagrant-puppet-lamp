Exec {
   path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ]
}

stage { 'first':
  before => Stage['main'],
}

node default {
    include config
    include apt
}

include setup