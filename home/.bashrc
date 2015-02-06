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
[[ -e /etc/bash.bashrc ]] && source /etc/bash.bashrc;

# Load in the base 'plugin' for the shell.
source $HOME/.bash/base.sh

# Minimal load.
_jalcine_preinit;
export JALCINE_BASHRC_LOADED=1
