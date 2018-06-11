alias ll='ls -la'
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

#export PS1='\[\033[0;32m\]\u@\H\[\033[0;36m\] \w\[\033[31m\] $(parse_git_branch)\[\033[0;36m\]$\[\033[00m\] '
export PS1='\[\033[0;32m\]\u@\H\[\033[0;36m\] \w\[\033[31m\] \[\033[0;36m\]$\[\033[00m\] '

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

base16_default-dark