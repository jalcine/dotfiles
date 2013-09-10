#!/usr/bin/env bash
###########################################################
## ~/.bashrc: executed by bash(1) for non-login shells.
##
## @author Jacky Alcine <me@jalcine.me>
## @date 07-06-2013 22:49 UTC-05:00
##
## Jacky Alcine's root personal Bash configuration.
###########################################################

###########################################################
## Miscellaneous
###########################################################
# If not running interactively, don't do anything.
[ -z "$PS1" ] && return
# Print out files a bit cleaner when using 'less'.
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# Give me a fortune if I'm not in tmux.
[ -z $TMUX ] && fortune -e
###########################################################
## History 
###########################################################
# Keep a relative short immediate history.
HISTSIZE=8
# Keep the core history file quite large.
HISTFILESIZE=42949673
# Ignore duplicates and whitespace.
HISTCONTROL=ignoredups:ignorespace
# Use UTF-8 encoding.
LC_ALL=en_US.UTF-8
# Update time zone.
TZ="America/New_York"
# Export data.
export HISTSIZE HISTFILESIZE HISTCONTROL LC_ALL TZ

###########################################################
## Modules
###########################################################
# Load the system's completions.
. $HOME/.bash/shopt.sh
. $HOME/.bash/variables.sh
. $HOME/.bash/path.sh
. $HOME/.bash/bash-it.sh

# On KDE, attempt to add the SSH keys by default.
[[ -d "$HOME/.kde" ]] && $HOME/.kde/Autostart/AddSshKeys.sh

# Print out our bad guy.
export PS1
