#!/bin/bash

function require_cmd() {
  local cmd=$1
  local url=$2

  if ! command -v $cmd &> /dev/null
  then
    echo "$cmd not found"
    echo "please install it from here: "
    echo "$url"
    exit 0
  fi
}

