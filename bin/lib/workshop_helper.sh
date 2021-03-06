#!/bin/bash
require 'progress_bar.sh'

function show_explanation {
  local file=$1
  sed '/^-}/q' "$file" | sed '1d;2d;3d;$d' | sed -e 's/^   //'

  echo "-----------------------"
}

function wait_to_start {
  echo ""
  echo "Press enter to continue"
  read 
}

fake_tty () {
  # copied from https://stackoverflow.com/a/57381061

  # Produce a script that runs the command provided to fake_tty as
  # arguments 
  cmd="$(printf '%q ' "$@")"

  # Run the script through /bin/sh with fake tty
  if [ "$(uname)" = "Darwin" ]; then
    # MacOS
    script -Fq /dev/null /bin/sh -c "$cmd"
  else
    script -qfc "/bin/sh -c $(printf "%q " "$cmd")" /dev/null
  fi
}

function execute_test {
  local file=$1
  local run_once=${2-'false'}
  local cmd="fake_tty elm-test $file"
  local output=$($cmd 2>&1)

  while grep -qiE 'TEST RUN FAILED|Compilation failed|NAMING ERROR|TYPE MISMATCH' <<< "$output";
  do
    echo "$output"

    if [ "$run_once" == "false" ]
    then
      fswatch -1 -0 'src' #| xargs -0 -n 1 -I {} "pwd"
      output=$($cmd 2>&1)
    else
      output=""
      return 1
    fi
  done

  return 0
}

function progress_bar_initialised {
  LC_ALL=C type progress_bar_increase  > /dev/null 2>&1
  return $?
}

function show_step {
  local file=$1
  local total_exercises=${2:-"0"}

  execute_test $file 'true' > /dev/null
  local result=$?


  if [ "$total_exercises" -ne "0" ]; then
    clear
    echo "Progress so far:"
    progress_bar_initialised || progress_bar $total_exercises

    progress_bar_increase

    echo
    echo
  fi

  if [ $result -ne 0 ]; then
    show_explanation $file

    wait_to_start
    execute_test $file
  fi
}
