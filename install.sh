#! /bin/bash

mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim

cp -i vimrc ~/.vimrc
cp -i tmux.conf ~/.tmux.conf

# install packages
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/terryma/vim-smooth-scroll
