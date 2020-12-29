#!/bin/bash

function show_explanation {
  local file=$1
  sed '/^-}/q' "$file" | sed  '2d;$d'
  echo "-----------------------"
}

function wait_to_start {
  echo ""
  echo "Press enter to start"
  read 
}

function execute_test {
  local file=$1
  local run_once=${2-'false'}
  local cmd="elm-test $file --color"
  local output=$($cmd 2>&1)

  while grep -qie 'TEST RUN FAILED\|Compilation failed' <<< "$output";
  do
    echo -E "$output"

    if [ "$run_once" == "false" ]
    then
      fswatch -1 -0 'src' #| xargs -0 -n 1 -I {} "pwd"
      output=$($cmd 2>&1)
    else
      output=""
    fi
  done
}
