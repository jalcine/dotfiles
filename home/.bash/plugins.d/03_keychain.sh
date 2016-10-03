#!/usr/bin/env bash

# =========================================================================== #
# File: ~/.bash/plugins.d/keychain.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for keychain.
# =========================================================================== #

keychain_init() {
  if [ ! -f "$HOME/.keychain/$HOSTNAME-sh" ]; then
    echo "[keychain] loading keys for GPG and SSH...";
    # shellcheck disable=SC2086
    eval "$(keychain --attempts 3 --inherit any-once \
      --eval --agents gpg,ssh --ignore-missing \
      --confhost $KEYCHAIN_GPG_KEYS)";
  else
    keychain_source
  fi
}

keychain_source() {
  . "$HOME/.keychain/$HOSTNAME-sh" 2>/dev/null
}

keychain_wipe() {
  keychain --stop all --quiet --agents gpg,ssh --systemd all;
  if [ -f "$HOME/.keychain/$HOSTNAME-sh" ]; then
    rm "$HOME/.keychain/$HOSTNAME*";
  fi
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
