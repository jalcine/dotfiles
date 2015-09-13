#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for rbenv.
# =========================================================================== #

if [[ -d $HOME/.rbenv ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH";
  eval "$(rbenv init -)";
fi
