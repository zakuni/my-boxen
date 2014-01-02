class people::zakuni {
  include emacs

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/dotfiles"

  file { $home:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'zakuni/dotfiles',
    require => File[$home]
  }
}