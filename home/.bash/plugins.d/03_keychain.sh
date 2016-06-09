#!/usr/bin/env bash

# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for keychain.
# =========================================================================== #

keychain_init() {
  if [ ! -n "$KEYCHAIN_SSH_KEYS" ]; then
    echo "[keychain] Please define \$KEYCHAIN_SSH_KEYS for easy SSH use.";
  fi

  if [ ! -n "$KEYCHAIN_GPG_KEYS" ]; then
    echo "[keychain] Please define \$KEYCHAIN_GPG_KEYS for easy GPG use.";
  fi

  if [ ! -e "$HOME/.keychain/$HOSTNAME-sh" ]; then
    echo "[keychain] loading keys for GPG and SSH...";
    eval "$(keychain --eval --agents gpg,ssh --quick --systemd all --attempts 3 --confirm --ignore-missing $KEYCHAIN_SSH_KEYS $KEYCHAIN_GPG_KEYS)";
  else
    keychain_source
  fi
}

keychain_source() {
  [ -x "$HOME/.keychain/$HOSTNAME-sh" ] && . "$HOME/.keychain/$HOSTNAME-sh";
  [ -x "$HOME/.keychain/$HOSTNAME-sh-gpg" ] && . "$HOME/.keychain/$HOSTNAME-sh-gpg";
}

keychain_wipe() {
  keychain --stop all --quiet --agents gpg,ssh;
  [ -e "$HOME/.keychain/$HOSTNAME-sh" ] && rm "$HOME/.keychain/$HOSTNAME*";
  keychain_init;
}

if [ -e "$(which keychain)" ]; then
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

keychain_init;
