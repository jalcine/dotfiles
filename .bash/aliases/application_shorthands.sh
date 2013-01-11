#!/usr/bin/env bash
#
# Provides shorthand notations for applications used often.

## Interpretive languages.
## I'm using 'which' here just to make life a bit easier for me.
alias rb="ruby"
alias py="python"
alias js="node"
alias prl="perl"

## Apt simplification
alias sys_up="sudo apt-get update && sudo apt-get upgrade"
alias addpkg="sudo apt-get install"
alias delpkg="sudo apt-get remove"
alias showpkg="apt-cache show"
alias findpkg="apt-cache search"
