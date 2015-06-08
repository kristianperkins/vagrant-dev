class base {
  $packages = ['git', 'zsh', 'python-pip']
  package { $packages: ensure => 'installed'}
}

