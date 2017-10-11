" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'henrik/vim-indexed-search'
Plug 'itchyny/lightline.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'shougo/neco-vim'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'Yggdroot/indentLine'
Plug 'cohama/lexima.vim'
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'tommcdo/vim-lion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'joshdick/onedark.vim'

call plug#end()

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set breakindent
set endofline
set list listchars=tab:->,trail:·

" Colours
syntax on
let g:onedark_termcolors=16
let g:onedark_terminal_italics=1
colorscheme onedark
let g:lightline = {}
let g:lightline.colorscheme = 'onedark'

" Appearance
set number
set showcmd
set noshowmode
set cursorline
set scrolloff=150
set showmatch
set matchtime=2
set report=0
set shortmess=atI

" Searching
set hlsearch
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
set wrapscan
set ignorecase
set smartcase
set incsearch
set gdefault

" Behaviour
filetype plugin indent on
set iskeyword-=_
set nofoldenable

" Binds
let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>

nnoremap { {zz
nnoremap } }zz
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gjzz'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gkzz'

nnoremap Y y$
vnoremap <Leader>s :sor i<CR>

nnoremap <Tab> >>
nnoremap <S-Tab> <<
xnoremap <Tab> >gv
xnoremap <S-Tab> <gv

nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>v :vsplit<CR>
nnoremap <silent> <leader>q :close<CR>
noremap <silent> <leader>z :tab split<CR>

" Plugin settings
let g:lion_squeeze_spaces = 1
let g:indentLine_faster = 1
let g:indentLine_setConceal = 0
