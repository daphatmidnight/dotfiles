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
Plug 'chriskempson/base16-vim'
Plug 'ajgrf/sprinkles'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'godlygeek/csapprox'

call plug#end()
" }}}

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
set scrolloff=150 " keep cursor very centered
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

" Binds {{{
let mapleader="\<Space>"

nnoremap <Leader>w :w<CR>

nnoremap j jzz
nnoremap k kzz
nnoremap { {zz
nnoremap } }zz
nnoremap <ESC> :noh<return><ESC>
" }}}

" Plugin settings {{{
au colorscheme * hi normal guibg=none
colorscheme hybrid_material
let g:hybrid_custom_term_colors=1
let g:airline_powerline_fonts=1
let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled=1
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
let g:CSApprox_hook_post = [
  \ 'highlight Normal            guibg=NONE',
  \ 'highlight LineNr            guibg=NONE',
  \ 'highlight SignifyLineAdd    gui=bold guibg=NONE guifg=green',
  \ 'highlight SignifyLineDelete gui=bold guibg=NONE guifg=red',
  \ 'highlight SignifyLineChange gui=bold guibg=NONE guifg=yellow',
  \ 'highlight SignifySignAdd    gui=bold guibg=NONE guifg=green',
  \ 'highlight SignifySignDelete gui=bold guibg=NONE guifg=red',
  \ 'highlight SignifySignChange gui=bold guibg=NONE guifg=yellow',
  \ 'highlight SignColumn        guibg=NONE',
  \ 'highlight Folded            guibg=NONE gui=bold',
  \ 'highlight FoldColumn        guibg=NONE gui=bold',
  \ 'highlight NonText           guibg=NONE',
  \ 'highlight clear LineNr'
\]

" Start interactive EasyAlign in visual mode (vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (gaip)
nmap ga <Plug>(EasyAlign)
" }}}

