#! /bin/bash

if command -v lsb_release >/dev/null 2>&1 ; then
    os_name=$(lsb_release -is)

    if [ "$os_name" = "Ubuntu" ]; then
        echo "OS is Ubuntu. Continuing..."
        if command -v snap >/dev/null 2>&1 ; then
            echo "Snap is installed. Continuing..."
            sudo umount /snap/core/*
            snap list | awk 'NR>1 {print $1}' | while read -r package_name; do
                echo "removing $package_name"
                sudo snap remove --purge $package_name 
            done
            # A hack to circle back and get packages like snapd, core, etc
            snap list | awk 'NR>1 {print $1}' | while read -r package_name; do
                echo "removing $package_name"
                sudo snap remove --purge $package_name 
            done
            sudo apt autoremove snapd -y
        else
          echo "snap command not found. Exiting."
        fi
        sudo touch /etc/apt/preferences.d/nosnap.pref
        sudo echo "Package: snapd" >> /etc/apt/preferences.d/nosnap.pref
        sudo echo "Pin: release a=*" >> /etc/apt/preferences.d/nosnap.pref
        sudo echo "Pin-Priority: -10" >> /etc/apt/preferences.d/nosnap.pref
        sudo apt install --install-suggests gnome-software
        sudo rm -rf $HOME/snap
        sudo apt update
    else
        echo "This script is intended to run on Ubuntu. Exiting."
        exit 1
    fi
else
  echo "lsb_release not available. Cannot determine OS. Exiting."
  exit 1
fi

