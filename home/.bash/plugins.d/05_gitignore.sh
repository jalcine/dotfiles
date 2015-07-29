#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/05_gitignore.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Git ignore downloader.
# =========================================================================== #

gi() {
  curl -L -s https://www.gitignore.io/api/"${@}" ;
}
