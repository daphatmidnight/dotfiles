" Colours {{{

" Note: green is not a creative colour.
" }}}

" Indentation {{{
set tabstop=2
set expandtab     " tabs -> spaces
set softtabstop=2 " TAB key -> 2 spaces
set shiftwidth=2
set shiftround
set modelines=0   " /* vim: set ... will be ignored
filetype plugin indent on " load lang specific indentation
set breakindent
set endofline
" }}}

" Appearance {{{
set background=dark
set number      " show line ruler
set showcmd     " show last command (hidden w/ powerline)
set noshowmode    " show current mode in command line
set cursorline
set scrolloff=6 " keep cursor somewhat centered
set showmatch   " highlight over matching bracket
set matchtime=2 " blink for 0.2s
set report=0    " shows N lines have been changed
set shortmess=atI " shortens messages
" }}}

" Behaviour {{{
set autowrite   " :w on leaving buffer
set wildmode=list:longest
set hidden      " switch buffers w/o saving
set splitbelow
set splitright
set clipboard+=unnamedplus
" }}}

" Searching {{{
set wrapscan  " search wraps around end-of-file
set ignorecase
set smartcase
" }}}

" Folding {{{
set foldenable  " will obviously start Folding@Home
set foldlevelstart=10
set foldmethod=manual
" }}}

" Engine {{{
set lazyredraw
set synmaxcol=200 " stop trying colouring syntax after col 200
set noerrorbells
set novisualbell
set ffs=unix,dos,mac
" }}}

" Backups {{{
set noswapfile
set nobackup
set nowritebackup
" }}}

" Plugins {{{
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'edkolev/tmuxline.vim'
Plug 'jceb/vim-orgmode'
Plug 'scrooloose/syntastic'
Plug 'tomasr/molokai'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wellle/targets.vim'
Plug 'vimwiki/vimwiki'

call plug#end()
" }}}

" Binds {{{
let mapleader="\<Space>"

nnoremap <Leader>w :w<CR>
" }}}

" Plugin settings {{{
let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'
colorscheme molokai
let g:rehash256=1
" }}}

