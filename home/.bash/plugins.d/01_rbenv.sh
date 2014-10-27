#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for rbenv.
# =========================================================================== #

if [[ -x rbenv ]]; then
  eval "$(rbenv init -)";
fi
