" My vimrc
" unit

" Colours {{{
"colorscheme unknown
syntax on
" Note: green is not a creative colour.
" }}}

" Indentation {{{
set tabstop=2
set expandtab     " tabs -> spaces
set smarttab
set softtabstop=2 " TAB key -> 2 spaces
set shiftwidth=2
set shiftround
set modelines=0   " /* vim: set ... will be ignored
set autoindent
filetype plugin indent on " load lang specific indentation
set endofline
" }}}

" Appearance {{{
set background=dark
set number      " show line ruler
set showcmd     " show last command (hidden w/ powerline)
set showmode    " show current mode in command line
set cursorline
set scrolloff=6 " keep cursor somewhat centered
set showmatch   " highlight over matching bracket
set matchtime=2 " blink for 0.2s
set report=0    " shows N lines have been changed
set display=lastline " shows as much as possible of long lines
set laststatus=2 " always show statusbar
set shortmess=atI " shortens messages
" }}}

" Behaviour {{{
set backspace=indent,eol,start
set autowrite   " :w on leaving buffer
set wildmenu    " visual autocomplete in command menu
set wildmode=list:longest
set hidden      " switch buffers w/o saving
set splitbelow
set splitright
" }}}

" Searching {{{
set incsearch " highlights on search
set hlsearch  " keeps highlights
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
set nocompatible
set lazyredraw
set ttyfast
set synmaxcol=200 " stop trying colouring syntax after col 200
set noerrorbells
set novisualbell
set t_vb= " more no visual bell
set encoding=utf8 nobomb
set ffs=unix,dos,mac
" }}}

" Backups {{{
set noswapfile
set nobackup
set nowritebackup
" }}}
