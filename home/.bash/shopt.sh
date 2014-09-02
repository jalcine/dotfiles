#!/bin/sh

# Vi mode all the time!
set -o vi

# Append all history entries.
shopt -s histappend

# Resize the window after commands.
shopt -s checkwinsize

# Edit the past.
shopt -s histreedit

# Let everyone know we're leaving.
shopt -s huponexit

# Show yourself.
shopt -s expand_aliases

# Who do I mess with?
shopt -s hostcomplete
