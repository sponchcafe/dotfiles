#! /bin/bash

if [  ! -d ~/.vim/bundle ]; then
    echo "Creating ~/.vim/bundle"
    mkdir -p ~/.vim/bundle
fi

if [  ! -d ~/.config/nvim ]; then
    echo "Creating ~/.config/nvim"
    mkdir -p ~/.config/nvim
fi

echo "Installing .bash_profile"
cp -i bash_profile ~/.bash_profile

echo "Fetching Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing .vimrc"
cp -i vimrc ~/.vimrc

echo "Installing nvim config"
cp nvim/init.vim ~/.config/nvim/init.vim

echo "Installing bundles"
vim +PluginInstall +qall

echo "Installing .tmux.conf"
cp -i tmux.conf ~/.tmux.conf

