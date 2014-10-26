#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for keychain.
# =========================================================================== #

[[ -x keychain ]] && return;

function keychain_init {
  eval $(keychain --eval $KEYCHAIN_SSH_KEY_PATHS $KEYCHAIN_GPG_KEYS);
}

function keychain_source {
  source $HOME/.keychain/$HOSTNAME-sh;
  source $HOME/.keychain/$HOSTNAME-sh-gpg;
}

export PROMPT_COMMAND="$PROMPT_COMMAND;keychain_source"
