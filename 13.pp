service { httpd :
ensure => stopped
}

package { httpd :
ensure => absent
}
