#!/usr/bin/env zsh
#
# This makes it easy for me to use to Keychain[1]
#
# [1]: https://www.funtoo.org/Keychain

keychain_init() {
  declare expected_keychain_path="$HOME/.keychain/${HOST}-sh"
  if [ -e "${expected_keychain_path}" ]; then
    keychain_source
  else
    keychain_load
  fi
}

keychain_load() {
  # shellcheck disable=SC2086,SC2038,SC2154,SC2086
  eval "$(keychain --quiet --attempts 3 --inherit any-once \
    --eval --agents ssh,gpg --ignore-missing \
    $KEYCHAIN_GPG_KEYS)";

  for key in $(find $HOME/.ssh/keys -type f -name "*.pem" | xargs)
  do
    declare passPath=$(basename $(dirname ${key}))
    declare passDir=$(basename -s .pem "${key}")

    echo "[keychain] Importing key '${passPath}/${passDir}'...";
    pass show "ssh${KEYCHAIN_PASSWORD_PREFIX:-}/${passPath}/${passDir}" | ssh-add "${key}" \
      2>> ~/.keychain/startup_err.log \
       >> ~/.keychain/startup.log
  done
}

keychain_source() {
  . "$HOME/.keychain/$HOST-sh" 2>/dev/null
  . "$HOME/.keychain/$HOST-sh-gpg" 2>/dev/null
}

keychain_wipe() {
  keychain --stop all --quiet --agents gpg,ssh;
  if [ -f "$HOME/.keychain/$HOST-sh" ]; then
    rm "$HOME/.keychain/$HOST*" || echo "[keychain] All clear on env.";
  fi
}

keychain_init;
