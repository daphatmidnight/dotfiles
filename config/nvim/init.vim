" Colours {{{

" Note: green is not a creative colour.
" }}}

" Indentation {{{
set tabstop=2
set expandtab             " tabs -> spaces
set softtabstop=2         " TAB key -> 2 spaces
set shiftwidth=2
set shiftround
set modelines=0           " /* vim: set ... will be ignored
filetype plugin indent on " load lang specific indentation
set autoindent
set smartindent
set breakindent
set endofline
set list listchars=tab:->,trail:·
" }}}

" Appearance {{{
set background=dark
set number        " show line ruler
set showcmd       " show last command (hidden w/ powerline)
set noshowmode    " show current mode in command line
set cursorline
set scrolloff=8   " keep cursor somewhat centered
set showmatch     " highlight over matching bracket
set matchtime=2   " blink for 0.2s
set report=0      " shows N lines have been changed
set shortmess=atI " shortens messages
set termguicolors
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

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'ap/vim-css-color', { 'for': ['css','scss'] }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'ervandew/supertab'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'neomake/neomake'
Plug 'ntpeters/vim-airline-colornum'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'scrooloose/syntastic'
Plug 'sickill/vim-pasta'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/matchit.zip'
Plug 'wellle/targets.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'sheerun/vim-polyglot'

call plug#end()
" }}}

" Binds {{{
let mapleader="\<Space>"

nnoremap <Leader>w :w<CR>

nnoremap <ESC> :noh<return><ESC>
" }}}

" Plugin settings {{{
let g:airline_powerline_fonts=1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled=1
colorscheme onedark
let g:onedark_termcolors=16
let g:deoplete#enable_at_startup=1
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]
set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

" Start interactive EasyAlign in visual mode (vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (gaip)
nmap ga <Plug>(EasyAlign)
" }}}

