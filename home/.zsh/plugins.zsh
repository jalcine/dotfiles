# TODO: Add system-specific checks.

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/debian", from:oh-my-zsh
zplug "tcnksm/docker-alias", use:zshrc
zplug "chrissicool/zsh-256color"
zplug "sparsick/ansible-zsh"
zplug "sroze/docker-compose-zsh-plugin"
zplug "b4b4r07/emoji-cli"
zplug "Seinh/git-prune"
zplug "oldratlee/hacker-quotes"
zplug "marzocchi/zsh-notify"
zplug "jreese/zsh-titles"
zplug "denysdovhan/spaceship-prompt", as:theme
zplug "zsh-users/zsh-syntax-highlighting"
zplug "wbingli/zsh-wakatime"
zplug "bobthecow/git-flow-completion"
zplug "~/.zsh/local", from:local

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
