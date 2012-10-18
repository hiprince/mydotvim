set nocompatible
filetype off

" Enable filetype plugins
filetype plugin indent on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" remap <leader> to ','
let mapleader=","
let g:mapleader=","

" set fast save
nmap <leader>w :w!<cr>

" always show current position
set ruler
set cursorline

" show line number
set number

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

set statusline=[%l,%v\ %P%M][CWD:\ %{getcwd()}][FILE:\ %f]\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}\ %#warningmsg#%{SyntasticStatuslineFlag()}%*

function! CWD()
let curdir = substitute(getcwd(), '/home/mnazim', "~/", "g")
    return curdir
endfunction
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


""""""""""""""""""""""""""""""""""""""
" Spell checking
""""""""""""""""""""""""""""""""""""""
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


""""""""""""""""""""""
" Bundles
"""""""""""""""""""""'
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

Bundle "delimitMate.vim"
Bundle "Solarized"
Bundle "Syntastic"
Bundle "The-NERD-Commenter"
Bundle "SuperTab-continued."
Bundle "pyflakes.vim"
Bundle "Scons-compiler-plugin"

Bundle "Tagbar"
let g:tagbar_usearrows=1
nnoremap <leader>l :TagbarToggle<CR>

Bundle "fugitive.vim"
Bundle "cpp.vim"
Bundle "OmniCppComplete"

"""""""""""""""""""""""""""""""""""""""
" Insertion, deletion
"""""""""""""""""""""""""""""""""""""""
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


""""""""""""""""""""""""""""""
" Colorscheme
""""""""""""""""""""""""""""""
"set background=light
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"colorscheme solarized

"""""""""""""""""""""""""""""""""""""""'
" ctags related
"""""""""""""""""""""""""""""""""""""""
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/cuda

""""""""""""""""""""""""""""""""
" omni auto complete
""""""""""""""""""""""""""""""""
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
