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
set background=dark
set termguicolors
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
set tabstop=2 shiftwidth=2 expandtab
set mouse=a
set backspace=indent,eol,start
map <C-n> :NERDTreeToggle<CR>
map <C-p> [unite]p
let g:indentLine_color_term = 239
let g:airline_theme='one'
let g:one_allow_italics = 1
let g:jsx_ext_required = 0
let g:airline_theme='one'
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'elixir-editors/vim-elixir'
Plug 'KabbAmine/yowish.vim'
Plug 'jpo/vim-railscasts-theme'
Plug 'leafgarland/typescript-vim'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'dracula/vim'
Plug 'rakr/vim-one'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-jade'
Plug 'chriskempson/base16-vim'
Plug 'wincent/terminus'
call plug#end()
colorscheme one

if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
