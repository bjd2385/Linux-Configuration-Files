#! /bin/bash
# Download my vimrc and install it

wget https://raw.githubusercontent.com/bjd2385/vimrc/master/.vimrc -O ~/.vimrc
vim +PluginInstall +qall
vim
