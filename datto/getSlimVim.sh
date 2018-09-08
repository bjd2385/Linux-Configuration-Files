#! /bin/bash
# Get a slimmed-down version of my .vimrc for use on a Datto

mkdir -p ~/.vim/colors

wget -O ~/.vimrc https://raw.githubusercontent.com/bjd2385/Linux-Configuration-Files/master/datto/.vimrc
wget -O ~/.vim/colors/badwolf.vim https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim
