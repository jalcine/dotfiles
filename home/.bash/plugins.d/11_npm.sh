#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/11_npm.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Plugin search for npm.
# =========================================================================== #

npm_search() {
  npm search $1 | most
}
