mydotvim
========

My Customized vim configuration

Use Vundle as plugin manager

Usage
============================
1. Clone repo

```
git clone https://github.com/hiprince/mydotvim.git ~/.vim/
```

2. Make soft link
```
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

3. Install Vundle

```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

4. Install all bundles in vim
```
:BundleInstall!(or `vim +BundleInstall +qall`)
```

5. Install YouComleteMe(Require Vim 7.3.584+)
```
bash ~/.vim/bundle/YouCompleteMe/install.sh
```

Bundle installed
============================
`Bundle 'gmarik/vundle'`

`Bundle 'delimitMate.vim'`

`Bundle 'Solarized'`

`Bundle 'Syntastic'`

`Bundle 'The-NERD-Commenter'`

`Bundle 'The-NERD-tree'`

`Bundle 'ctrlp.vim'`

`Bundle 'pyflakes.vim'`

`Bundle 'Tagbar'`

`Bundle 'fugitive.vim'`

`Bundle 'cpp.vim'`

`Bundle 'c.vim'`

`Bundle 'EasyMotion'`

`Bundle 'pydoc.vim'`

`Bundle 'surround.vim'`

`Bundle 'cscope.vim'`

`Bundle 'HTML-AutoCloseTag'`

`Bundle 'HTML5-Syntax-File'`

`Bundle 'dbext.vim'`

`Bundle "AutoClose"`

`Bundle 'git://github.com/Valloric/YouCompleteMe.git'`

`Bundle 'ZenCoding.vim'`

`Bundle 'ShowTrailingWhitespace'`

`Bundle 'DrawIt'`

`Bundle 'bash-support.vim'`
