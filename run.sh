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

function show_explanation {
  local file=$1
  sed '/^-}/q' "$file" | sed  '2d;$d'
  echo "-----------------------"
  echo ""
  echo "Press enter to start"
  read 
}

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
}

function show_step {
  local file=$1

  show_explanation $file
  execute_test $file
}

pushd ./Part1-Language
for testFile in $(find 'tests' -iname '*.elm' | sort)
do
  show_step $testFile
done
