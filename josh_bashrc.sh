# This (cryptic) line prevents this from running when in a non-interactive shell
# https://stackoverflow.com/questions/23669521/scp-to-remote-host-without-executing-bash-profile-file-on-that-host 
[[ $- == *i* ]] || return

alias ll='ls -la'
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

RED="\[\033[31m\]"
GREEN="\[\033[32m\]"
YELLOW="\[\033[33m\]"
BLUE="\[\033[34m\]"
PURPLE="\[\033[35m\]"
TURQUOISE="\[\033[36m\]"
RESET="\[\033[0m\]"

#export PS1='\[\033[0;32m\]\u@\H\[\033[0;36m\] \w\[\033[31m\] $(parse_git_branch)\[\033[0;36m\]$\[\033[00m\] '
#export PS1='\[\033[0;32m\]\u@\H\[\033[0;36m\] \w\[\033[31m\] \[\033[0;36m\]$\[\033[00m\] '
#export PS1="${GREEN}\u@\H${TURQUOISE} \w $ ${RESET}"
export PS1="${BLUE}\u@\H ${RED}>${YELLOW}>${GREEN}> ${TURQUOISE}\w/\n${GREEN}$ ${RESET}"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
base16_default-dark

export EDITOR='vim'
