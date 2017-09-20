node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root', 
  }
}

node 'master.puppet.vm' {
  include role::master_server
}
