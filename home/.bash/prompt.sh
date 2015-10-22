#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/prompt.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: My magical prompt for Bash.
# =========================================================================== #
# I decided to nuke all of the extra shit that people add into a prompt and
# roll my own version.

jalcine_simple_prompt() {
  echo "${bold_green}$USER${normal}@$(jalcine_current_dir):~ ";
}

jalcine_current_dir() {
  local _pwd="$PWD";
  local _basename="$(basename "$_pwd")";

  if [ "$HOME" = "$_pwd" ]; then
    echo "${bold_red}~${normal}";
  else
    echo "${bold_blue}$_basename${normal}";
  fi
}

jalcine_last_job_status() {
  #local _job_status="$?";
  if [ -z "$_job_status" ]; then
    echo "${bold_red}${_job_status}${normal}";
  fi
}

jalcine_detect_ssh() {
  return [ -z "$SSH_TTY" ];
}

jalcine_detect_tmux() {
  return [ -z "$TMUX"];
}

jalcine_user_and_host() {
  local user="${bold_green}$USER${normal}";
  local host="${bold_yellow}$(hostname)${normal}";
  local result="${user}@${host}";

  if [ "$USER@$(hostname)" = "$JALCINE_HOST" ]; then
    result=""
  else
    result="${result}:"
  fi

  echo "$result";
}

jalcine_vcs() {
  local _new='*'
  local _add='+'
  local _mod='@'
  local _unt='?'
  local _vcs="$(vcprompt -U "$_unt" -M "$_mod" -A "$_add" -u "$_new" -n -t 3)"

  if [ -z "$_vcs" ]; then
    _vcs=""
  else
    _vcs="${_vcs}"
  fi

  echo "${_vcs}"
}

jalcine_prompt() {
  unset PS1;
  if [ -z ${JALCINE_USE_SIMPLE_PROMPT} ]; then
    local _prompt_symbol="${bold_gray}λ${normal}  ";
    local _first_line="$(jalcine_user_and_host)$(jalcine_current_dir) $(jalcine_vcs)";
    local _second_line="$PS1$(jalcine_last_job_status) ${_prompt_symbol}";
    local _first_line_width=$(echo ${_first_line} | wc -c );

    if [ "${_first_line_width}" -gt 78 ]; then
      local _first_line="${_first_line}\n";
    fi

    export PS1="${_first_line}${_second_line}";
  else
    export PS1="$(jalcine_simple_prompt)";
  fi
}

case $PROMPT_COMMAND in
  *jalcine_prompt*)
    ;;
  *)
    PROMPT_COMMAND="jalcine_prompt;$PROMPT_COMMAND"
    ;;
esac
