#! /bin/bash

if [  ! -d ~/.vim/bundle ]; then
    echo "Creating ~/.vim/bundle"
    mkdir -p ~/.vim/bundle
fi

echo "Fetching Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing .vimrc"
cp -i vimrc ~/.vimrc

echo "Installing bundles"
vim +PluginInstall +qall

echo "Installing .tmux.conf"
cp -i tmux.conf ~/.tmux.conf

