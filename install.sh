#!/usr/bin/env sh

# General tools
sudo apt install git tig tmux zsh pass stow neovim curl fzf ripgrep python3-pip python-is-python3

# Coloring support
sudo apt install grc chroma

# Get tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.local/share/tmux/plugins/tpm

# Get antigen
mkdir -p ~/.local/share/antigen
curl -L git.io/antigen > ~/.local/share/antigen/antigen.zsh

# Avoid tig to write ~/.tig_history
mkdir -p ~/.local/share/tig

# Install config files
stow -vt ~ */

# Git config
# git config --global user.name ""
# git config --global user.email ""