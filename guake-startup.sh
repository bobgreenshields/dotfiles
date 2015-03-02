#!/bin/bash
# start guake
guake &
sleep 2
guake --rename-tab="Main" --execute-command="~/dotfiles/guake-tmux.sh" &
sleep 2
guake --new-tab=2 --rename-tab="Downloads" --execute-command="cd ~/Downloads" &
sleep 2
guake --new-tab=3 --rename-tab="Dropbox" --execute-command="cd ~/Dropbox" &
sleep 2
guake --select-tab=0 &
notify-send Guake "Is now configured" -i /usr/share/icons/hicolor/48x48/apps/guake.png
