execute pathogen#infect()
filetype plugin indent on
set nocompatible
set ruler laststatus=2 number title hlsearch
syntax on
set autoindent
set number
set nowrap
set nobackup
set noswapfile
set paste
set modifiable
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
:set tabstop=2 shiftwidth=2 expandtab
:set mouse=a
map <C-n> :NERDTreeToggle<CR>
map <C-p> [unite]p
let g:indentLine_color_term = 239
call plug#begin('~/.vim/plugged')
Plug 'rhysd/vim-color-spring-night'
Plug 'davidklsn/vim-sialoquent'
Plug 'KeitaNakamura/neodark.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/unite.vim'
Plug 'rstacruz/vim-fastunite'
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/seoul256.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite-outline'
Plug 'tsukkee/unite-tag'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim'
Plug 'raimondi/delimitmate'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'elixir-editors/vim-elixir'
Plug 'KabbAmine/yowish.vim'
call plug#end()
colorscheme railscasts
