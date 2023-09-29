#! /bin/bash

# Neovim
if [ -d "$HOME/Documents/sources/neovim" ]; then
    echo "Neovim source already on disk"
else
    echo "Cloning neovim repository"
    git clone git@github.com:neovim/neovim.git $HOME/Documents/sources/neovim
fi

