#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/completions.d/00_homeshick.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Set up logic for homeshick.
# =========================================================================== #

source $HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash

# Enable expansion for alias as well.
complete -o default -F _homeshick_complete hsh
