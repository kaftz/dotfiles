#!/bin/bash
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum check-update
yum install -y git vim-enhanced gcc gcc-c++ libevent-devel ncurses-devel nodejs.x86_64

printf "setting up node\n"
npm install -g n
n stable

printf "installing tmux 2.3\n"
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz > /dev/null
tar -xzf tmux-2.3.tar.gz
cd tmux-2.3
./configure && make > /dev/null
make install > /dev/null

printf "done\n"
