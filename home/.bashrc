#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bashrc
# Author: Jacky Alcine <me@jalcine.me>
# Description: Entry point for interactive shells.
# =========================================================================== #


# Load in the system's base bashrc file.
[[ -e /etc/bash.bashrc ]] && source /etc/bash.bashrc;

# Load in our options for the shell.
# TODO Make this into a loop so that we can just include on the fly.
. $HOME/.bash/lib.sh
. $HOME/.bash/options.sh;
[ -z $PS1 ] && . $HOME/.bash/prompt.sh;
. $HOME/.bash/aliases.sh;
. $HOME/.bash/plugins.sh;
. $HOME/.bash/completions.sh;
