#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/prompt.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: My magical prompt for Bash.
# =========================================================================== #
# I decided to nuke all of the extra shit that people add into a prompt and
# roll my own version.

jalcine_current_dir() {
  # TODO Make this bold!
  if [[ $HOME == "$PWD" ]]; then
    printf "${bold_red}~${normal} ";
  else
    printf "${bold_white}$(basename $PWD)${normal} ";
  fi
}

jalcine_last_job_status() {
  local _job_status="$?";
  if [[ ! -n $_job_status && $_job_status != 0 ]]; then
    echo -e "${bold_red}${_job_status} ${normal}";
  fi
}

jalcine_user_and_host() {
  local user="${bold_white}$USER${normal}";
  local host="${bold_orange}$(hostname)${normal}";

  printf "${user}@${host} ";
}

jalcine_vcs() {
  local _vcs="$(vcprompt -u '?' -n -t 100)"

  if [[ -z $_vcs ]]; then
    _vcs=" "
  else
    _vcs=" ${_vcs}"
  fi

  printf "${_vcs}"
}

function jalcine_prompt {
  # TODO Make this reflexive when under 'n' directories frome $HOME.
  # TODO Allow definition of a symbol (i.e: '~') when at home.
  # TODO Give this some damn color!

  # The first line should have the most information like directory information,
  # last job status, git info and the likes.

  local _prompt_symbol="${bold_white}λ${normal} ";
  export PS1="$(jalcine_user_and_host)$(jalcine_current_dir)$(jalcine_vcs)\n\
 $(jalcine_last_job_status)${_prompt_symbol}";
}

export PROMPT_COMMAND="jalcine_prompt"
