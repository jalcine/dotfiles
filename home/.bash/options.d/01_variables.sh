# =========================================================================== #
# File: ~/.bash/options.d/01_variables.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Setting up expected variables.
# =========================================================================== #

export VCPROMPT_FORMAT="${bold_white}%n${normal}:${bold_gray}%b${noral} ${red}%r${normal} ${bold_red}%m${normal}${bold_green}%u${normal}${bold_yellow}%a${normal}"
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'
export LSCOLORS='Gxfxcxdxdxegedabagacad'
export EDITOR=vim
export HISTCONTROL='ignoredups:erasedups:ignoreboth'
export HISTSIZE=100000
export HISTIGNORE='&:ls:cd ~:cd ..:[bf]g:exit:h:history:..:z'
test -z "$JALCINE_HOST" && export JALCINE_HOST=""
