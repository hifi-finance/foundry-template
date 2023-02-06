#!/bin/bash
BIN_DIR="$(dirname -- "$(readlink -f -- "$0")")"

git submodule update --init --recursive

python $BIN_DIR/bin/pre-commit-3.0.4 install

python $BIN_DIR/bin/pre-commit-3.0.4 install --hook-type commit-msg
