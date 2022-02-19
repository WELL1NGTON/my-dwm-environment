#!/bin/sh

# install dwm
sudo make clean install --directory dwm

# install dmenu
sudo make clean install --directory dmenu

# install slock
sudo make clean install --directory slock

cp -r ./scripts/.local $HOME
