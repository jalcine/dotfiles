#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/aliases.d/00_fasd.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Aliases to move around the computer faster.
# =========================================================================== #

eval "$(fasd --init posix-alias)";

alias v="f -t -e vim -b viminfo"
alias o="a -e xdg-open"
