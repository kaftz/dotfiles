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
mkdir ~/.vim/plugin

git clone https://github.com/ap/vim-buftabline.git $DOTFILES_ROOT/tmp/vim-buftabline
cp -r $DOTFILES_ROOT/tmp/vim-buftabline/* ~/.vim

git clone https://github.com/airblade/vim-gitgutter.git $DOTFILES_ROOT/tmp/vim-gitgutter
cp -r $DOTFILES_ROOT/tmp/vim-gitgutter/* ~/.vim

# tmux setup
cp $DOTFILES_ROOT/.tmux.conf ~/.tmux.conf
