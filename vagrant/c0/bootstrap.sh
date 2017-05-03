#!/bin/bash
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum check-update
yum install -y automake libtool # for libuv
yum install -y git vim-enhanced gcc gcc-c++ libevent-devel ncurses-devel nodejs.x86_64 epel-release
yum install -y redis

printf "installing python 3.6\n"
yum install -y install https://centos7.iuscommunity.org/ius-release.rpm # access upstream RPM packages
yum install -y python36u python36u-pip
yum install -y python36u-pip
yum install -y python36u-devel

printf "setting up node\n"
npm install -g n
n stable

printf "installing tmux 2.3\n"
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz > /dev/null
tar -xzf tmux-2.3.tar.gz
cd tmux-2.3
./configure && make > /dev/null
make install > /dev/null

printf "env setup\n"
echo "alias ll='la -al'" >> ~/.bashrc
echo "python='python3.6'" >> ~/.bashrc
echo "pip='pip3.6'" >> ~/.bashrc

printf "done\n"
