#!/bin/bash

function progress_bar() {
  local screen_width=$(tput cols)
  _progress_bar_total=$1
  _progress_bar_current=${2:-0}
  _progress_bar_width=${3:-$(($screen_width - 10))}

  echo ''

  function progress_bar_increase() {
    _progress_bar_current=$(($_progress_bar_current + 1))
    local percentage=$((100 * $_progress_bar_current/$_progress_bar_total))
    local progress_col=$(($percentage * $_progress_bar_width / 100))

    printf '\r|'
    printf '=%.0s' $(seq -s ' ' 1 $progress_col)

    if [[ $percentage != '100' ]]; then
      printf ' %.0s' $(seq -s ' ' 1 $(($_progress_bar_width - $progress_col)))
      printf '|  %s%%' $percentage
    else
      printf '| %s%%' $percentage
      echo 
    fi
  }
}
