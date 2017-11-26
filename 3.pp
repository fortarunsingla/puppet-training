file { 'Message File':
ensure => 'file',
content => 'Welcome to my server',
path => '/etc/motd',
}

