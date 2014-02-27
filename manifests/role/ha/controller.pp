class havana::role::ha::controller inherits ::havana::role {
  class { '::havana::profile::rabbitmq': } ->
  class { '::havana::profile::ha::memcache': }
}
