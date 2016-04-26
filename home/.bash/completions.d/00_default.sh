#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/completions.d/default.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Sources in all of the default completions.
#
# I add this because I tend to wipe these out.
# =========================================================================== #

[[ ! -d /usr/local/etc/bash_completion.d ]] && exit;

find /usr/local/etc/bash_completion.d -type l | while read -r file
do
  source "$file"
done
