#!/usr/bin/env bash
# vim: set fdm=marker :
# =========================================================================== #
# File: ~/.bash/plugins.d/tmux.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Making tmux easier to use.
# =========================================================================== #

# {{{ SSH Forwarding
SOCK="$HOME/.ssh-agent-$USER-tmux"

if [[ ! -S $SSH_AUTH_SOCK ]] && [[ $SSH_AUTH_SOCK != $SOCK ]]
then
    test -e $SOCK && rm -f $SOCK;
    ln -sf $SSH_AUTH_SOCK $SOCK;
    export SSH_AUTH_SOCK=$SOCK;
fi
# }}}
