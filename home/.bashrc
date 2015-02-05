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

# Load our base Bash setup.
[[ -z $JALCINE_BASH ]] && source $HOME/.bash/base.sh
