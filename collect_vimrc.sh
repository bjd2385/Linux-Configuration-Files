#! /bin/bash
# Download my vimrc and install it

mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

wget https://raw.githubusercontent.com/bjd2385/vimrc/master/.vimrc -O ~/.vimrc
vim +PluginInstall +qall
vim
