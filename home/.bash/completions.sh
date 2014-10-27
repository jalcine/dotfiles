#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/completions.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Entry point for all completions.
# =========================================================================== #

load_completion() {
  [[ -e $1 ]] && source $1;
}

load_default_completions() {
  local _paths=$(find $HOME/.bash/completions.d -type l -name "[0-8]*_*.sh" | sort);

  for path in ${_paths}; do
    load_completion ${path};
  done
}

load_custom_completions() {
  local _paths=$(find $HOME/.bash/completions.d -type f -name "9*_*.sh" | sort);

  for path in ${_paths}; do
    load_completion ${path};
  done
}

load_custom_completions;
load_default_completions;
