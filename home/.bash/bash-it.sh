#!/usr/bin/env bash

export BASH_IT="$HOME/.bash/bash-it"
export BASH_IT_THEME='sexy'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='weechat-curses'

# Define the VC prompt.
export VCPROMPT_EXECUTABLE=$HOME/.local/bin/vcprompt

export KEYCHAIN_SSH_KEYS="$HOME/.ssh/keys/primary.rsa"
export KEYCHAIN_GPG_KEYS="6E767393"

# Load Bash It
. $BASH_IT/bash_it.sh
