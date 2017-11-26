service { 'ntpd':
ensure => 'running',
enable => true
}

service { 'httpd':
ensure => 'running',
enable => true
}

