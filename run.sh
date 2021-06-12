#!/usr/bin/env bash
#
# Run emacs with this script directory as `.emacs.d`.

SCRIPT_DIR=$(cd $(dirname $0); pwd)

emacs -q --load $SCRIPT_DIR/init.el
