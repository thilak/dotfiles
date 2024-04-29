# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.local/share/antidote/antidote.zsh

# Add completions before omz, since omz runs compinit

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

autoload -Uz promptinit && promptinit && prompt powerlevel10k

# zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# Fix colors for ls, omz will set --color=tty which disables when called through grc
alias ls="grc --colour=auto ls --color"

# fzf cd command is alt+c, which is hard to press. rebind to alt+o
bindkey -r "^[c"
bindkey "^[o" fzf-cd-widget

# Source aliases if exists
[[ ! -f $ZDOTDIR/.aliases.zsh ]] || source $ZDOTDIR/.aliases.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
