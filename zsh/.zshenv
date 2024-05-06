# Load .profile if it exists
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# Make path only have unique entries, add local bin folder
typeset -U path
path+=/snap/bin

# Set vim as default editor
export EDITOR=nvim

# Set zsh config files dir to .config
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# Set history file path
export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/histfile"

# Rip grep config
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-$HOME/.config}/ripgrep/config"

# Uncomment to enable for git credentials manager in headless environment (WSL)
#export GPG_TTY=$TTY
