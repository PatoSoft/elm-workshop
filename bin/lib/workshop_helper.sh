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

faketty () {
  # copied from https://stackoverflow.com/a/57381061
  tmp=$(mktemp)

  # Ensure it worked or fail with status 99
  [ "$tmp" ] || return 99

  # Produce a script that runs the command provided to faketty as
  # arguments and stores the status code in the temporary file
  cmd="$(printf '%q ' "$@")"'; echo $? > '$tmp

  # Run the script through /bin/sh with fake tty
  if [ "$(uname)" = "Darwin" ]; then
    # MacOS
    script -Fq /dev/null /bin/sh -c "$cmd"
  else
    script -qfc "/bin/sh -c $(printf "%q " "$cmd")" /dev/null
  fi

  # Ensure that the status code was written to the temporary file or
  # fail with status 99
  [ -s $tmp ] || return 99

  # Collect the status code from the temporary file
  err=$(cat $tmp)

  # Remove the temporary file
  rm -f $tmp

  # Return the status code
  return $err
}

function execute_test {
  local file=$1
  local run_once=${2-'false'}
  local cmd="faketty elm-test $file"
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
