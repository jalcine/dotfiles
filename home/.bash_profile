#!/bin/bash

if [[ -L "$HOME/.bash/config.sh" ]]; then
  . $HOME/.bash/config.sh
else
  echo "[bash] Can't load configuration!"
fi