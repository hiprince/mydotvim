#! /bin/bash
# 1. Clone repo
git clone https://github.com/hiprince/mydotvim.git ~/.vim/
# 2. Make soft link
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
# 3. Install Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# 4. Install all bundles in vim
vim +BundleInstall +qall
# 5. Install YouComleteMe
bash ~/.vim/bundle/YouCompleteMe/install.sh
mkdir -p ~/.vim/temp
mkdir -p ~/.vim/temp/undo
mkdir -p ~/.vim/temp/backup
mkdir -p ~/.vim/temp/ctags
