#!/usr/bin/env bash

is_vim_or_fzf="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?(g?(view|n?vim?x?)(diff)?|fzf)$'"
tmux bind-key -n C-j if-shell "$is_vim_or_fzf" "send-keys C-j"  "select-pane -D"
tmux bind-key -n C-k if-shell "$is_vim_or_fzf" "send-keys C-k"  "select-pane -U"

