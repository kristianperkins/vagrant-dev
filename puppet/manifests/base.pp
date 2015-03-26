
class { 'java':
  distribution => 'jdk',
  version      => 'latest',
}

class { 'python':
  version => "system",
  pip => true,
  dev => true,
  virtualenv => true,
}

