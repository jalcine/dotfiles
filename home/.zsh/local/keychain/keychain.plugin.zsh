#!/usr/bin/env zsh
#
# This makes it easy for me to use to Keychain[1]
#
# [1]: https://www.funtoo.org/Keychain
typeset keychain

function keychain_load() {
  async_start_worker jalcine-keychain -u
  async_job jalcine-keychain $HOME/.local/bin/jalcine-keychain-load
}

function keychain_source() {
  async_start_worker jalcine-keychain -u
  async_job jalcine-keychain $HOME/.local/bin/jalcine-keychain-source
}

function keychain_wipe() {
  keychain --stop all --quiet --agents gpg,ssh;
  if [ -f "$HOME/.keychain/$HOST-sh" ]; then
    rm -rvf "$HOME/.keychain/$HOST*" && echo "[keychain] All clear on env.";
  else
    echo "[keychain] Nothing to wipe for ${HOST}"
  fi
}

function () {
  declare expected_keychain_path="$HOME/.keychain/${HOST}-sh"
  echo "[keychain] Scanning for keys..."

  if [ -e "${expected_keychain_path}" ]; then
    keychain_source
    ps x | grep ssh-agent | grep -q $SSH_AGENT_PID || {
        echo "[keychain] Stale keychain found; resetting session..."
        keychain_wipe
        return
    }
  else
    keychain_load
  fi
}
