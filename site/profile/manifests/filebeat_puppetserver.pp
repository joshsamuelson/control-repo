class profile::filebeat_puppetserver {
  class{'elk::filebeat':
    prospectors => [ {
     "type" => "log",
     "paths" => [
        "/var/log/puppetlabs/puppetserver/puppetserver.log.json",
        "/var/log/puppetlabs/puppetserver/puppetserver-access.log.json",
      ],
     "json_keys_under_root" => true
   } ],
 logstash_server => 'elk.local',
 }

}
