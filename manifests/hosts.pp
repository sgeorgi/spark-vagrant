host { 'spark-master.dev.local':
  ip => '33.33.33.100',
  host_aliases => 'spark-master',
}

host { 'spark-node-1.dev.local':
  ip => '33.33.33.101',
  host_aliases => 'spark-node-1',
}

host { 'spark-node-2.dev.local':
  ip => '33.33.33.102',
  host_aliases => 'spark-node-2',
}

host { 'localhost':
  ip => '127.0.0.1',
  host_aliases => 'localhost',
}

resources { 'host': purge => true }
