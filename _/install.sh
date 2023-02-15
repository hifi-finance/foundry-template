#!/bin/sh
DIR="$(dirname -- "$(readlink -f -- "$0")")"

trap 'rm -rf "$DIR/tmp/"' 0
trap 'exit $?' 1 2 3 15

git submodule update --init --recursive

mkdir $DIR/tmp
curl -Lso $DIR/tmp/pre-commit https://github.com/pre-commit/pre-commit/releases/download/v3.0.4/pre-commit-3.0.4.pyz
chmod +x $DIR/tmp/pre-commit

$DIR/tmp/pre-commit install

$DIR/tmp/pre-commit install --hook-type commit-msg
