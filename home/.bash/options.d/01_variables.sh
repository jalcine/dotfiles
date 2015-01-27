# =========================================================================== #
# File: ~/.bash/options.d/01_variables.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Setting up expected variables.
# =========================================================================== #

export VCPROMPT_FORMAT="${bold_white}%n${normal}:%b ${red}%r${normal} %m%u%a"
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'
export LSCOLORS='Gxfxcxdxdxegedabagacad'
export HISTCONTROL='ignoredups;erasedups'
export HISTSIZE=100000
export EDITOR=vim
test -z $JALCINE_HOST && export JALCINE_HOST=""
