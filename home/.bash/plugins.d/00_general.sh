#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins/general.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Helper methods for the shell.
# =========================================================================== #

function mkcd {
  if [[ ! -x "$1" ]]; then
    mkdir -p "$1";
  fi

  cd "$1" || exit;
}

function ipinfo {
  curl "ipinfo.io/${1}";
}

function resrc {
  # shellcheck disable=SC1090
  source ~/.bashrc
}
