export EDITOR=nvim
export HISTFILE=$HOME/.zsh/history
export HISTSIZE=16384
export SAVEHIST=262144
export USE_NERD_FONT=1
export ZSH_CUSTOM=$HOME/.zsh/custom
export ZPLUG_HOME=$HOME/.zsh/zplug
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_BATTERY_THRESHOLD=80
export SPACESHIP_VI_MODE_COLOR="gray"
export SPACESHIP_VI_MODE_INSERT="i"
export SPACESHIP_VI_MODE_NORMAL="n"
export GIT_EDITOR="nvr -cc split --remote-wait"

setopt appendhistory beep notify extendedglob prompt_subst
unsetopt autocd
