#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for keychain.
# =========================================================================== #

[[ -x keychain ]] && return;

keychain_init() {
  if [[ ! -e $HOME/.keychain/$HOSTNAME-sh ]]; then
    eval $(keychain --quiet --eval $KEYCHAIN_SSH_KEYS $KEYCHAIN_GPG_KEYS);
    tset
  else
    keychain_source
  fi
}

function keychain_source {
  [[ -e $HOME/.keychain/$HOSTNAME-sh ]] && source $HOME/.keychain/$HOSTNAME-sh;
  [[ -e $HOME/.keychain/$HOSTNAME-sh ]] && source $HOME/.keychain/$HOSTNAME-sh-gpg;
}

function keychain_wipe {
  rm $HOME/.keychain/$HOSTNAME*
  keychain_init
}

case "$PROMPT_COMMAND" in
  *keychain_source*) ;;
  "")
    export PROMPT_COMMAND="keychain_source"
  ;;
  *)
    export PROMPT_COMMAND="keychain_source;${PROMPT_COMMAND}"
  ;;
esac

keychain_init
