# The profile to install a local instance of memcache
class havana::profile::ha::memcache {
  class { 'memcached':
    listen_ip => join(hiera(havana::controller::ha::address::list), ' '),
    tcp_port  => '11211',
    udp_port  => '11211',
  }
}
