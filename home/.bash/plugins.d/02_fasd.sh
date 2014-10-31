#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for rbenv.
# =========================================================================== #

# Eval our friend into the shell.
[[ -x fasd ]] || return;

eval "$(fasd --init bash-hook)";
