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
cp -i shell/bash_profile ~/.bash_profile

echo "Installing Vundle"
cp -r Vundle.vim/ ~/.vim/bundle

echo "Installing .vimrc"
cp -i vim/vimrc ~/.vimrc

echo "Installing nvim config"
cp vim/init.vim ~/.config/nvim/init.vim

echo "Installing bundles"
vim +PluginInstall +qall

echo "Installing .tmux.conf"
cp -i tmux/tmux.conf ~/.tmux.conf

