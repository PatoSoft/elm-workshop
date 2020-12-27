# It is suggested to avoid using set -e on commands in this framework
# There are 2 main ways to handle errors used here:
# - execute_command checks the exit code from the framework command
# - error_handling.sh adds a ERR trap to handle external commands with non zero return codes (e.g. `echo hello | grep foo`)
# By using set -e the first type of error handling is not executed due to the way bash works.
#
# By requiring this file the output will show the caller and the line number that caused the error

err_report() {
  local exit_code="$?"
  local line_number="$1"
  local last_command="$2"
  local formatted_caller=$(echo "$(caller)" | sed 's/^[0-9]* //')

  if [[ $exit_code -ne 0 ]]; then
    log_error "Exit code $exit_code calling '$last_command' in $formatted_caller:$line_number"
    exit 1
  fi
}
trap 'err_report ${LINENO} "$BASH_COMMAND"' ERR
