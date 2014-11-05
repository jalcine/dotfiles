#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/aliases.d/00_git.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Aliases for git.
# =========================================================================== #

# Yes. All of the yes. Jeebus.
alias g="git"

# Status helpers.
alias gst="git status --short --branch"

alias ga="git add"
alias gb="git branch"
alias gco="git checkout"
alias gc="git commit"
alias gca="git commit --all"
alias gp="git push"
alias gfa="git fetch --all"

alias gdf="git diff --stat"
alias gsh="git show HEAD"

alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grs="git rebase --skip"

alias gcl="git clone"
