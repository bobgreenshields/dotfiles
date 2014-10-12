#!/bin/bash

tmux new-session -s guake -n guake -d
tmux split-window -h -t guake
tmux select-pane -t guake:.1
tmux attach -t guake
