if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

## CUSTOM ~/bin SCRIPTS
export PATH="$PATH:$HOME/bin"
## RUST
if [ -e "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi
## SUNDER
if [ -d "${HOME}/.sunder" ]; then
    export SUNDER_HOME="${HOME}/.sunder"
    export SUNDER_IMPORT_PATH="${SUNDER_HOME}/lib"
    PATH="${SUNDER_HOME}/bin:$PATH"
fi
