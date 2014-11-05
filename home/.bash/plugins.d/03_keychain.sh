#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for keychain.
# =========================================================================== #

[[ -x keychain ]] && return;

keychain_init() {
  if [[ ! -e $HOME/.keychain/$HOSTNAME-sh ]]; then
    eval $(keychain --eval $KEYCHAIN_SSH_KEYS $KEYCHAIN_GPG_KEYS);
    tset
  fi
}

function keychain_source {
  source $HOME/.keychain/$HOSTNAME-sh;
  source $HOME/.keychain/$HOSTNAME-sh-gpg;
}

function keychain_wipe {
  rm $HOME/.keychain/$HOSTNAME*
  keychain_init
}

keychain_init
export PROMPT_COMMAND="$PROMPT_COMMAND;keychain_source"
