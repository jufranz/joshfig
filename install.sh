#!/bin/bash
DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIRNAME"

# Stow packages into home directory
stow -v -t "$HOME" bash vim tmux readline

# Add source line to .bashrc if not already present
grep -qF 'source ~/.josh_bashrc' ~/.bashrc || echo 'source ~/.josh_bashrc' >> ~/.bashrc

