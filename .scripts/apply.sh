#!/bin/bash

cp -r .config/nvim ~/.config/
cp .tmux.conf ~/
nvim --headless "+Lazy! sync" +qa
