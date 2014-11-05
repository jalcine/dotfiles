#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Aliases to make having a Debian machine a little easier
# =========================================================================== #

# Package installation and removal.
alias addpkg="sudo apt-get install"
alias delpkg="sudo apt-get remove"
alias findpkg="apt-cache search"

# System level changes
alias updatepkgs="sudo apt-get update"
alias upgradepkgs="sudo apt-get upgrade"
alias cleanuppkgs="sudo apt-get clean"

# Package Information
alias showpkg="apt-cache show"
alias statpkg="apt-cache policy"
