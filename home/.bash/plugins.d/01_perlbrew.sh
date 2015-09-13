#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for rbenv.
# =========================================================================== #

if [[ -d $HOME/.perl5/perlbrew ]]; then
  . $HOME/.perl5/perlbrew/etc/bashrc
fi
