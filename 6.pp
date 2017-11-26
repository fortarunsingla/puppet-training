
$ntp_conf = '#Managed by puppet server ....... iburst driftfile   /var/lib/ntp/drift'

file { '/etc/ntp.conf':
ensure => 'file',
content => $ntp_conf
}
