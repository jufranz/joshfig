# joshfig
A stupidly named way to have config files persist across machines

credit to Boz and Brad
https://github.com/boztalay/Config
https://github.com/bhekman/config

For vim, add this line to ~/.vimrc:
source ~/joshfig/josh.vim

For inputrc, add this line to ~/.inputrc:
$include ~/joshfig/inputrc

For tmux.conf, add this line to ~/.tmux.conf:
source-file ~/joshfig/tmux.conf
