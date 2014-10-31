#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/nvm.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for nvm.sh
# =========================================================================== #

# Source in NVM if we find it.
if [[ ! -x nvm ]]; then
  source $HOME/.nvm/nvm.sh;
fi
