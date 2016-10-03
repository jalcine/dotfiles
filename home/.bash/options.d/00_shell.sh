#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/options.d/03_shell.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Options to manipulate the shell.
# =========================================================================== #

# If you're curious as to what this does, run `man bash` then type `/shopt \[`
# to jump directly to the shopt command.

shopt -s cdspell
shopt -s histappend

# Options to ensure GPG plays nice.
GPG_TTY=$(tty)
export GPG_TTY
