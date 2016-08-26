#!/usr/bin/env bash

# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for keychain.
# =========================================================================== #

keychain_init() {
  if [ ! -e "$HOME/.keychain/$HOSTNAME-sh" ]; then
    echo "[keychain] loading keys for GPG and SSH...";
    # shellcheck disable=SC2086
    eval "$(keychain --attempts 3 --inherit any-once \
      --eval --agents gpg,ssh --ignore-missing \
      ${KEYCHAIN_GPG_KEYS} ${KEYCHAIN_SSH_KEYS})";
  else
    keychain_source
  fi
}

keychain_source() {
  [ -e "$HOME/.keychain/$HOSTNAME-sh" ] && . "$HOME/.keychain/$HOSTNAME-sh";
  [ -e "$HOME/.keychain/$HOSTNAME-sh-gpg" ] && . "$HOME/.keychain/$HOSTNAME-sh-gpg";
}

keychain_wipe() {
  keychain --stop all --quiet --agents gpg,ssh --systemd all;
  if [ -e "$HOME/.keychain/$HOSTNAME-sh" ]; then
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
