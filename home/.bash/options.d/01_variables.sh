# =========================================================================== #
# File: ~/.bash/options.d/01_variables.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Setting up expected variables.
# =========================================================================== #

export LSCOLORS="Gxfxcxdxdxegedabagacad"
export EDITOR=nvim
export HISTCONTROL="ignoredups:erasedups:ignoreboth"
export HISTSIZE=100000
export HISTIGNORE="&:ls:cd ~:cd ..:[bf]g:exit:h:history:..:z"
test -z "$JALCINE_HOST" && export JALCINE_HOST=""
