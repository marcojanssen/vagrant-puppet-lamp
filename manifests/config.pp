class config {
    # Hostname of the virtualbox (make sure this URL points to 127.0.0.1 on your local dev system!)
    $host = 'www.project.dev'

    # Original port (don't change)
    $port = '80'

    # Database settings
    $dbname = 'project'
    $dbuser = 'project'
    $dbpass = 'secret'

    $php = {
        version => '5.4.1'
    }

    $filepath = '/vagrant/modules'

    $phpmyadmin = true
}