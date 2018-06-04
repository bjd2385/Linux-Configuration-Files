#! /bin/bash
# Download my vimrc and install it

# Variables
CORES=$(nproc --all)

# Dependencies
sudo apt install build-essential cmake libncurses5-dev libgnome2-dev \
    libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev \
    ruby-dev lua5.1 liblua5.1-dev libperl-dev git

# Build vim with Python 3
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge 
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

make -j$CORES VIMRUNTIMEDIR=/usr/local/share/vim/vim80
sudo make install

sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim

mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

wget https://raw.githubusercontent.com/bjd2385/vimrc/master/.vimrc -O ~/.vimrc
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe/
./install.py --clang-completer
