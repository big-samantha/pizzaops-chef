# Class: chef
# ===========================
#
# Full description of class chef here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class chef (
  $package_name = $::chef::params::package_name,
  $service_name = $::chef::params::service_name,
) inherits ::chef::params {

  # validate parameters here

  class { '::chef::install': } ->
  class { '::chef::config': } ~>
  class { '::chef::service': } ->
  Class['::chef']
}
