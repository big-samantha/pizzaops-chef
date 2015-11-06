# == Class chef::params
#
# This class is meant to be called from chef.
# It sets variables according to platform.
#
class chef::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'chef'
      $service_name = 'chef'
    }
    'RedHat', 'Amazon': {
      $package_name = 'chef'
      $service_name = 'chef'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
