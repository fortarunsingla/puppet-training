
$index_html = @(END) 
Hello Tarun
END

case $facts['os']['family'] {
  'RedHat': {
    $httpd_service = 'httpd'
    $admingroup = 'wheel'
  }
  default : {
    fail("Your ${facts['os']['family']} is not supported")
  }
}

package { 'httpd':
  before => File['/var/www/html/index.html'],
}

File {
  owner  => 'root',
  group  => $admingroup,
  mode   => '0664',
  ensure => 'file',
}

file { '/var/www/html/index.html':
  content => $index_html,
  notify  => Service['HTTP_Service'],
}

service {'HTTP_Service':
  ensure    => 'running',
  enable    => true,
  name      => $httpd_service,
  subscribe => File['/var/www/html/index.html'],
}
