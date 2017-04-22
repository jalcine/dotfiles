#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins/mac_osx.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Do some Mac-specific work.
# =========================================================================== #

# Boot up all of the keys stored in my Keychain. This way, the whole 'keychain'
# app has less work to do.

case $OSTYPE in
  darwin*)
    ssh-add -AX;
esac
