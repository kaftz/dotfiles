#!/bin/bash
yum check-update
yum install -y git vim-enhanced gcc libevent-devel ncurses-devel

printf "installing tmux 2.3\n"
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz > /dev/null
tar -xzf tmux-2.3.tar.gz
cd tmux-2.3
./configure > /dev/null
make install > /dev/null
printf "done\n"
