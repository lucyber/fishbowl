#!/bin/bash

session="fishbowl"

tmux new-session -d -s $session
tmux set-option -g default-shell /bin/bash

window=0
tmux rename-window -t $session:$window 'Liberty University Cyber Club Bulletin'

tmux send-keys 'docker run --rm -it bcbcarl/hollywood' 'C-m'
tmux split-window -v
tmux send-keys '{{ DISPLAY_DIRECTORY }}/news/news.sh' 'C-m'
tmux split-window -h -t 0
tmux send-keys '{{ DISPLAY_DIRECTORY }}/announcements/present.sh' 'C-m'
tmux split-window -h -t 2
tmux send-keys 'watch -t -c -n 60 {{ DISPLAY_DIRECTORY }}/qrcode/qrcode.sh' 'C-m'

tmux attach-session -t $session
