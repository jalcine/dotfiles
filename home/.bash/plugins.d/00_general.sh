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

function codi() {
 local syntax="${1:-python}"
 shift
 nvim -c \
   "let g:startify_disable_at_vimenter = 1 |\
   set bt=nofile ls=0 noru nonu nornu |\
   hi ColorColumn ctermbg=NONE |\
   hi VertSplit ctermbg=NONE |\
   hi NonText ctermfg=0 |\
   Codi $syntax" "$@"
}

