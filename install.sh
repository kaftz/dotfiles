#!/bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc tmux.conf"

echo "creating $olddir to store existing files"
mkdir -p $olddir

for file in $files; do
  mv ~/.$file $olddir
  echo "creating link to $file"
  ln -s $dir/$file ~/.$file
done
