#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/prompt.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: My magical prompt for Bash.
# =========================================================================== #
# I decided to nuke all of the extra shit that people add into a prompt and
# roll my own version.

jalcine_current_dir() {
  if [[ $HOME == "$PWD" ]]; then
    printf "${bold_red}~${normal}";
  else
    printf "${bold_white}$(basename "$PWD")${normal}";
  fi
}

jalcine_last_job_status() {
  local _job_status="$?";
  if [[ -z $_job_status ]]; then
    printf "${bold_red}${_job_status}${normal}";
  fi
}

jalcine_user_and_host() {
  local user="${bold_white}$USER${normal}";
  local host="${bold_yellow}$(hostname)${normal}";
  local result="${user}@${host}";

  if [ "$USER@$(hostname)" = "$JALCINE_HOST" ]; then
    result="🏠 "
  else
    result="${result}:"
  fi

  printf "$result";
}

jalcine_vcs() {
  local _vcs="$(vcprompt -u '?' -n -t 10)"

  if [[ -z $_vcs ]]; then
    _vcs=""
  else
    _vcs="${_vcs}"
  fi

  printf "${_vcs}"
}

function jalcine_prompt {
  local _prompt_symbol="${bold_gray}λ${normal} ";
  local _first_line="$(jalcine_vcs) $(jalcine_user_and_host)"
  local _second_line="$(jalcine_current_dir) $(jalcine_last_job_status)${_prompt_symbol}";
  local _first_line_length=$(printf ${_first_line} | wc -c);
  if [ $_first_line_length -ge 79 ]; then
    export PS1="${_first_line}\n${_second_line} ";
  else
    export PS1="${_first_line}${_second_line}";
  fi
}

case $PROMPT_COMMAND in
  *jalcine_prompt*)
    ;;
  *)
    PROMPT_COMMAND="jalcine_prompt;$PROMPT_COMMAND"
    ;;
esac
