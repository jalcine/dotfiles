#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for keychain.
# =========================================================================== #

keychain_init() {
  if [ ! -e "$HOME/.keychain/$HOSTNAME-sh" ]; then
    eval "$(keychain --quiet --eval "$KEYCHAIN_SSH_KEYS" "$KEYCHAIN_GPG_KEYS")";
    tset
  fi
}

keychain_source() {
  [ -e $HOME/.keychain/$HOSTNAME-sh ] && source $HOME/.keychain/$HOSTNAME-sh;
  [ -e $HOME/.keychain/$HOSTNAME-sh-gpg ] && source $HOME/.keychain/$HOSTNAME-sh-gpg;
}

keychain_wipe() {
  rm "$HOME/.keychain/$HOSTNAME*";
  keychain_init;
}

if [ -x $(which keychain) ]; then
  case $PROMPT_COMMAND in
    *keychain_source*)
      ;;
    "")
      export PROMPT_COMMAND="keychain_source";
    ;;
    *)
      export PROMPT_COMMAND="keychain_source;${PROMPT_COMMAND}"
    ;;
  esac

  keychain_init
fi

[ -e "$HOME/.keychain/$HOSTNAME-sh" ] && keychain_init;
