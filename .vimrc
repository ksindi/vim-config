"my config

filetype off

syntax on
set encoding=utf-8

if $TERM_PROGRAM =~ "iTerm"
    let g:onedark_termcolors=16
    colorscheme onedark
elseif $TERM =~ "xterm-256color"
    "for Ubuntu
    let g:onedark_termcolors=24
    colorscheme onedark
endif

let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ }

"no need for vi compatibility
set nocompatible

"vundle support
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'sheerun/vim-polyglot'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on


"tab settings"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"make space the leader key
let mapleader = "\<Space>"


"many of these are simple quality of use improvements,
"such as hiding files instead of closing them when new ones are opened
"(hidden), presenting file and vim info (wildmenu, laststatus, showmode, showcmd),
"flashing the screen instead of beeping when there's an error (visualbell),
"providing column info (ruler) and changing line numbers to be relative
"(relativenumber)
" laststatus=2 is required for some auxiliary tools like lightline - it
" maintains a status line from the last window
set scrolloff=5
set autoindent
" lightline takes care of the info that showmode would have provided
set noshowmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set relativenumber

"searching and moving configs
"remaps to make regex search faster
nnoremap / /\v
vnoremap / /\v

"if the search is *all* lower-case, be case insensitive; else, be case sensitive
set ignorecase
set smartcase

"places a /g at the end of a search and replace
"e.g., '/something' and then ':%s//something_else/g'
set gdefault

"incremental searching with highlighting
set incsearch
set showmatch
set hlsearch

"convenient remappings for searching
nnoremap <leader>s :noh<cr>
nnoremap <tab> %

"make splitting buffers easier
set splitbelow
set splitright
"streamline split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"handle long lines
set wrap
set textwidth=79
set formatoptions=qnrn1
set colorcolumn=120
highlight ColorColumn ctermbg=12

"learn vim movement the right way
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"allow for slightly smarter movement between lines
nnoremap j gj
nnoremap k gk

"python specific settings
let g:python_highlight_builtins=1
let g:python_highlight_exceptions=1
let g:python_highlight_string_formatting=1
let g:python_highlight_doctests=1
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
    " add folding rules specific to Python
    \ set foldmethod=indent
    \ set foldlevel=99

"json settings
au BufNewFile,BufRead *.json set filetype=json
au BufNewFile,BufRead *.md set filetype=markdown
