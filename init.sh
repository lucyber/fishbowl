#!/bin/bash

session="fishbowl"

tmux new-session -d -s $session

window=0
tmux rename-window -t $session:$window 'Liberty University Cyber Club Bulletin'

tmux send-keys 'echo' 'C-m'
tmux split-window -v
tmux send-keys 'news/news.sh' 'C-m'
tmux split-window -h -t 0
tmux send-keys 'echo top right' 'C-m'
tmux split-window -h -t 2
tmux send-keys 'watch -t -c -n 60 qrcode/qrcode.sh' 'C-m'

tmux attach-session -t $session
