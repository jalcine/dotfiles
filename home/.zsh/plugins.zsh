if [ ! -d $ZPLUG_HOME ]; then
  echo "[jalcine] Installing 'zplug'..."
  git clone https://github.com/zplug/zplug $ZPLUG_HOME --depth=1 --branch master
  chown -R ${USER}:${GROUP} ${ZPLUG_HOME}
  chmod -R o+x,g+x ${ZPLUG_HOME}
fi

source $ZPLUG_HOME/init.zsh

# My personal plugins.
local ZPLUG_LOCAL="$HOME/.zsh/local"
zplug "$ZPLUG_LOCAL/keychain", from:local
zplug "$ZPLUG_LOCAL/direnv", from:local
zplug "$ZPLUG_LOCAL/common", from:local
zplug "$ZPLUG_LOCAL/fzf", from:local
zplug "$ZPLUG_LOCAL/anyenv", from:local
zplug "$ZPLUG_LOCAL/evm", from:local
zplug "$ZPLUG_LOCAL/exenv", from:local
zplug "$ZPLUG_LOCAL/homeshick", from:local
zplug "$ZPLUG_LOCAL/twitter", from:local

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "chrissicool/zsh-256color"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/battery", from:oh-my-zsh
zplug "plugins/dotenv", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/kube-ps1", from:oh-my-zsh
zplug "chriskempson/base16-shell"
zplug "oldratlee/hacker-quotes"
zplug "zsh-users/zsh-autosuggestions"
zplug "marzocchi/zsh-notify"
zplug "andrewferrier/fzf-z"
zplug "jamesob/desk", hook-build:"make oh-my-zsh"
zplug "wbingli/zsh-wakatime"
zplug "mafredri/zsh-async", use: "async.zsh" 
zplug "paulmelnikow/zsh-startup-timer"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "plugins/git-flow", from:oh-my-zsh
zplug "tcnksm/docker-alias", use:zshrc
zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq
zplug "b4b4r07/httpstat", \
    as:command, \
    use:'(*).sh', \
    rename-to:'$1'

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

zplug "eendroroy/alien"

source ~/.zsh/local.zsh

if ! zplug check --verbose; then
  printf "[zplug] Install plugins? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
