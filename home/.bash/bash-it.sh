#!/usr/bin/env bash

export BASH_IT="$HOME/.bash/bash-it"
export BASH_IT_THEME='pete'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
[ -f `which weechat-curses` ] && export IRC_CLIENT='weechat-curses';

# Define the VC prompt.
export VCPROMPT_EXECUTABLE=$HOME/.local/bin/vcprompt

# Load Bash It
. $BASH_IT/bash_it.sh
