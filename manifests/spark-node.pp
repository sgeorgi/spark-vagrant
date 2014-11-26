import 'spark.pp'

file { 'spark-node':
  path => '/etc/init.d/spark-node',
  ensure => file,
  mode => 0755,
  content => template('spark-node.erb'),
}
service { 'spark-node':
  ensure => running,
  enable => true,
  subscribe => File['spark-node'],
}
