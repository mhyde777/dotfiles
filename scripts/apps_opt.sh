#! /bin/bash

# Applications Only I Would Want
sudo apt install               \
    neofetch                   \
    kitty                      \
    tree                       \
    nala                       \
    exuberant-ctags            \
    gnome-tweaks               \
    luarocks                   \
    fd-find -y

sudo npm install -g tree-sitter-cli

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

