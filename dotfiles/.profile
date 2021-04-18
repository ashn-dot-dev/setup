if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -e "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi
