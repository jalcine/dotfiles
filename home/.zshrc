source ~/.zsh/options.zsh
source ~/.zsh/plugins.zsh
bindkey -v

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 3 not-numeric
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###-tns-completion-start-###
if [ -f /home/ayize/.tnsrc ]; then 
    source /home/ayize/.tnsrc 
fi
###-tns-completion-end-###

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
