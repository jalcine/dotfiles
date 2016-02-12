#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/13_vagrant.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Aliases for Vagrant.
# =========================================================================== #

function vd() {
  vagrant destroy $1
}

function vagrant_rebuild () {
  vagrant destroy -f $1; vagrant up --provision $1
}

function vssh () {
  vagrant ssh $1;
}

function vp () {
  SSH_AUTH_SOCK='' vagrant provision $1;
}

function vu () {
  vagrant up $1;
}
