#!/bin/sh

sudo apt-get install libncurses5-dev python-dev mercurial
sudo apt-get remove vim vim-tiny vim-common vim-runtime
cd ~
hg clone https://code.google.com/p/vim/
cd vim
./configure --with-features=huge \
--enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config \                  # <---you may need to change this
--prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install
