# Install dotfiles
install and configure dotfiles:

```
./manage.py -i -u 'username'
```

# TMUX and TPM
```
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Press "Ctrl+Space" + I (capital I, as in Install) to fetch the plugin.

# Pylint
For checkers that dont use the default file from the home directory specify this manually: --rcfile=~/.pylintrc

