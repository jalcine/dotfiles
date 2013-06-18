#!/usr/bin/env bash

export BASH_IT="$HOME/.bash/bash-it"
export BASH_IT_THEME='pete'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='weechat-curses'

export VCPROMPT_EXECUTABLE=~/.local/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh
