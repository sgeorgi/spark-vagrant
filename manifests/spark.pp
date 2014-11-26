include stdlib
include apt
include java8

import 'hosts.pp'

exec { "apt-update":
  command => "/usr/bin/apt-get update -y && touch /root/.apt-get-updated",
  creates => "/root/.apt-get-updated"
}

archive { 'spark-1.1.0':
  ensure => present,
  url => 'http://d3kbcqa49mib13.cloudfront.net/spark-1.1.0-bin-hadoop2.4.tgz',
  target => '/opt',
  src_target => '/usr/src',
  extension => 'tgz',
  checksum => false,
}

file { '/opt/spark-1.1.0':
  ensure => 'link',
  target => '/opt/spark-1.1.0-bin-hadoop2.4',
}
