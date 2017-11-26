package { 'ntp':
ensure => 'installed',
provider => 'yum',
}

package { 'httpd':
ensure => 'installed',
provider => 'yum',
}
