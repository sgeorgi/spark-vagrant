import 'spark.pp'

file { 'spark-master':
  path => '/etc/init.d/spark-master',
  ensure => file,
  mode => 0755,
  content => template('spark-master.erb'),
}
service { 'spark-master':
  ensure => running,
  enable => true,
  subscribe => File['spark-master'],
}
