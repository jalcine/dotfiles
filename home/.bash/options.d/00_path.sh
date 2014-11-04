#!/usr/bin/env bash
# =========================================================================== #
# File: $HOME/.bash/options.d/03_path.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: Place where I set up my generic path options.
# =========================================================================== #

# My custom built binaries, if I make any
if [[ -d "$HOME/.local/bin" ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi
