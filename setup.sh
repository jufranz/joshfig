echo 'source ~/joshfig/josh_bashrc.sh' >> ~/.bashrc
echo 'source ~/joshfig/josh.vim' >> ~/.vimrc
echo '$include ~/joshfig/inputrc' >> ~/.inputrc
echo 'source-file ~/joshfig/tmux.conf' >> ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
