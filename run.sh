#!/bin/bash

if ! command -v npm &> /dev/null
then
  echo "npm not found"
  echo "please install it from here: "
  echo "https://nodejs.org/en/"
fi

if ! command -v elm &> /dev/null
then
  echo "elm not found"
  echo "please install it from here: "
  echo "https://guide.elm-lang.org/install/elm.html"
fi

if ! command -v npm &> /dev/null
then
  exit
elif ! command -v elm &> /dev/null 
then
  exit
fi

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
for testFile in $(find 'tests' -iname '*.elm')
do
  echo $testFile
  execute_test $testFile

  if [ $? != 0 ] 
  then
    popd 
    exit 0;
  fi
done
