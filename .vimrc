" Vundle stuff
" ********************
set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required

" To ignore plugin indent changes, instead use:
"filetype plugin on


" plugin configs
" ********************
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_cmd='CtrlPMixed'
let g:ctrlp_max_height=20
if executable('ag')
  let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
endif


" http://vimconfig.com/
" ********************
syntax on
set number
set cursorline
set scrolloff=999 " vertically center cursor
set visualbell

set incsearch
set hlsearch
set ignorecase
set smartcase

set backspace=indent,eol,start " make backspace behave in a sane manner
set hidden " do not auto-close buffers

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set expandtab

set autoread " ?
set nobackup
set writebackup
set noswapfile

"set laststatus=2
"set mouse=a

colorscheme osx_homebrew 


" key mappings
" ********************
imap jj <esc>
imap jk <esc>

" <C-L> also clears search highlighting
nnoremap <C-L> :noh<CR><C-L>


" commands
" ********************
com Diff execute 'w !git diff --no-index % -'


" autocmds, etc.
" ********************
" disable auto comment headers
au Filetype * set fo-=c fo-=r fo-=o

" check for external filechanges on cursor hold
au CursorHold,CursorHoldI * checkt

