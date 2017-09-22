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
# Copyright 2014,2017 Simon Deziel
#
class unix_tools {

  # /usr/local/bin
  file {
    '/usr/local/bin/ssh-auhkey-sed':
      source => 'puppet:///modules/unix_tools/bin/ssh-auhkey-sed',
      owner  => 'root',
      group  => 'root',
      mode   => '0755';
  }

  # /usr/local/sbin
  file {
    '/usr/local/sbin/restart-svc':
      source => 'puppet:///modules/unix_tools/sbin/restart-svc',
      owner  => 'root',
      group  => 'root',
      mode   => '0755';
  }
}
