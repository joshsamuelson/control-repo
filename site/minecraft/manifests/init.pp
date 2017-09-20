class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  include wget
  wget::fetch { "download minecraft":
    source      => 'https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar',
    destination => '/opt/minecraft',
    timeout     => 0,
    verbose     => false,
  }
  package {'java':
    ensure => present,
  }
  file {'/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true'
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
    ensure => running,
    enable => true,
  }
}
