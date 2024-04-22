#!/usr/bin/env sh

# General tools
sudo apt install git tig tmux xsel zsh pass stow neovim curl fzf ripgrep fd-find python3-pip python-is-python3

# link fdfind to fd
mkdir -p ~/.local/bin
ln -s $(which fdfind) ~/.local/bin/fd

# Coloring support
sudo apt install grc chroma

# Get tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.local/share/tmux/plugins/tpm

# Get AstroNvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Get antigen
mkdir -p ~/.local/share/antigen
curl -L git.io/antigen > ~/.local/share/antigen/antigen.zsh

# Avoid tig to write ~/.tig_history
mkdir -p ~/.local/share/tig

# zsh doesn't automatically create cache folder, without this the history file is not created
mkdir -p ~/.local/state/zsh

# Install config files
stow -v --no-folding -t ~ */

# Git config
# git config --global user.name ""
# git config --global user.email ""