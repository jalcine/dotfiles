#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/rbenv.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up for rbenv.
# =========================================================================== #

# Eval our friend into the shell.
eval "$(fasd --init bash-hook)";

case $PROMPT_COMMAND in
  *_fasd_prompt_func*)
    ;;
  *\;*)
    PROMPT_COMMAND="_fasd_prompt_func;$PROMPT_COMMAND"
    ;;
  "")
    PROMPT_COMMAND="_fasd_prompt_func"
    ;;
esac
