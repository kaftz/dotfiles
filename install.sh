#!/bin/bash
DOTFILES_ROOT=$(dirname $0)

# VIM setup
cp $DOTFILES_ROOT/.vimrc ~/.vimrc
rm -rf ~/.vim/
mkdir ~/.vim
cp -R $DOTFILES_ROOT/vim_colors ~/.vim/colors
cp -R $DOTFILES_ROOT/vim_functions ~/.vim/functions
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim # VIM package manager
vim +PluginInstall +qall

cp $DOTFILES_ROOT/.tmux.conf ~/.tmux.conf
