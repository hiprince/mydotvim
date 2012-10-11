set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

" Enable filetype plugins
filetype plugin indent on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

let mapleader=","
let g:mapleader=","

" set fast save
nmap <leader>w :w!<cr>

" always show current position
set ruler

" Highlight search result
set hlsearch

" Show matching brackets when test indicator is over them
set showmatch



"""""""""""""""""""""""""""""""""
" Indent related
"""""""""""""""""""""""""""""""""
set expandtab

set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=140

set ai "Auto indent
set si "Smart indent
set wrap "Warp lines

""""""""""""""""""""""""""""""""
" Move around, tabs and windows
""""""""""""""""""""""""""""""""
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""

set laststatus=2

set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


""""""""""""""""""""""""""""""""""""""
" Spell checking
""""""""""""""""""""""""""""""""""""""
set spell
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
