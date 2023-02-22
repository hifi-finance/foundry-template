#!/bin/sh
DIR="$(dirname -- "$(readlink -f -- "$0")")"

# Delete temporary directory when script terminates.
trap "rm -rf $DIR/tmp/" 0
trap "exit $?" 1 2 3 15

# Update submodules.
git submodule update --init --recursive

# Install pre-commit hooks.
mkdir $DIR/tmp
curl -Lso $DIR/tmp/pre-commit https://github.com/pre-commit/pre-commit/releases/download/v3.0.4/pre-commit-3.0.4.pyz
chmod +x $DIR/tmp/pre-commit
$DIR/tmp/pre-commit install
$DIR/tmp/pre-commit install --hook-type commit-msg
