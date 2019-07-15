#!/bin/bash
__git_status() {
    STATUS=$(git status 2>/dev/null |
    awk '
    /^On branch / {printf($3)}
    /^You are currently rebasing/ {printf("rebasing %s", $6)}
    /^Initial commit/ {printf(" (init)")}
    /^Untracked files/ {printf(" (untracked)")}
    /^Changes not staged / {printf(" (not staged)")}
    /^Changes to be committed/ {printf(" (to be commited)")}
    /^Your branch is ahead of/ {printf(" (ahead of)")}
    ')
    if [ -n "$STATUS" ]; then
        echo -ne " $STATUS"
    fi
}

PS1='\[\033[01;34m\]\w\[\033[00m\]$(__git_status) $ '
export PS1

