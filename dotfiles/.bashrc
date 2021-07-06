# Exit if Bash was not invoked interactively.
[ -z "$PS1" ] && exit 0

# Make Bash conform more closely to the POSIX standard.
set -o posix
export PATH="$PATH:$HOME/bin"

HISTCONTROL=ignorespace
HISTSIZE=4096
HISTFILESIZE=4096
shopt -s histappend

shopt -s checkwinsize

source /etc/bash_completion 2> /dev/null

## ALIASES
alias ll='ls -alF'
alias l1='ls -a1'
alias tree='tree -n' # The -n flag always disables color.

alias shelve='git stash'
alias unshelve='git stash apply'

alias valgrind-mc='valgrind \
    --leak-check=yes \
    --leak-check=full \
    --show-leak-kinds=all \
    --track-origins=yes'
alias gdbt='gdb -q --tui'

## THIRD PARTY
if [ -e "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi
if [ -d "$HOME/.nova" ]; then
    NOVA_HOME="$HOME/.nova"
    PATH="$NOVA_HOME/bin:$PATH"
fi

## CUSTOM PS1
git_ps1() {
    GIT_BRANCH=$(git branch 2> /dev/null | grep '^\* ' | sed -e 's/^\* //g')
    if [ -z "${GIT_BRANCH}" ]; then
        echo ''
        return
    fi

    GIT_STATUS=$(git status 2> /dev/null | tee)
    GIT_REN=$(echo "${GIT_STATUS}" | grep '^.*renamed:')
    GIT_MOD=$(echo "${GIT_STATUS}" | grep '^.*modified:')
    GIT_DEL=$(echo "${GIT_STATUS}" | grep '^.*deleted:')
    GIT_NEW=$(echo "${GIT_STATUS}" | grep '^.*new file:')
    GIT_UNT=$(echo "${GIT_STATUS}" | grep '^Untracked files')

    GIT_STATUS_SUMMARY=''
    if [ -n "${GIT_REN}" ]; then
        GIT_STATUS_SUMMARY="${GIT_STATUS_SUMMARY}>"
    fi
    if [ -n "${GIT_MOD}" ]; then
        GIT_STATUS_SUMMARY="${GIT_STATUS_SUMMARY}!"
    fi
    if [ -n "${GIT_DEL}" ]; then
        GIT_STATUS_SUMMARY="${GIT_STATUS_SUMMARY}x"
    fi
    if [ -n "${GIT_NEW}" ]; then
        GIT_STATUS_SUMMARY="${GIT_STATUS_SUMMARY}+"
    fi
    if [ -n "${GIT_UNT}" ]; then
        GIT_STATUS_SUMMARY="${GIT_STATUS_SUMMARY}?"
    fi

    if [ ! -z "${GIT_STATUS_SUMMARY}" ]; then
        echo "[${GIT_BRANCH} ${GIT_STATUS_SUMMARY}]"
    else
        echo "[${GIT_BRANCH}]"
    fi
}
ps1() {
    if [ -z "$BASH_VERSION" ]; then
        echo "$(pwd)$ "
        return 0
    fi
    echo "\w\[\e[33m\]\`git_ps1\`\[\e[m\]\\$ "
}

export git_ps1
export PS1="$(ps1)"
