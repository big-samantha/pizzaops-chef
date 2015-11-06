# == Class chef::service
#
# This class is meant to be called from chef.
# It ensure the service is running.
#
class chef::service {

  service { $::chef::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
