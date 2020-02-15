#!/usr/bin/env bash

sudo apt-get install -y neovim
mkdir ~/.config/nvim
cp init.vim  ~/.config/nvim/init.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \\nhttps://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install pynvim
pip3 install jedi
pip3 install yapf
pip3 install pylint
