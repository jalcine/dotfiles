#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/completions.d/fasd.h
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for fasd.
# =========================================================================== #

[[ -x fasd ]] || return;

eval "$(fasd --init bash-ccomp bash-ccomp-install)";
_fasd_bash_hook_cmd_complete v o
