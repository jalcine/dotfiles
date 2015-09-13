#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/05_gitignore.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Git ignore downloader.
# =========================================================================== #

gi() {
  curl -L -s https://www.gitignore.io/api/"${@}" ;
}
