#! /bin/bash

echo "Install applications"
./apps.sh
echo "Removing snapd"
./rm_snap.sh

echo "Would you like to install Additional Apps? [y/N]"
read apps

if [ "$apps" == "y" ]; then
    echo "Install additional applications"
    ./apps_opt.sh
else
    echo "Ignoring optional apps installation"
fi

echo "Would you like to install FiraMono Font? [y/N]"
read font

if [ "$font" == "y" ]; then
    echo "Installing FiraMono Nerd Font"
    ./fonts.sh
else
    echo "Ignoring FiraMono installation"
fi

echo "Would you like to install Spotify? [y/N]"
read spotify

if [ "$spotify" == "y" ]; then
    echo "Installing Spotify"
    ./spotify.sh
else
    echo "Ignoring Spotify installation"
fi

echo "Would you like to install VSCode? [y/N]"
read vscode

if [ "$vscode" == "y" ]; then
    echo "Installing VSCode"
    ./code.sh
else
    echo "Ignoring VSCode installation"
fi

