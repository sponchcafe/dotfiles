#! /bin/bash

if [  ! -d ~/.config/nvim ]; then
    echo "Creating ~/.config/nvim"
    mkdir -p ~/.config/nvim
fi

echo "Installing .config.fish"
cp shell/fish/config.fish ~/.config/fish/config.fish
mkdir -p ~/.config/fish/functions && cp -R shell/fish/functions/* ~/.config/fish/functions/

echo "Installing init.lua"
cp nvim/init.lua ~/.config/nvim

echo "Installing .tmux.conf"
cp tmux/tmux.conf ~/.tmux.conf

# powerline
pip install --user -r shell/powerline/requirements.txt
cp -r shell/powerline/powerline ~/.config
