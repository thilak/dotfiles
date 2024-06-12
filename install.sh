#!/usr/bin/env sh

# General tools
sudo apt install git tig tmux xsel zsh kitty pass stow neovim curl fzf ripgrep fd-find python3-pip python-is-python3

# make bin folder
mkdir -p ~/.local/bin

# Coloring support
sudo apt install grc chroma

# Install snap packages
sudo snap install dust

# Get tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.local/share/tmux/plugins/tpm

# Get AstroNvim
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Get antigen
git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.local/share/antidote

# Avoid tig to write ~/.tig_history
mkdir -p ~/.local/share/tig

# zsh doesn't automatically create cache folder, without this the history file is not created
mkdir -p ~/.local/state/zsh

# Install config files
stow -v --no-folding -t ~ */

# Git config
# git config --global user.name ""
# git config --global user.email ""
