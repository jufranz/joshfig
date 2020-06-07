append_if_not_found () {
  grep -qF "$1" $2 && echo "$2 already contains line '$1'" || echo "$1" >> $2
}
append_if_not_found 'source ~/joshfig/josh_bashrc.sh' ~/.bashrc
append_if_not_found 'source ~/joshfig/josh.vim' ~/.vimrc
append_if_not_found '$include ~/joshfig/inputrc' ~/.inputrc
append_if_not_found 'source-file ~/joshfig/tmux.conf' ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
