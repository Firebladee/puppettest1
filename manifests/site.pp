hiera_include('classes')

vcsrepo {'/var/www/test':
  source   => 'git://github.com/puppetlabs/exercise-webpage.git',
  provider => git,
}

resources {'firewall':
  purge => true,
}
