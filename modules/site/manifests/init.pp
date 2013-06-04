class site {

    include site::apt
    include site::composer
    include site::web
    include site::php5
    include site::pear
    include site::phing
    include site::sql
    include site::inosync
}