#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/aliases.d/13_vagrant.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Aliases for Vagrant.
# =========================================================================== #

alias vd="vagrant destroy";
alias vagrant_rebuild="vagrant destroy -f; vagrant up --provision";
alias vssh="vagrant ssh";
alias vgs="vagrant global-status";
alias vp="SSH_AUTH_SOCK='' vagrant provision";
