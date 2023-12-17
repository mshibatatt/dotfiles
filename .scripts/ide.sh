#!/bin/bash

# set tmux pane for ide
tmux split-window -v
tmux split-window -h
tmux resize-pane -D 5
tmux select-pane -t 0
