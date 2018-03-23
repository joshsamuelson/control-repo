node default {

}
node puppet.linkedin.local {
  class { "r10k":
    remote => "https://github.com/samuelson/control_repo"
  }

class { 'r10k::webhook::config':
  use_mcollective  => false,
  public_key_path  => '/etc/mcollective/server_public.pem',  # Mandatory even when use_mcollective is false
  private_key_path => '/etc/mcollective/server_private.pem', # Mandatory even when use_mcollective is false
}

class { 'r10k::webhook':
  user    => 'root',                                       # Mandatory for FOSS
  group   => 'root',                                       # Mandatory for FOSS
}
}
