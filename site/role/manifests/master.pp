class role::master {
  include profile::r10k
  include profile::puppetdb
  include profile::puppetboard
  include profile::filebeat_puppetserver
}
