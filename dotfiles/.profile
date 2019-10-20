#!/bin/sh
# .profile : Commands executed by a login using ksh or sh.
export ENV="$HOME/.shrc"

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
else
    if [ -f "$HOME/.shrc" ]; then
        . "$HOME/.shrc"
    fi
fi
