# Set vim as default editor
export EDITOR=nvim

# Set zsh config files dir to .config
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# Set history file path
export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/histfile"

# Set antigen default dir
export ADOTDIR="${XDG_DATA_HOME:-$HOME/.local/share}/antigen"

# Make path only have unique entries, add local bin folder
typeset -U path
path+=~/.local/bin

# Uncomment to enable for git credentials manager in headless environment (WSL) 
#export GPG_TTY=$TTY
