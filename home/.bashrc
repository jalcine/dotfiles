#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bashrc
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Entry point for interactive shells.
# =========================================================================== #

# If we not interactive, don't do shit.
case $- in
    *i*) ;;
      *) return;;
esac

# Load in the base 'plugin' for the shell.
source "$HOME/.bash/base.sh"

_jalcine_fullinit;

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
