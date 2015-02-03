#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bashrc
# Author: Jacky Alcine <me@jalcine.me>
# Description: Entry point for interactive shells.
#
# God knows why you're reading this file. You're probably either reading this
# on Github or some way in Hell got one of my machines and currently attempting
# to fuck with my shell. GET OFF MY BLOCK! And keep your lawn!
# =========================================================================== #

# Load in the system's base bashrc file.
[[ -e /etc/bash.bashrc ]] && source /etc/bash.bashrc;

# Load in our options for the shell.
# TODO Make this into a loop so that we can just include on the fly.
. $HOME/.bash/lib.sh
. $HOME/.bash/options.sh;
. $HOME/.bash/aliases.sh;
. $HOME/.bash/plugins.sh;
. $HOME/.bash/completions.sh;

if [[ ! -z $PS1 ]]; then
  . $HOME/.bash/prompt.sh;
fi
[[ -s "/home/jalcine/.gvm/scripts/gvm" ]] && source "/home/jalcine/.gvm/scripts/gvm"
