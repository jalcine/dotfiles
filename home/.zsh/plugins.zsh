zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/dotenv", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/mix-fast", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "chrissicool/zsh-256color", defer:3
zplug "oldratlee/hacker-quotes"
zplug "zsh-users/zsh-autosuggestions"
zplug "marzocchi/zsh-notify"
zplug "andrewferrier/fzf-z"
zplug "wbingli/zsh-wakatime"
zplug "chriskempson/base16-shell"
zplug "paulmelnikow/zsh-startup-timer"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "MikeDacre/tmux-zsh-vim-titles"
zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq

# My personal plugins.
# TODO: Move this out into a set of shareable plugins. zplug "~/.zplug/local/common", from:local
zplug "~/.zplug/local/direnv", from:local
zplug "~/.zplug/local/keychain", from:local
zplug "~/.zplug/local/anyenv", from:local
zplug "~/.zplug/local/evm", from:local
zplug "~/.zplug/local/exenv", from:local
zplug "~/.zplug/local/homeshick", from:local
zplug "~/.zplug/local/travis-ci", from:local
zplug "~/.zplug/local/twitter", from:local
zplug "~/.zplug/local/fzf", from:local

if [[ $OSTYPE == *darwin* ]]; then
  zplug "plugins/brew", from:oh-my-zsh
  zplug "plugins/brew-cask", from:oh-my-zsh
  zplug "plugins/osx", from:oh-my-zsh
elif [[ $OSTYPE == *linux* ]]; then
  zplug "plugins/debian", from:oh-my-zsh
  zplug "plugins/firewalld", from:oh-my-zsh
  zplug "plugins/systemd", from:oh-my-zsh
fi

source ~/.zsh/local.zsh

zplug "geometry-zsh/geometry"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
