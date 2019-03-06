#!/usr/bin/env zsh
# shellcheck disable=SC2086,SC2038,SC2154,SC2086
#
# This makes it easy for me to use to Keychain[1].
#
# [1]: https://www.funtoo.org/Keychain
typeset keychain

function keychain_load() {
  eval "$(keychain --attempts 5 --inherit any --eval --agents gpg,ssh)";

  for key in $(find $HOME/.ssh/keys -type f -name "*.pem" | xargs)
  do
    keychain-pass-add ${key}
  done
}

function keychain-pass-add () {
  declare keyPath="$HOME/.ssh/keys/${1}.pem"
  declare passPath=$(basename $(dirname ${keyPath}))
  declare passDir=$(basename -s .pem ${keyPath})
  declare passName="${passPath}/${passDir%".pem"}"

  echo "[keychain] Importing SSH key '${passName}'...";
  declare pw="$(pass show ssh${KEYCHAIN_PASSWORD_PREFIX:-}/${passName})"
  echo "${pw}" | ssh-add "${keyPath}" 2>~/.keychain/startup_err.log >~/.keychain/startup.log
}

function keychain_source() {
  . "$HOME/.keychain/$HOST-sh" 2>/dev/null
  . "$HOME/.keychain/$HOST-sh-gpg" 2>/dev/null
}

function keychain_wipe() {
  keychain -k --stop all --agents gpg,ssh;

  if [ -f "$HOME/.keychain/$HOST-sh" ]; then
    rm -rv "$HOME/.keychain/$HOST*" && echo "[keychain] Cleared out agents.";
  else
    echo "[keychain] Nothing to wipe for '${HOST}'."
  fi
}

function () {
  declare expected_keychain_path="$HOME/.keychain/${HOST}-sh"
  echo "[keychain] Scanning for active SSH and GPG agents..."

  keychain_source

  if [ -e "${expected_keychain_path}" ]; then
    ps x | grep ssh-agent | grep -q $SSH_AGENT_PID || {
        echo "[keychain] Stale keychain found; resetting session..."
        keychain_wipe
        keychain_load
    }
  else
    echo "[keychain] No session in place. Beginning key load..."
    keychain_load
  fi

  keychain_source
}
