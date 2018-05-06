zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-flow", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/cpanm", from:oh-my-zsh
zplug "plugins/rust", from:oh-my-zsh
zplug "plugins/vagrant", from:oh-my-zsh
zplug "plugins/pass", from:oh-my-zsh
zplug "plugins/rake-fast", from:oh-my-zsh
zplug "plugins/dotenv", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/jsontools", from:oh-my-zsh
zplug "plugins/cp", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/vagrant", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/adb", from:oh-my-zsh
zplug "plugins/heroku", from:oh-my-zsh
zplug "plugins/ember-cli", from:oh-my-zsh
zplug "plugins/composer", from:oh-my-zsh
zplug "plugins/encode64", from:oh-my-zsh
zplug "plugins/jira", from:oh-my-zsh
zplug "plugins/mix-fast", from:oh-my-zsh
zplug "plugins/mosh", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh
zplug "tcnksm/docker-alias", use:zshrc
zplug "chrissicool/zsh-256color", defer:3
zplug "sparsick/ansible-zsh"
zplug "sroze/docker-compose-zsh-plugin"
zplug "b4b4r07/emoji-cli"
zplug "Seinh/git-prune"
zplug "oldratlee/hacker-quotes"
zplug "marzocchi/zsh-notify"
zplug "lukechilds/zsh-better-npm-completion", defer:2
zplug "MikeDacre/tmux-zsh-vim-titles", use:unified-titles
zplug "zsh-users/zsh-syntax-highlighting"
zplug "wbingli/zsh-wakatime"
zplug "gangleri/pipenv"
zplug "rbirnie/oh-my-zsh-keybase"
zplug "bobthecow/git-flow-completion"
zplug "MichaelAquilina/zsh-you-should-use"
zplug "andrewferrier/fzf-z"
zplug "chriskempson/base16-shell"
zplug "k4rthik/git-cal"
zplug "paulmelnikow/zsh-startup-timer"
zplug "bric3/nice-exit-code"
zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq
zplug "b4b4r07/emoji-cli", \
    on:"stedolan/jq"

# My personal plugins.
# TODO: Move this out into a set of shareable plugins.
zplug "~/.zplug/local/common", from:local
zplug "~/.zplug/local/direnv", from:local
zplug "~/.zplug/local/keychain", from:local
zplug "~/.zplug/local/anyenv", from:local
zplug "~/.zplug/local/evm", from:local
zplug "~/.zplug/local/homeshick", from:local
zplug "~/.zplug/local/travis-ci", from:local

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

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme, as:theme

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
