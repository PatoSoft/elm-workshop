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

require_cmd 'npm' 'https://nodejs.org/en/'
require_cmd 'elm' 'https://guide.elm-lang.org/install/elm.html'
require_cmd 'fswatch' 'https://emcrisostomo.github.io/fswatch/getting.html'

# Install fswatch

function execute_test {
  local file=$1
  local cmd="elm-test $file"
  local output=$($cmd 2>&1)

  while grep -qie 'TEST RUN FAILED\|Compilation failed' <<< "$output";
  do
    echo -E "$output"
    fswatch -1 -0 'src' #| xargs -0 -n 1 -I {} "pwd"
    output=$($cmd 2>&1)
  done
  echo 'passed'
}

pushd ./Part1-Language
for testFile in $(find 'tests' -iname '*.elm' | sort)
do
  execute_test $testFile
done
