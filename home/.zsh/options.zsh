export EDITOR=nvim
export HISTFILE=$HOME/.zsh/history
export ALIEN_DATE_TIME_FORMAT="%H:%M:%S"
export ALIEN_CUSTOM_THEME_PATH="$HOME/.zsh/alien-theme.zsh"
export HISTSIZE=16384
export SAVEHIST=262144
export USE_NERD_FONT=1
export ZSH_CUSTOM=$HOME/.zsh/custom

alien_theme(){
  color0=018    # time bg
  color1=226    # init bg
  color1r=196   # init bg error
  color2=254    # time fg
  color3=026    # user bg
  color4=254    # user fg
  color5=045    # dir bg
  color6=019    # dir fg
  color7=238    # vcs bg
  color8=228    # prompt fg
  color9=051    # vcs fg
  color10=244   # lr bg
  color11=255   # lr fg
  color12=253   # dirty copy bg
  color13=016   # dirty copy fg
  color14=245   # venv color
}

setopt appendhistory beep notify extendedglob
unsetopt autocd
