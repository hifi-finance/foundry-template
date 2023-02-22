#!/bin/sh
# Check if running on macOS.
if [ "$(uname)" = "Darwin" ]; then
    echo "macOS detected"
    echo "sourcing ~/.zshrc"
    . ~/.zshrc
fi

# Check if running on Linux.
if [ "$(uname)" = "Linux" ]; then
    echo "Linux detected"
    echo "sourcing ~/.bashrc"
    . ~/.bashrc
fi

# Run the given command.
echo "running '$@'"
eval "$@"
exitCode="$?"

if [ $exitCode != 0 ]; then
echo "env_run.sh - exited with code $exitCode (error)"
fi

exit $exitCode
