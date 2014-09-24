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
  file {
    '/usr/local/sbin/check-deleted-libs':
      source => 'puppet:///modules/unix_tools/sbin/check-deleted-libs',
      owner  => 'root',
      group  => 'root',
      mode   => '0755';
    '/usr/local/sbin/restart-svc':
      source => 'puppet:///modules/unix_tools/sbin/restart-svc',
      owner  => 'root',
      group  => 'root',
      mode   => '0755';
  }
}
