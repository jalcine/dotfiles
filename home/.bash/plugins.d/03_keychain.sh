#!/usr/bin/env bash

# =========================================================================== #
# File: ~/.bash/plugins.d/keychain.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for keychain.
# =========================================================================== #

keychain_init() {
  echo "[keychain] Parsing...";
  declare expected_keychain_path="$HOME/.keychain/${HOSTNAME}-sh"
  if [ ! -f "${expected_keychain_path}" ]; then
    keychain_load
  else
    keychain_source
  fi
}

keychain_load() {
  # shellcheck disable=SC2086,SC2038,SC2154
  eval "$(keychain --quiet --attempts 3 --inherit any-once \
    --eval --agents ssh,gpg --ignore-missing \
    $KEYCHAIN_GPG_KEYS $ssh_keys)";
  for key in $(find ~/.ssh/keys -type f -name "*.pem" | xargs)
  do
    declare passPath=$(basename $(dirname ${key}))
    declare passDir=$(basename -s .pem ${key})
    echo "[keychain] Importing key '${passPath}/${passDir}'...";
    pass show "ssh/${passPath}/${passDir}" | ssh-add "${key}" \
      2>> ~/.keychain/startup_err.log \
       >> ~/.keychain/startup.log
  done
}

keychain_source() {
  . "$HOME/.keychain/$HOSTNAME-sh" 2>/dev/null
  . "$HOME/.keychain/$HOSTNAME-sh-gpg" 2>/dev/null
}

keychain_wipe() {
  keychain --stop all --quiet --agents gpg,ssh --systemd all;
  if [ -f "$HOME/.keychain/$HOSTNAME-sh" ]; then
    rm "$HOME/.keychain/$HOSTNAME*";
  fi
}

if [ -e "$(which keychain)" ]; then
  case $PROMPT_COMMAND in
    *keychain_source*)
      ;;
    "")
      export PROMPT_COMMAND="keychain_source";
    ;;
    *)
      export PROMPT_COMMAND="${PROMPT_COMMAND};keychain_source;"
    ;;
  esac

  keychain_init
fi

keychain_init;
