source ~/.local/share/antigen/antigen.zsh

# Add completions before omz, since omz runs compinit

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# OMZ plugins
#antigen bundle ssh-agent
antigen bundle repo
antigen bundle fzf
antigen bundle grc
antigen bundle colorize
antigen bundle colored-man-pages

# Other plugins
antigen bundle Aloxaf/fzf-tab
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Set theme
# antigen theme blinks
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit .p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Fix colors for ls, omz will set --color=tty which disables when called through grc 
alias ls="grc --colour=auto ls --color"

# fzf cd command is alt+c, which is hard to press. rebind to alt+o
bindkey -r "^[c" 
bindkey "^[o" fzf-cd-widget

# OMZ sets share history, remove it
unsetopt share_history

