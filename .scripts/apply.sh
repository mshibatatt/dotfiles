#!/bin/bash

script_dir=$(cd "$(dirname "$0")" && pwd)
cd $script_dir
cd ..

cp --parents .config/nvim/init.lua ~/
cp --parents .config/nvim/lua/plugins/default.lua ~/
cp .tmux.conf ~/

# copy custom folder depending on option
while [[ "$#" -gt 0 ]]; do
  case $1 in
    -r|--R)
      cp --parents .config/nvim/lua/plugins/R.lua ~/
      cp --parents .config/nvim/lua/custom/R.lua ~/
      echo "require('custom.R')" >> ~/.config/nvim/init.lua
      ;;
    -py|--Python)
      cp --parents .config/nvim/lua/plugins/Python.lua ~/
      cp --parents .config/nvim/lua/custom/Python.lua ~/
      echo "require('custom.Python')" >> ~/.config/nvim/init.lua
      ;;
    -rs|--Rust)
      cp --parents .config/nvim/lua/custom/Rust.lua ~/
      echo "require('custom.Rust')" >> ~/.config/nvim/init.lua
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
  shift
done

nvim --headless "+Lazy! sync" +qa
