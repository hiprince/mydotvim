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

" change windows size
nmap <leader>>> :20winc ><cr>
nmap <leader><< :20winc <<cr>
"""""""""""""""""""""""""""""""""""
" Indent and common issue related "
"""""""""""""""""""""""""""""""""""
set expandtab

set smarttab

set shiftwidth=4
set tabstop=4
set sts=4

set lbr
" disable maximum text width
set tw=0

set ai "Auto indent
set si "Smart indent
set nowrap "Warp lines off

" Set to auto read when a file is changed from the outside
set autoread

" always show current position
set ruler
set cursorline
set cursorcolumn

" show line number
set number

" Highlight search result
set hlsearch

" Show matching brackets when test indicator is over them
set showmatch

" syntax checking
" set syntax=1
syntax on

" set encoding
set termencoding=utf8
set fileencodings=utf-8,gbk,ucs-bom,cp936
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
set spell
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

Bundle 'pyflakes.vim'
" fix red background problem when python syntax error
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline 
Bundle 'Scons-compiler-plugin'
Bundle 'Tagbar'
let g:tagbar_usearrows=1
nnoremap <leader>t :TagbarToggle<CR>

Bundle 'fugitive.vim'
Bundle 'cpp.vim'
Bundle 'c.vim'
Bundle 'EasyMotion'
Bundle 'pydoc.vim'
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
Bundle 'dbext.vim'
Bundle "AutoClose"
Bundle 'git://github.com/Valloric/YouCompleteMe.git'
let g:ycm_min_num_of_chars_for_completion = 2
" the following line may cause severe memory leak
" let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
nmap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" ZenCoding
Bundle 'ZenCoding.vim'

" ShowTrailingWhitespace
Bundle 'ShowTrailingWhitespace'

" SuperTab-Continued
Bundle 'SuperTab-continued.'

" Draw Table in Vim
Bundle "DrawIt"

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

hi CursorLine   cterm=NONE ctermbg=252 ctermfg=Red guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=252 ctermfg=white guibg=darkred guifg=white
autocmd InsertEnter * highlight CursorLine ctermbg=252 ctermfg=None
autocmd InsertLeave * highlight CursorLine ctermbg=252 ctermfg=Red
autocmd InsertEnter * highlight CursorColumn ctermbg=252 ctermfg=NONE
autocmd InsertLeave * highlight CursorColumn ctermbg=252 ctermfg=White
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"""""""""""""""""""""""""""""""""""""""'
" ctags related
"""""""""""""""""""""""""""""""""""""""
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/cuda
"set tags+=tags
"set tags+=~/ficus/tags

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
autocmd BufNewFile,BufRead *.json,*.conf set ft=javascript

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


"""""""""""""""""""""""""""""""
" Fix mysterious bugs         "
"""""""""""""""""""""""""""""""
"set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start " fix backspace not working in insert mode bug
