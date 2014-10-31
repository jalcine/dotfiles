#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/completions.d/fasd.h
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for fasd.
# =========================================================================== #

[[ -x fasd ]] || return;

eval "$(fasd --init bash-ccomp)";
