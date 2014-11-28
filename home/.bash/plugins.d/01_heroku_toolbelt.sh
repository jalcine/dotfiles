#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/heroku.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Injects Heroku into the mix.
# =========================================================================== #

if [[ -x /usr/local/heroku ]]; then
  export PATH="/usr/local/heroku/bin:$PATH";
fi
