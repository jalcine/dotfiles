#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Entry point for all plugins.
# =========================================================================== #

load_plugin() {
  source $1;
}

load_default_plugins() {
  local _paths=$(find $HOME/.bash/plugins.d -type l -name "[0-8]*_*.sh" | sort);

  for path in ${_paths}; do
    load_plugin ${path};
  done
}

load_custom_plugins() {
  local _paths=$(find $HOME/.bash/plugins.d -type f -name "9*_*.sh" | sort);

  for path in ${_paths}; do
    load_plugin ${path};
  done
}

load_custom_plugins;
load_default_plugins;
