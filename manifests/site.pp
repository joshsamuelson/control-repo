node default {
  class {'r10k::webhook::config':
  use_mcollective => false,
}

class {'r10k::webhook':
  use_mcollective => false,
  user            => 'root',
  group           => '0',
  require         => Class['r10k::webhook::config'],
}
}
