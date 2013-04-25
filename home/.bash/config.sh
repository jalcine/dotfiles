#!/usr/bin/env bash
###########################################################
## ~/.bashrc: executed by bash(1) for non-login shells.
##
## @author Jacky Alcine <me@jalcine.me>
## 01-08-2013 21:23 UTC-05:00
##
## Jacky Alcine's personal ~/.bashrc script.
##
## This is tailored for my desktop system and thus, relies on a few
## external scripts to add some more pizazz
###########################################################

###########################################################
## Miscelleaneous
###########################################################
# If not running interactively, don't do anything.
[ -z "$PS1" ] && return
# Print out files a bit cleaner when using 'less'.
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# Make sure we're running wisely.
export LANG=en_US.UTF-8

fortune -e
###########################################################
## History 
###########################################################
# Keep a relative short immediate history.
HISTSIZE=8
# Keep the core history file quite large.
HISTFILESIZE=42949673
# Ignore duplicates and whitespaces.
HISTCONTROL=ignoredups:ignorespace

###########################################################
## Modules
###########################################################
# Load the system's completions.
. ~/.bash/shopt.sh
. ~/.bash/variables.sh
. ~/.bash/undistract-me.sh
. ~/.bash/path.sh
. ~/.bash/bash-it.sh

## Finally, show our prompt.
export PS1
