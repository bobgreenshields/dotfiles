#!/bin/bash
# start guake
guake &

sleep 2

guake --rename-tab="Main" --execute-command="~/dotfiles/guake-tmux.sh" &

sleep 2

guake --new-tab=2 --rename-tab="Downloads" --execute-command="cd ~/Downloads" &

sleep 2

guake --new-tab=3 --rename-tab="Scans" --execute-command="echo type scn to switch to scans directory" &

sleep 2

guake --new-tab=3 --rename-tab="Dropbox" --execute-command="cd ~/Dropbox" &

sleep 2

guake --select-tab=0 &
