#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for rbenv.
# =========================================================================== #

if [[ -d $HOME/.perl5/perlbrew ]]; then
  . $HOME/.perl5/perlbrew/etc/bashrc
fi
