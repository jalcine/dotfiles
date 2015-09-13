#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/heroku.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Injects Heroku into the mix.
# =========================================================================== #

if [ -d /usr/local/heroku ]; then
  export PATH="/usr/local/heroku/bin:$PATH";
fi
