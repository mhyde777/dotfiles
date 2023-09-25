#! /bin/bash

# Create fonts directory

DIR=$HOME/.local/share/fonts
if [ -d "$DIR"]; then
    echo "Directory exists. Continuing..."
else
    mkdir "$DIR"
fi

# Download Extract
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip ~/Downloads/
unzip FiraMono.zip

# Copy all font files to created DIR
cp *.otf $DIR

# Load fonts
fc-cache -fv

# Clean Downlaods
sudo rm FiraCode*

