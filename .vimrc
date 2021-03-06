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
Plugin 'ap/vim-buftabline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-colorscheme-switcher'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required

" To ignore plugin indent changes, instead use:
"filetype plugin on


" plugin configs
" ********************
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_max_height=20
let g:ctrlp_map='<C-P>'
let g:ctrlp_cmd='CtrlPMixed'
if executable('ag')
  let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
endif

let g:buftabline_numbers=1
let g:buftabline_indicators=1

"let g:GitGutterLineHighlightsEnable=1

let g:NERDTreeAutoCenter=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinSize=101


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

"set shortmess=I
set viminfo='50,%
set updatetime=100 " for vim-gitgutter

" af
" argonaught
" black_angus
" calmar256-dark
" candyman
" candypaper
" coldgreen
" d8g_01
" dark-ruby
" darkdot
" eclipse
" osx_homebrew
colorscheme dark-ruby


" key mappings
" ********************
imap jj <ESC>
imap jk <ESC>

" <C-L> also clears search highlighting
nnoremap <C-L> :noh<CR><C-L>

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>
nnoremap <C-B> :set nomore<BAR>ls<BAR>set more<CR>:buffer<SPACE>

" close buffer
"nnoremap <C-W> :bd<CR>

" jump to previous buffer

nnoremap <C-T> :NERDTreeToggle<CR>

"nnoremap <C-N> :NextColorScheme<CR>
"nnoremap <C-M> :PrevColorScheme<CR>


" commands
" ********************
com Diff execute 'w !git diff --no-index % -'


" autocmds, etc.
" ********************
" disable auto comment headers
au Filetype * set fo-=c fo-=r fo-=o

" check for external filechanges on cursor hold
au CursorHold,CursorHoldI * checkt
