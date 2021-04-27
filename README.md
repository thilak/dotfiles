# Install prerequisites
Will perform:
* Install of apt packages
* Install of tmux plugin manager
* Install of antigen
* Setup git config username and email
* Stow config files
```
./install.sh
```

# Install a nerd font for use in powerlevel10k
On windows right click and install, on ubuntu install font-manager and then install or copy and run fontcache.

For example: https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraCode.zip

# Tmux plugins
Install tmux plugins by starting tmux and press "Ctrl+Space" + I (capital I, as in Install)

# Git credentials
Use git credentials manager core, install by following https://github.com/GitCredentialManager/git-credential-manager/blob/release/docs/install.md#linux

Select gpg store, following https://github.com/GitCredentialManager/git-credential-manager/blob/release/docs/credstores.md#gpgpass-compatible-files

# Key bindings
List and search zsh keybindings by running
```
bindkey | fzf
```

## TMUX
ctrl + space - prefix
prefix + F - tmux-fzf, can list keybindings here 
prefix + ? - tmux-fuzzback 

# fzf
CTRL-T - Paste the selected files and directories onto the command-line
CTRL-R - Paste the selected command from history onto the command-line
ALT-O - cd into the selected directory

CTRL-K / CTRL-J (or CTRL-P / CTRL-N) to move cursor up and down
Enter key to select the item, CTRL-C / CTRL-G / ESC to exit
On multi-select mode (-m), TAB and Shift-TAB to mark multiple items