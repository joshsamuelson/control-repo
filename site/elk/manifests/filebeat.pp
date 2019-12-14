# elk::filebeat
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include elk::filebeat
class elk::filebeat {
  package {'filebeat':
    ensure => present,
  }
  include elastic_stack::repo
}
