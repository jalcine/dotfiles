#!/usr/bin/env zsh

# In the off-chance that this script is about to be run and zplug is not
# installed, install it on the machine.
ZPLUG_HOME=${ZPLUG_HOME:-$HOME/.zsh/zplug}
if [ ! -d $ZPLUG_HOME ]; then
  echo "[jalcine] Installing 'zplug'..."
  git clone https://github.com/zplug/zplug $ZPLUG_HOME --depth=1 --branch master
  chown -R ${USER}:${GROUP} ${ZPLUG_HOME}
  chmod -R o+x,g+x ${ZPLUG_HOME}
fi

source $ZPLUG_HOME/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"

# My personal plugins.
local ZPLUG_LOCAL="$HOME/.zsh/local"
zplug "$ZPLUG_LOCAL/keychain", from:local
zplug "$ZPLUG_LOCAL/direnv", from:local
zplug "$ZPLUG_LOCAL/common", from:local
zplug "$ZPLUG_LOCAL/homeshick", from:local

zplug "chrissicool/zsh-256color"

zplug "plugins/adb", from:oh-my-zsh
zplug "plugins/asdf", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/dotenv", from:oh-my-zsh
zplug "plugins/battery", from:oh-my-zsh
zplug "plugins/bgnotify", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/dotenv", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-flow", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh

zplug "andrewferrier/fzf-z"
zplug "chriskempson/base16-shell"
zplug "mafredri/zsh-async", use: "async.zsh" 
zplug "marzocchi/zsh-notify"
zplug "oldratlee/hacker-quotes"
zplug "paulmelnikow/zsh-startup-timer"
zplug "tcnksm/docker-alias", use:zshrc
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

if [[ $OSTYPE == *darwin* ]]; then
  zplug "plugins/brew", from:oh-my-zsh
  zplug "plugins/brew-cask", from:oh-my-zsh
  zplug "plugins/osx", from:oh-my-zsh
elif [[ $OSTYPE == *linux* ]]; then
  zplug "plugins/debian", from:oh-my-zsh
  zplug "plugins/ubuntu", from:oh-my-zsh
  zplug "plugins/firewalld", from:oh-my-zsh
  zplug "plugins/systemd", from:oh-my-zsh
fi

source ~/.zsh/local.zsh

zplug load

if ! zplug check --verbose; then
  printf "[zplug] Install missing plugins? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
