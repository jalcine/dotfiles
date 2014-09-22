#!/bin/bash
# @author Jacky Alciné <me@jalcine.me>

# Keep a relative short immediate history.
HISTSIZE=32

# Keep the core history file quite large.
HISTFILESIZE=42949673

# Ignore some things people don't need to know.
HISTIGNORE="&:pwd:ls:ll:lal:[bf]g:exit:rm*:sudo rm*:_*"

# Ignore duplicates and whitespace.
HISTCONTROL=ignoredups:ignorespace

# Use UTF-8 encoding.
LC_ALL=en_US.UTF-8

# Speak English (I have French installed as well).
LANGUAGE=en_US.UTF-8

# Update time zone.
TZ="America/New_York"

# Export data.
export HISTSIZE HISTIGNORE HISTFILESIZE HISTCONTROL LC_ALL TZ LANGUAGE

. $HOME/.bash/shopt.sh
. $HOME/.bash/variables.sh


# If not running interactively, don't do anything. Helps makes batch commands a
# bit faster.
[ -z "$PS1" ] && return

. $HOME/.bash/bash-it.sh

# Print out our bad guy.
export PS1

# Now swap that mapping.
[ -x xmodmap ] && xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
