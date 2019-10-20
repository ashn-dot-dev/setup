# Make Bash conform more closely to the POSIX standard.
set -o posix

# Exit if Bash was not invoked interactively.
[ -z "$PS1" ] && exit 0

# Shell run commands.
[ -f ~/.shrc ] && source ~/.shrc

# Bash completion.
source /etc/bash_completion 2> /dev/null

# Append to the history file, don't overwrite it.
shopt -s histappend
# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize
