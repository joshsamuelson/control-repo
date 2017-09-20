class profile::ssh_server {
    package {'openssh-server':
      ensure => present,
    }
    service { 'sshd':
      ensure => 'running',
      enable => 'true',
    }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDDujh4shDdchlRzZJ1Bn8eBXhFB2sE9cm32VOPyrp8Er9ireIAbiq3cv2FyR9VS7pqAIRBmNO6ZETLmuR7tD0VEcEj6DB0jgLYeRZecwgKVRk5XqYUNB/wsDvBqcYCOvDX4con3ltAzHOheucu/RQJdFFcvfIxGpbA8dvQ0X4otD6y3g614KCkeLYZLymdWUlaIabcCgWP4sSiuP6YKtkggi9uID+csgGv8jiFn49kFs7BEFJXXl6R3P5T/0mKJMxjyfC3+btrVzDfXbvwGomMvWhCuYySZuqEhlwqapbnGRGtAXD9zpOhmT+QbfCcO9/tqMV7eKaVuMEbcEZ0yo7Z',
  }  
}
