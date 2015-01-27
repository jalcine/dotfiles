#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Set up for rbenv.
# =========================================================================== #

# Eval our friend into the shell.
eval "$(fasd --init bash-hook)";

export PROMPT_COMMAND="$PROMPT_COMMAND;_fasd_prompt_func";
