#
# == Class: unix_tools
#
# Install the (useful) tools for Unix/Linux systems
#
# === Parameters
#
# None.
#
# === Variables
#
# None.
#
# === Examples
#
# include unix_tools
#
# === Authors
#
# Simon Deziel <simon.deziel@gmail.com>
#
# === Copyright
#
# Copyright 2014 Simon Deziel
#
class unix_tools {

  # /usr/local/bin
  # none for now

  # /usr/local/sbin
  file { ['check-deleted-libs','restart-svc']:
    path   => "/usr/local/sbin/${name}",
    source => "puppet:///modules/unix_tools/sbin/${name}",
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
}
