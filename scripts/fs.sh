#! /bin/bash

for dir in $HOME/Templates $HOME/Videos $HOME/Public $HOME/Music; do
    if [ -d "$dir" ]; then
        echo "Removing $dir"
        rm -rf "$dir"
    fi
done

for dir in $HOME/Documents/code $HOME/Documents/code $HOME/Documents/sources; do
    if [ -d "$dir" ]; then
        echo "Directory $dir exists...ignoring"
    else
        mkdir "$dir"
    fi
done

git clone git@github.com:neovim/neovim.git $HOME/Documents/sources
