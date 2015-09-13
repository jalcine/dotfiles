#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/nvm.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for nvm.sh
# =========================================================================== #

# Source in NVM if we find it.
if [[ ! -x nvm ]] && [[ -e $HOME/.nvm/nvm.sh ]]; then
  source $HOME/.nvm/nvm.sh;
fi
