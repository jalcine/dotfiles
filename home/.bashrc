#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bashrc
# Author: Jacky Alcine <me@jalcine.me>
# Description: Entry point for interactive shells.
#
# God knows why you're reading this file. You're probably either reading this
# on Github or some way in Hell got one of my machines and currently attempting
# to fuck with my shell. GET OFF MY BLOCK! And keep your lawn!
#
# Seriously though, you'll have better luck doing a grep and find through
# the ~/.bash folder instead of looking here.
# =========================================================================== #

# Load in the system's base bashrc file.
[ -e /etc/bash.bashrc ] && . /etc/bash.bashrc;

# Load in the base 'plugin' for the shell.
. "$HOME/.bash/base.sh"

if [ -z "$PS1" ]; then
  _jalcine_preinit;
else
  _jalcine_fullinit;
fi

[[ -s "/home/jalcine/.gvm/scripts/gvm" ]] && source "/home/jalcine/.gvm/scripts/gvm"
