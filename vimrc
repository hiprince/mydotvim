set nocompatible
filetype off

" Enable filetype plugins
filetype plugin on
filetype plugin indent on
filetype indent on


""""""""""""""""""""""""""""""""
" Custom key mapping           "
""""""""""""""""""""""""""""""""
" set fast save
nmap <leader>ww :w!<cr>
nmap <leader>wa :wa!<cr>

" remap <leader> to ','
let mapleader=","
let g:mapleader=","

nmap <leader>wr :set wrap!<cr>

"""""""""""""""""""""""""""""""""""
" Indent and common issue related "
"""""""""""""""""""""""""""""""""""
set expandtab

set smarttab

set shiftwidth=4
set tabstop=4
set sts=4

set lbr
set tw=140

set ai "Auto indent
set si "Smart indent
set nowrap "Warp lines off

" Set to auto read when a file is changed from the outside
set autoread

" always show current position
set ruler
set cursorline

" show line number
set number

" Highlight search result
set hlsearch

" Show matching brackets when test indicator is over them
set showmatch

" syntax checking
" set syntax=1

""""""""""""""""""""""""""""""""
" Move around, tabs and windows
""""""""""""""""""""""""""""""""
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set mouse=a

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

Bundle 'delimitMate.vim'
Bundle 'Solarized'
Bundle 'Syntastic'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
nmap <leader>e :NERDTreeToggle<CR>

Bundle 'SuperTab-continued.'
Bundle 'pyflakes.vim'
Bundle 'Scons-compiler-plugin'
Bundle 'Tagbar'
let g:tagbar_usearrows=1
nnoremap <leader>t :TagbarToggle<CR>

Bundle 'fugitive.vim'
Bundle 'cpp.vim'
Bundle 'c.vim'
Bundle 'OmniCppComplete'
Bundle 'EasyMotion'
Bundle 'pydoc.vim'
Bundle 'pythoncomplete'
Bundle 'surround.vim'
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"
Bundle 'cscope.vim'
Bundle 'snippetsEmu'
Bundle 'django.vim'
Bundle 'vim-htmldjango_omnicomplete'
Bundle 'neocomplcache'
let g:acp_enableAtStartup=0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_camel_case_complete=1
let g:neocomplcache_enable_underbar_completion=1
let g:SuperTabDefaultCompletionType='<C-X><C-U>'
let g:NeoCompleteCache_DisableAutoComplete=1

Bundle 'HTML-AutoCloseTag'
Bundle 'HTML5-Syntax-File'


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
"
"

"""""""""""""""""""""""""""""""""""""""'
" ctags related
"""""""""""""""""""""""""""""""""""""""
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/cuda

""""""""""""""""""""""""""""""""
" omni auto complete
""""""""""""""""""""""""""""""""
filetype plugin on
set ofu=syntaxcomplete#Complete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
au BufNewFile,BufRead,BufEnter *.c,*.h set omnifunc=omni#c#complete#Main
au BufNewFile,BufRead,BufEnter *.py set omnifunc=pythoncomplete#Complete
au BufNewFile,BufRead,BufEnter *.cu set filetype=cu
au BufNewFile,BufRead,BufEnter *.cuh set filetype=cu
au FileType python set omnifunc=pythoncomplete#Complete
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview


""""""""""""""""""""""""""""""""""'
" Backup, files and undo
"""""""""""""""""""""""""""""""""""
set backup
set backupdir=~/.vim/temp/backup/
set directory=~/.vim/temp/backup/
set writebackup
set swapfile
set wb
set undolevels=1000


"""""""""""""""""""""""""""""""
" Python specification        "
"""""""""""""""""""""""""""""""
map <buffer> <C-F5> :w<CR>:!/usr/bin/env python % <CR>
set foldmethod=indent
set foldlevel=99

let g:pyflakes_use_quickfix=0
