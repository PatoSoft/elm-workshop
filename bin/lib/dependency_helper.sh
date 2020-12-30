#!/bin/bash

function require_cmd() {
  local cmd=$1
  local title=$2
  local copy=$3

  if ! command -v $cmd &> /dev/null
  then
    echo "$cmd not found"
    echo "$title"
    echo "$copy"
    exit 0
  fi
}

