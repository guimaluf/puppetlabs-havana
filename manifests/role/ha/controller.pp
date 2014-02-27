class havana::role::ha::controller inherits ::havana::role {
  class { '::havana::profile::rabbitmq': }
}
