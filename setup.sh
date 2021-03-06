#!/bin/sh
DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

bind -f $DIRNAME/inputrc
alias tmux="tmux -f $DIRNAME/tmux_bashrc.conf"
alias vim="vim -u $DIRNAME/josh.vim"
source $DIRNAME/josh_bashrc.sh
