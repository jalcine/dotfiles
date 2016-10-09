# =========================================================================== #
# File: ~/.bash/options.d/02_fzf.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Setting up options for `fzf`
# =========================================================================== #

export FZF_DEFAULT_COMMAND FZF_DEFAULT_OPTS

FZF_DEFAULT_COMMAND="ag -g --nogroup --column --smart-case --follow"
FZF_DEFAULT_OPTS=""
