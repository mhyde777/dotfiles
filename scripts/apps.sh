#! /bin/bash

yes | sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update

# Software Essentials
sudo apt install               \
    cmake                      \
    make                       \
    build-essential            \
    software-properties-common \
    libstdc++-13-dev           \
    gcc-13                     \
    g++-13 -y

# Applications Only I Would Want
sudo apt install               \
    htop                       \
    git                        \
    vim                        \
    ripgrep                    \
    gettext -y

# Normal Person Applications
sudo apt install               \
    npm -y

# Update to latest NPM
sudo npm install -g n
sudo n stable

