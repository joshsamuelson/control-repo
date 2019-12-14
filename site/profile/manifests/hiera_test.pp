class profile::hiera_test(   
    Boolean $ssl,   
    Boolean $backups_enabled,   
    Optional[String[1]] $site_alias = undef,   
) {   
    file {   
        '/tmp/hiera_test.txt': ensure => file,   
        content => "SSL is enabled? ${ssl}.  Backups are enabled? ${backups_enabled}", 
        owner => root,   
        mode => '0644',   
    }   
}   
