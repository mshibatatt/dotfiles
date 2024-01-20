#!/bin/bash

script_dir=$(cd "$(dirname "$0")" && pwd)

cp -r $script_dir/../.config/nvim ~/.config/
cp $script_dir/../.tmux.conf ~/
nvim --headless +qa
nvim --headless "+Lazy! sync" +qa
