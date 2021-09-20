#! /bin/bash

if [  ! -d ~/.vim/bundle ]; then
    echo "Creating ~/.vim/bundle"
    mkdir -p ~/.vim/bundle
fi

if [  ! -d ~/.config/nvim ]; then
    echo "Creating ~/.config/nvim"
    mkdir -p ~/.config/nvim
fi

echo "Installing .config.fish"
cp shell/fish/config.fish ~/.config/fish/config.fish
cp shell/fish/functions/* ~/.config/fish/functions

echo "Installing .vimrc"
cp vim/vimrc ~/.vimrc

echo "Installing .tmux.conf"
cp tmux/tmux.conf ~/.tmux.conf

echo "Installing nvim config"
cp vim/init.vim ~/.config/nvim/init.vim

echo "Installing bundles"
nvim +PlugInstall +qall
