# elk
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include elk
class elk {
  class {'logstash':}

  include ::java
  class {'elasticsearch':}
  elasticsearch::instance {'es-01':}

  class{'kibana':}

  include elk::filebeat
}
