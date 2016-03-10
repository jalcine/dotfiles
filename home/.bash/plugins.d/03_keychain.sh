#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for keychain.
# =========================================================================== #

keychain_init() {
  if [ ! -e "$HOME/.keychain/$HOSTNAME-sh" ]; then
    echo "[keychain] loading keys for GPG and SSH...";
    keychain --clear --confirm --ignore-missing --quiet $KEYCHAIN_SSH_KEYS $KEYCHAIN_GPG_KEYS
    tset
  fi
}

keychain_source() {
  [ -e $HOME/.keychain/$HOSTNAME-sh ] && . $HOME/.keychain/$HOSTNAME-sh;
  [ -e $HOME/.keychain/$HOSTNAME-sh-gpg ] && . $HOME/.keychain/$HOSTNAME-sh-gpg;
}

keychain_wipe() {
  [ -e $HOME/.keychain/$HOSTNAME-sh ] && rm $HOME/.keychain/$HOSTNAME*;
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
