#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/prompt.sh
# Author: Jacky Alcine <me@jalcine.me>
# Description: My magical prompt for Bash.
# =========================================================================== #
# I decided to nuke all of the extra shit that people add into a prompt and
# roll my own version.

jalcine_current_dir() {
  local _pwd="$PWD";
  local _basename="$(basename "$_pwd")"

  if [ "$HOME" = "$_pwd" ]; then
    echo "${bold_red}~${normal}";
  else
    echo "${bold_white}$_basename${normal}";
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
  local user="${bold_white}$USER${normal}";
  local host="${bold_yellow}$(hostname)${normal}";
  local result="${user}@${host}";

  if [ "$USER@$(hostname)" = "$JALCINE_HOST" ]; then
    result="🏠 "
  else
    result="${result}:"
  fi

  echo "$result";
}

jalcine_vcs() {
  local _new='💩 '
  local _add='+'
  local _mod='💥'
  local _vcs="$(vcprompt -M "$_mod" -A "$_add" -u "$_new" -n -t 3)"

  if [ -z "$_vcs" ]; then
    _vcs=""
  else
    _vcs="${_vcs}"
  fi

  echo "${_vcs}"
}

jalcine_prompt() {
  local _prompt_symbol="${bold_gray}λ${normal} ";
  export PS1="$(jalcine_user_and_host)$(jalcine_current_dir)$(jalcine_vcs)"
  export PS1="$PS1$(jalcine_last_job_status) ${_prompt_symbol}";
}

case $PROMPT_COMMAND in
  *jalcine_prompt*)
    ;;
  *)
    PROMPT_COMMAND="jalcine_prompt;$PROMPT_COMMAND"
    ;;
esac
