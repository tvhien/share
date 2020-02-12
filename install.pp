# Installs nginx
#
# @summary Installs nginx
#
# @example
#   include nginx::install
class nginx::install {
	package { 'install_nginx':
		name   => 'nginx',
		ensure => 'present',
	}
}
