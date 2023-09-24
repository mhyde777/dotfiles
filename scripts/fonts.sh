#! /bin/bash

DIR=$HOME/.local/share/fonts

if [ -d "$DIR"]; then
    echo "Directory exists. Continuing..."
else
    mkdir "$DIR"
fi

cd $HOME/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip
unzip FiraMono.zip $HOME/.local/share/fonts/
fc-cache -fv

