#!/bin/bash

cd "$(dirname "$0")"
cd ..
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage 
chmod u+x nvim.appimage 
./nvim.appimage --appimage-extract 
./squashfs-root/AppRun --version 
ln -s `pwd`/squashfs-root/AppRun /usr/bin/nvim 
rm nvim.appimage
