#!/bin/sh
set -eux

if [ ! -d pforth ]; then
    git clone https://github.com/philburk/pforth.git
else
    (cd pforth && git pull)
fi

# Build the standalone pforth as a staic executable.
(cd pforth/platforms/unix && make clean all CC=clang LDADD+=-static)

# Place the standalone pforth executable in the personal ~/bin directory.
(cp pforth/platforms/unix/pforth_standalone ~/bin/pforth)
