if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

## CUSTOM ~/bin SCRIPTS
export PATH="$HOME/bin:$PATH"
## GO
export PATH=$PATH:/usr/local/go/bin
## RUST
if [ -e "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi
## SUNDER
export SUNDER_HOME="$HOME/.sunder"
if [ -e "$SUNDER_HOME/env" ]; then
    . "$SUNDER_HOME/env"
fi
## MELLIFERA
export MELLIFERA_HOME="$HOME/.mellifera"
if [ -e "$MELLIFERA_HOME/env" ]; then
    . "$MELLIFERA_HOME/env"
fi
