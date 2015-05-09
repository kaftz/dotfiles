" A minimal vimrc for new vim users to start with.
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
 
" Make backspace behave in a sane manner.
set backspace=indent,eol,start
 
" Switch syntax highlighting on
syntax on
 
" Show line numbers
set number
 
" Allow hidden buffers, don't limit to 1 file per window/split
set hidden


" from work conf
" ********************
set cursorline
set scrolloff=999

"set incsearch
"set hlsearch
set ignorecase
set smartcase

set autoindent
set smartindent

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set smarttab

set autoread
set hidden
set nobackup
set writebackup
set noswapfile

:imap jj <esc>
:imap jk <esc>
