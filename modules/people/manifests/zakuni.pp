class people::zakuni {
  include emacs
  include tmux
  include python
  include powerline
  include redis
  include vagrant

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