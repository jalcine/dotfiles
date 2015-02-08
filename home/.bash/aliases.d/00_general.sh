#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/aliases.d/00_general.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Aliases for regular shit.
# =========================================================================== #

alias _="sudo"
alias E="_ -e"
alias q="quit"

# For `ls`:
alias l="ls"
alias ll="ls -ll"
alias la="ls -lla"

# Install https://github.com/trapd00r/ls-- and be happy.
if [[ -e "$(which ls++)" ]]; then
  alias ls="ls++"
fi

alias ..="cd .."
alias ...="cd ../../"
alias ~="cd $HOME"

alias irc="weechat"
alias resrc="source ~/.bashrc"

alias ":wq"="echo You\'re not in Vim\!"
alias ":e"="vim"
