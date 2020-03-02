#!/bin/bash

set -e

# If the run command is the default, do some initialization first
if [ "$(which "$1")" = "/usr/local/bin/start-singleuser.sh" ]; then
  gitpuller https://github.com/ericafu1122/template master template
fi

# Run the command provided
exec "$@"

