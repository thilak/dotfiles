# Set vim as default editor
export EDITOR=vim

# Set zsh config files dir to .config
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# Set history file path
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/.histfile"

# Set antigen default dir
export ADOTDIR="${XDG_DATA_HOME:-$HOME/.local/share}/antigen"

# Uncomment to enable for git credentials manager in headless environment (WSL) 
#export GPG_TTY=$TTY

# Systemd distros have this by default (uncomment for WSL)
#path+=~/.local/bin
