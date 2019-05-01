#!/bin/bash

function git-title {
    local title
    if ! title="${USER}@${HOSTNAME}: ${PWD} (`git rev-parse --abbrev-ref HEAD 2>/dev/null`)"; then
        # Not a git repository
        title="${USER}@${HOSTNAME}: ${PWD}"
    fi
    echo -ne "\033]2;$title\007"
}

export PROMPT_COMMAND="git-title"
