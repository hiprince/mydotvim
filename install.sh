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
bash ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer

# 6. make temporary directories
mkdir -p ~/.vim/temp
mkdir -p ~/.vim/temp/undo
mkdir -p ~/.vim/temp/backup
mkdir -p ~/.vim/temp/ctags


# 7. deal with vim-airline font issue
cp -r ~/.vim/res/airline/powerline-fonts/ ~/.fonts/
fc-cache -vf ~/.fonts
cp ~/.vim/res/airline/10-powerline-symbols.conf ~/.fontconfig/
echo 'Please restart your X Server to take effect'
