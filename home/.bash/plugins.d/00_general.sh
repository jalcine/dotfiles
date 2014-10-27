#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins/general.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Helper methods for the shell.
# =========================================================================== #

function mkcd {
  if [[ ! -x $1 ]];
    mkdir -p $1;
  fi

  cd $1;
}
