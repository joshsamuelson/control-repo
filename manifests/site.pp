node default {

}
node puppet.linkedin.local {
  class { "r10k":
    remote => "https://github.com/samuelson/control_repo"
  }
# Instead of running via mco, run r10k directly
class {'r10k::webhook::config':
  use_mcollective => false,
}

# The hook needs to run as root when not running using mcollective
# It will issue r10k deploy environment <branch_from_gitlab_payload> -p
# When git pushes happen.
class {'r10k::webhook':
  use_mcollective => false,
  user            => 'root',
  group           => '0',
  require         => Class['r10k::webhook::config'],
}
}
