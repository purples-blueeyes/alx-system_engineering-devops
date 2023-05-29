# This increase the capabilities of Nginx server so it handles more traffic.

exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

exec {'restart':
  provider => shell,
  command  => 'sudo service nginx restart',
}
