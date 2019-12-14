class profile::r10k {
  class { "r10k":
    remote => "https://github.com/samuelson/control_repo"
  }

  class { 'r10k::webhook::config':
    use_mcollective  => false,
    enable_ssl => false,
  }  

  class { 'r10k::webhook':
    user    => 'root',                                       # Mandatory for FOSS
    group   => 'root',                                       # Mandatory for FOSS
  }
}
