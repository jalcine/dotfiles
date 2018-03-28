source ~/.zsh/options.zsh
source ~/.zsh/zplug/init.zsh
source ~/.zsh/plugins.zsh
bindkey -v

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 3 not-numeric
zstyle :compinstall filename '/home/ayize/.zshrc'
autoload -Uz compinit
compinit
