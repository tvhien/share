# Manages the nginx.conf file
#
# @summary Manages the nginx.conf file
#
# @example
#   include nginx::config
class nginx::config {
  file { 'nginx_config':
    path   => '/etc/nginx/nginx.conf',
    source => 'puppet:///modules/nginx/rh-nginx.conf',
    ensure => 'present',
    notify => Service['nginx_service'],
  }
}
