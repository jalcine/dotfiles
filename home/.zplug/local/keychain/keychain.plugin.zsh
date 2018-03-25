#!/usr/bin/env zsh
#
# This makes it easy for me to use to Keychain[1]
#
# [1]: https://www.funtoo.org/Keychain
typeset keychain

function keychain_load() {
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

function keychain_source() {
  . "$HOME/.keychain/$HOST-sh" 2>/dev/null
  . "$HOME/.keychain/$HOST-sh-gpg" 2>/dev/null
}

function keychain_wipe() {
  keychain --stop all --quiet --agents gpg,ssh;
  if [ -f "$HOME/.keychain/$HOST-sh" ]; then
    rm -rvf "$HOME/.keychain/$HOST*" && echo "[keychain] All clear on env.";
  fi
}

function () {
  declare expected_keychain_path="$HOME/.keychain/${HOST}-sh"
  echo "[keychain] Searching..."

  if [ -e "${expected_keychain_path}" ]; then
    keychain_source
    ps x | grep ssh-agent | grep -q $SSH_AGENT_PID || {
        echo "[keychain] Stale keychain found; resetting session..."
        keychain_wipe
        keychain_load
        return
    }
    echo "[keychain] Found active session with $(ssh-add -l | wc -l) SSH keys and $(gpg --list-secret-keys | grep 'sec' | wc -l) GPG secret keys."
  else
    echo "[keychain] Found active session with $(ssh-add -l | wc -l) SSH keys and $(gpg --list-secret-keys | grep 'sec' | wc -l) GPG secret keys."
    keychain_load
  fi
}
