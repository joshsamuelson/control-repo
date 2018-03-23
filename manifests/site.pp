node default {

}
node puppet.linkedin.local {
  class { "r10k":
    remote => "https://github.com/samuelson/control_repo"
  }
  class {'r10k::webhook::config':
    enable_ssl     => false,
    protected      => false,
  }

  class {'r10k::webhook':
    require => Class['r10k::webhook::config'],
  }
}
