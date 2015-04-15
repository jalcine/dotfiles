#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/completions.d/npm.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up completions for npm.
# =========================================================================== #

[ -x npm ] && eval "$(npm completion)";
