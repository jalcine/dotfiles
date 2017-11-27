# =========================================================================== #
# File: ~/.bash/plugins.d/base16.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Configure base16 for the shell.
# =========================================================================== #

BASE16_SHELL="${HOME}/.config/base16-shell/"

export BASE16_SHELL

[ -n "$PS1" ] \
	&& [ -s $BASE16_SHELL/profile_helper.sh ] \
	&& eval "$($BASE16_SHELL/profile_helper.sh)"

[ -s $HOME/.base16_theme ] && source $HOME/.base16_theme;
