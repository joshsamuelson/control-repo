node default {

}
node puppet.local {
  class { "r10k":
    remote => "https://github.com/samuelson/control_repo"
  }

class { 'r10k::webhook::config':
  use_mcollective  => false,
  public_key_path  => '/etc/pupppetlabs/puppet/ssl/ca/ca_crt.pem', 
  private_key_path => '/etc/puppetlabs/puppet/ssl/ca/ca_key.pem', 
}

class { 'r10k::webhook':
  user    => 'root',                                       # Mandatory for FOSS
  group   => 'root',                                       # Mandatory for FOSS
}
}
