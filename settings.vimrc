execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
syntax on
set nocompatible
set backspace=indent,eol,start
set autoread
set visualbell
set number
set nowrap
set nobackup
set background=dark
set modifiable
set noswapfile
set paste
set mouse=a
set smarttab
set autoindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

let g:indentLine_color_term = 239
let g:airline_theme='one'
let g:one_allow_italics = 1

imap <C-Return> <CR><CR><C-o>k<Tab>

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'elixir-editors/vim-elixir'
call plug#end()

colorscheme one
set termguicolors
