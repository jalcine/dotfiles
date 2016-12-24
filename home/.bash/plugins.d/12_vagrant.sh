#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.d/13_vagrant.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Aliases for Vagrant.
# =========================================================================== #

function vagrant_rebuild () {
  vagrant destroy -f $1; vagrant up --provision $1
}
