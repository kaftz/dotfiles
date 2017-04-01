" http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
 
set backspace=indent,eol,start " make backspace behave in a sane manner
syntax on " syntax highlighting on
set number " show line numbers
set hidden " allow hidden buffers, don't limit to 1 file per window/split

set cursorline
set scrolloff=999

"set incsearch
"set hlsearch
set nohlsearch
set ignorecase
set smartcase

set autoindent
set smartindent

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set smarttab

set autoread
set hidden
set nobackup
set writebackup
set noswapfile

:imap jj <esc>
:imap jk <esc>

au Filetype * set fo-=c fo-=r fo-=o " disable auto comment headers
