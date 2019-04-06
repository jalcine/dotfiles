#!/usr/bin/env zsh
# This script provides a bit of automation around my use of Keychain[1].
# It's tooled to fetch passwords for my keys from password-store[2].
#
# [1]: https://www.funtoo.org/Keychain

KEYCHAIN_SSH_KEY_DIR=${KEYCHAIN_SSH_KEY_DIR:-$HOME/.ssh/keys}
KEYCHAIN_PASSWORD_PREFIX=${KEYCHAIN_PASSWORD_PREFIX:-}

function keychain_init() {
  eval "$(keychain --eval --agents ssh,gpg)"
}

function keychain_source() {
  source $HOME/.keychain/${HOSTNAME}-sh
  source $HOME/.keychain/${HOSTNAME}-sh-gpg
}

function keychain_wipe() {
  rm $HOME/.keychain/${HOSTNAME}-sh* -rf
}


function keychain_load_keys() {
  for keyPath in $(find ${KEYCHAIN_SSH_KEY_DIR} -type f -name '*.pem')
  do
    declare passPath=$(basename $(dirname ${keyPath}))
    declare passDir=$(basename -s .pem ${keyPath})
    declare passName="${passPath}/${passDir%".pem"}"
    echo "[keychain] Loading ${keyPath} as ${passName}..."
    keychain-add ${passName}
  done
}

function keychain-add() {
  declare keyPath="$HOME/.ssh/keys/${1}.pem"
  pass show ssh${KEYCHAIN_PASSWORD_PREFIX}/${1} | ssh-add "${keyPath}" 2>~/.keychain/startup_err.log >~/.keychain/startup.log
}

function () {
  keychain_source

  ps x | grep ssh-agent | grep SSH_AGENT_PID || {
    echo "[keychain] Stale keychain found; resetting session..."
    keychain_wipe
    keychain_init
  }
}
