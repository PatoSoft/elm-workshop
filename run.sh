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
  local output=`$cmd`

  echo "$output"
  if [ $? != 0 ] 
  then
    echo $output
    return 1
  fi
  echo "$?"
  echo "not zero"
  return 0
}

pushd ./Part1-Language
for testFile in $(find 'tests' -iname '*.elm' | sort -z)
do
  execute_test $testFile

  if [ $? != 0 ] 
  then
    popd 
    exit 0;
  fi
done
