node default {

}
node master {
  class {'r10k::webhook::config':
  enable_ssl     => false,
  protected      => false,
}

class {'r10k::webhook':
  require => Class['r10k::webhook::config'],
}
}
