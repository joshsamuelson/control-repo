node puppet.local {
  include role::master
}
node elk.local {
  include role::elk
}
