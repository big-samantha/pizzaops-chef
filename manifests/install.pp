# == Class chef::install
#
# This class is called from chef for install.
#
class chef::install {

  package { $::chef::package_name:
    ensure => present,
  }
}
