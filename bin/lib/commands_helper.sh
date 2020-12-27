#!/bin/bash

_LIB_DIR_EXPOSED_FOR_HELPERS="${BASH_SOURCE%/*}"
_PROJECT_DIR_EXPOSED_FOR_HELPERS="${BASH_SOURCE%/*/*}"
_PROJECT_NAME_EXPOSED_FOR_HELPERS=$(basename $0)
_COMMAND_DIR_EXPOSED_FOR_HELPERS="$_PROJECT_DIR_EXPOSED_FOR_HELPERS/${_PROJECT_NAME_EXPOSED_FOR_HELPERS}_"

function commands_path {
  echo "$_COMMAND_DIR_EXPOSED_FOR_HELPERS/$1"
}

function project_path {
  echo "$_PROJECT_DIR_EXPOSED_FOR_HELPERS/$1"
}

function project_name {
  echo "$_PROJECT_NAME_EXPOSED_FOR_HELPERS"
}

function require {
  local target_file="$1"

  if [[ -f "$_LIB_DIR_EXPOSED_FOR_HELPERS/$target_file" ]]; then
    source "$_LIB_DIR_EXPOSED_FOR_HELPERS/$target_file"
  else
    echo "can't find $target_file in the lib folder"
    exit 1
  fi
}

function require_relative {
  local current_file="$0"
  local current_file_dir=$(dirname "${BASH_SOURCE[1]}")
  local required_file="$PWD/$current_file_dir/$1"

  source "$required_file"
}

function show_help {
  local help_command=$(commands_path "help")
  $help_command $@
}

function find_existing_command_path {
  local command="$_COMMAND_DIR_EXPOSED_FOR_HELPERS/$1"
  local sub_command="$_COMMAND_DIR_EXPOSED_FOR_HELPERS/$1_/$2"

  if [[ -f "$sub_command" && -x "$sub_command" ]]; then
    echo "$sub_command"
  elif [[ -f "$command" && -x "$command" ]]; then
    echo "$command"
  else
    echo "/??/"
  fi
}

function generate_path_for_new_command {
  if [[ "$(validate_command_name $1)" == "1" ]]; then 
    echo 'invalid command name'
    exit 1
  fi

  local path_to_the_new_command="$_COMMAND_DIR_EXPOSED_FOR_HELPERS/$1"
  if [[ "$2" != "" ]]; then
    if [[  "$(validate_command_name $2)" == "1" ]]; then
      echo 'invalid sub command name'
    else
      path_to_the_new_command="$_COMMAND_DIR_EXPOSED_FOR_HELPERS/$1_/$2"
    fi
  fi
  echo "$path_to_the_new_command"
}

function validate_command_name {
  echo "$1"
  if [[ ! $1 =~ ^[0-9a-zA-Z_-]+$ ]]; then
    return 1
  fi
  return 0
}

function file_name_to_command {
  echo "$1" | sed "s|^$_COMMAND_DIR_EXPOSED_FOR_HELPERS||g" | sed "s/_\// /g" | sed 's/\///g'
}

function execute_command {
  local command_path=$(find_existing_command_path ${@:1})
  local formatted_caller=$(awk '{printf "%s:%s", $2, $1}' <<< "$(caller)")

  if is_sub_command "${@:1}"; then
    $command_path "${@:3}"

    if [[ $? -ne 0 ]]; then
      log_error "error executing command: 'execute_command ${@}' from $formatted_caller"
      exit 1
    fi
  elif [[ -f "$command_path" ]]; then
    $command_path "${@:2}"

    if [[ $? -ne 0 ]]; then
      log_error "error executing command: 'execute_command ${@}' from $formatted_caller"
      exit 1
    fi
  elif [[ -z "$1" ]]; then
    show_help "${@:2}"
    exit 0
  else
    log_error "Sorry, I don't know how to run command: $1"
    show_help "${@:2}"
    exit 1
  fi
}

function is_sub_command {
  local sub_command="$_COMMAND_DIR_EXPOSED_FOR_HELPERS/$1_/$2"

  if [[ -f "$sub_command" && -x "$sub_command" ]]; then
    true
  else
    false
  fi
}

function green {
  local arr="$@"
  printf "\033[0;32m%s\033[0m" "${arr[@]}"
}

function red {
  local arr="$@"
  printf "\033[0;31m%s\033[0m" "${arr[@]}"
}

function log_error {
  >&2 echo "$(red "$@")"
}

export -f require
export -f show_help
export -f require_relative
export -f execute_command

export -f commands_path
export -f project_path
export -f project_name

export -f find_existing_command_path
export -f validate_command_name
export -f generate_path_for_new_command 
export -f file_name_to_command
export -f is_sub_command

export -f red
export -f green

export -f log_error

export _LIB_DIR_EXPOSED_FOR_HELPERS
export _COMMAND_DIR_EXPOSED_FOR_HELPERS
export _PROJECT_DIR_EXPOSED_FOR_HELPERS
export _PROJECT_NAME_EXPOSED_FOR_HELPERS
