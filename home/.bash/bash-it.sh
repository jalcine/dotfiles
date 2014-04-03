#!/usr/bin/env bash

export BASH_IT="$HOME/.bash/bash-it"
export BASH_IT_THEME='jalcine'
export JALCINE_THEME_USER="jacky"
export JALCINE_THEME_HOME="neuromancer"

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='weechat-curses'

# Tell bash-it where I've stored `vcprompt`.
export VCPROMPT_EXECUTABLE=$HOME/.local/bin/vcprompt

# Keys to use in the shell.
export KEYCHAIN_SSH_KEYS="$HOME/.ssh/keys/primary.rsa"
export KEYCHAIN_GPG_KEYS="6E767393"

# Load Bash It
. $BASH_IT/bash_it.sh
