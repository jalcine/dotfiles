#!/usr/bin/env bash
# vim: set fdm=marker :
# =========================================================================== #
# File: ~/.bash/plugins.d/tmux.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Making tmux easier to use.
# =========================================================================== #

# {{{ SSH Forwarding
SOCK="/tmp/ssh-agent-$USER-tmux"

if [[ -S $SSH_AUTH_SOCK ]] && [[ $SSH_AUTH_SOCK != $SOCK ]]
then
    rm -f /tmp/ssh-agent-$USER-tmux
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi
# }}}
