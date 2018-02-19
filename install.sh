#!/bin/bash
DOTFILES_ROOT=$(dirname $0)

# vim setup
cp $DOTFILES_ROOT/.vimrc ~/.vimrc
rm -rf ~/.vim
mkdir ~/.vim
cp -R $DOTFILES_ROOT/vim_colors ~/.vim/colors

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim # vim package manager
vim +PluginInstall +qall

rm -rf $DOTFILES_ROOT/tmp
mkdir $DOTFILES_ROOT/tmp
git clone https://github.com/ap/vim-buftabline.git $DOTFILES_ROOT/tmp/vim-buftabline

mkdir ~/.vim/plugin
cp $DOTFILES_ROOT/tmp/vim-buftabline/plugin/* ~/.vim/plugin

# tmux setup
cp $DOTFILES_ROOT/.tmux.conf ~/.tmux.conf
