node default {

}
node puppet.local {
  include role::master

  file {'/etc/secret_password.txt':
    content => lookup('secret_password')
  }
}
