#!/bin/sh
DIR="$(dirname "$0")"
TMP="$DIR/tmp"

# Delete temporary directory when script terminates.
trap "rm -rf $TMP" 0
trap "exit $?" 1 2 3 15

# Update submodules.
git submodule update --init --recursive

# Download pre-commit into temporary directory.
mkdir $TMP
curl -Lso $TMP/precommit https://github.com/pre-commit/pre-commit/releases/download/v3.0.4/pre-commit-3.0.4.pyz
chmod +x $TMP/precommit
alias precommit=$TMP/precommit

# Install pre-commit hooks.
precommit install
precommit install --hook-type commit-msg
