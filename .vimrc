" imports
" ********************
source ~/.vim/functions/watch.vim " autoread alternative


" Vundle stuff
" ********************
set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required

" To ignore plugin indent changes, instead use:
"filetype plugin on


" http://vimconfig.com/
" ********************
syntax on " syntax highlighting on
set number " show line numbers
set cursorline
set scrolloff=999 " vertically center cursor
set visualbell

set incsearch
set hlsearch
"set nohlsearch
set ignorecase
set smartcase

set backspace=indent,eol,start " make backspace behave in a sane manner
set hidden " allow hidden buffers, don't limit to 1 file per window/split

set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

"set tabstop=2
set expandtab

"set autoread " ?
set hidden " do not auto-close buffers
set nobackup
set writebackup
set noswapfile

:imap jj <esc>
:imap jk <esc>

colorscheme osx_homebrew 

" disable auto comment headers
au Filetype * set fo-=c fo-=r fo-=o

" <CR> clears search highlighting
nnoremap <CR> :noh<CR><CR>

" watch for external file changes
execute WatchForChanges("*", {'autoread': 1})
