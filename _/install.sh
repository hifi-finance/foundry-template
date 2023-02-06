#!/bin/sh
BIN_DIR="$(dirname -- "$(readlink -f -- "$0")")"

git submodule update --init --recursive

$BIN_DIR/bin/pre-commit-3.0.4 install

$BIN_DIR/bin/pre-commit-3.0.4 install --hook-type commit-msg
