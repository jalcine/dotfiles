# =========================================================================== #
# File: ~/.bash/options.d/02_fzf.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Setting up options for `fzf`
# =========================================================================== #

FZF_DEFAULT_COMMAND="ag -g --nogroup --column --smart-case --follow"
FZF_DEFAULT_OPTS=""

if [ -x rg ]; then
  FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
fi

export FZF_DEFAULT_COMMAND FZF_DEFAULT_OPTS
