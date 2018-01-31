zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 3 not-numeric
zstyle :compinstall filename '/home/ayize/.zshrc'
autoload -Uz compinit
compinit
HISTFILE=~/.zsh/history
HISTSIZE=4096
SAVEHIST=16384
ZSH_CUSTOM=~/.zsh/custom
setopt appendhistory beep nomatch notify
unsetopt autocd extendedglob
bindkey -v

# Load in zplug.
source ~/.zsh/zplug/init.zsh
source ~/.zsh/plugins.zsh
source ~/.homesick/repos/homeshick/homeshick.sh
PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init -)"
eval "$(direnv hook zsh)"
