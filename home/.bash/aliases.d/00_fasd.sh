#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/aliases.d/00_fasd.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Aliases to move around the computer faster.
# =========================================================================== #

[[ ! -x fasd ]] && return;

eval "$(fasd --init posix-alias)";
