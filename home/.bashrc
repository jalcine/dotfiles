#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bashrc
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Entry point for interactive shells.
# =========================================================================== #

# Load in the system's base bashrc file.
[ -e "/etc/bash.bashrc" ] && source /etc/bash.bashrc;

# Load in the base 'plugin' for the shell.
source "$HOME/.bash/base.sh"

if [ -z "$PS1" ]; then
  _jalcine_preinit;
else
  _jalcine_fullinit;
fi
