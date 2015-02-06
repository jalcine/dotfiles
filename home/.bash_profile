# =========================================================================== #
# File: ~/.bash_profile
# Author: Jacky Alcine <me@jalcine.me>
# Description: Entry point for all shells on login (at least on Linux).
# =========================================================================== #

# Load in the base 'plugin' for the shell.
source $HOME/.bash/base.sh

# Load the whole damned thing.
if [ -z $PS1 ]; then
  _jalcine_init;
else
  _jalcine_fullinit;
fi

