#!/bin/sh
if [ "$(uname)" == "Darwin" ]; then
    source ~/.zshrc
fi
make fmt-check
