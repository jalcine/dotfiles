#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/gvm.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for gvm
# =========================================================================== #

if [[ ! -x gvm ]] && [[ -e $HOME/.gvm/scripts/gvm ]]; then
  . $HOME/.gvm/scripts/gvm
fi
