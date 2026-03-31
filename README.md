# joshfig
A stupidly named way to have config files persist across machines.
Uses [GNU Stow](https://www.gnu.org/software/stow/) for symlink management.

## Setup

### Terminal essentials
```bash
cd ~/joshfig
stow bash vim tmux readline
echo 'source ~/.josh_bashrc' >> ~/.bashrc
```

### Desktop (sway/waybar)
```bash
cd ~/joshfig
stow sway waybar
```

## Credits
- Boz: https://github.com/boztalay/Config
- Brad: https://github.com/bhekman/config
- Claude (Anthropic) helped with the stow conversion
