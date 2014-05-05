#!/usr/bin/env bash

# Add our local binary files if they exists.
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"

# IF and ONLY IF
[ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"
[ -d "/usr/local/bin" ] && export PATH="/usr/local/bin:$PATH"

