#!/usr/bin/env bash
# File: ~/.bash/base.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Main point of loading for Bash.
#
# =========================================================================== #

# Function: _jalcine_preinit
# Meant to load logic that's lightweight enough to be used in a non-interactive
# shell.
_jalcine_preinit() {
  . $HOME/.bash/options.sh;
  . $HOME/.bash/plugins.sh;
  . $HOME/.bash/aliases.sh;
}

# Function: _jalcine_init
# Meant to load logic that's for the big leagues, the interactive shell itself.
# TODO: Prevent this from being used when in a interactive shell.
_jalcine_init() {
  . $HOME/.bash/completions.sh;
  . $HOME/.bash/prompt.sh;
}

_jalcine_fullinit() {
  _jalcine_preinit;
  _jalcine_init;
}
