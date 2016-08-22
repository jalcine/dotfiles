#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/completions.d/default.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Sources in all of the default completions.
#
# I add this because I tend to wipe these out.
# =========================================================================== #

if [[ -d /usr/local/etc/bash_completion.d ]]; then
  find /usr/local/etc/bash_completion.d -type f | while read -r file
  do
    source "$file"
  done
fi

if [[ -d /usr/etc/bash_completion.d ]]; then
  find /usr/etc/bash_completion.d -type f | while read -r file
  do
    source "$file"
  done
fi
