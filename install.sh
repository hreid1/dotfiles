#!/bin/bash

CONFIG_HOME="$HOME/.config"

# nvim
rm -rf "$CONFIG_HOME/nvim"
cp -r nvim "$CONFIG_HOME/"
echo "nvim installation complete"

# tmux
rm -rf "$CONFIG_HOME/tmux"
cp -r tmux "$CONFIG_HOME/"
if [ ! -d "$CONFIG_HOME/tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm "$CONFIG_HOME/tmux/plugins/tpm"
fi
tmux source "$CONFIG_HOME/tmux/tmux.conf"
echo "tmux installation complete"
